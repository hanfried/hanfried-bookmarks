
# Table of Contents

1.  [SQL Antipatterns Volume 1](#org0c79749)
    1.  [Chapter 1 - What is an anti pattern](#org4e4e0ca)
    2.  [Chapter 2 - Jaywalking](#org13690d1)
    3.  [Chapter 3 - Naive Trees](#orged8e48a)
    4.  [Chapter 4 - ID Required](#org0548b0a)
    5.  [Chapter 5 - Keyless Entry](#orgb4fbdee)
    6.  [Chapter 6 - Entity-Attribute-Value](#org8efeb45)
    7.  [Chapter 7 - Polymorphic Associations](#org2caa884)
2.  [Data Pipelines with Apache Airflow](#org7d42e91)
    1.  [Part I - Getting Started](#orgcdfa168)
        1.  [Chapter 1 - Meet Apache Airflow](#org6302ec6)
        2.  [Chapter 2 - Anatomy of an Airflow DAG](#orgc9c2aef)
        3.  [Chapter 3 - Scheduling in Airflow](#org6291313)
        4.  [Chapter 4 - Templating tasks using the Airflow context](#orge82d0ce)
        5.  [Chapter 5 - Defining dependencies between tasks](#org39f888e)
    2.  [Part II - Beyond Basics](#orgd0723c5)
        1.  [Chapter 6 - Triggering workflows](#orgcf059f2)
        2.  [Chapter 7 - Communication with external systems](#org9ec230e)
        3.  [Chapter 8 - Building custom components](#orga44ccb7)



<a id="org0c79749"></a>

# SQL Antipatterns Volume 1

Avoiding the Pitfalls of Database Programming


<a id="org4e4e0ca"></a>

## Chapter 1 - What is an anti pattern


<a id="org13690d1"></a>

## Chapter 2 - Jaywalking

Use comma separated lists or similar to avoid creating an intersection table for many-to-many relationships

Objective: Store multivalue attributes

Problems addressed in book:

-   Querying with regexes or similar
-   Aggregations like counts or similar have to do complicated string operations (length(replace(&#x2026;)))
-   Updating the list needs something like string concatenation and easy to mess up or have no order in the list, double entries and so on
-   Removing is even worse
-   No referential integrity for items in the list
-   Separator character might be part of data (or if not it might be some time later)
-   List length limitations

Further problems IMHO:

-   Memory/Disk consumption in case of eg categorical textual list entries
-   Even for exports, we&rsquo;ll still need custom logic to handle the lists for further processing most of the time
-   Given a list, it&rsquo;s always unclear whether the order matters or not or if duplicates or intended or not
-   It&rsquo;s easy to misinterpret the list structure as a scalar if most of the time the list consist of <= 1 items
-   To join the items with other tables back, the rows need to be exploded,
    what is complex, seldom used, error prone (danger of duplications) and increases memory in a way no optimizer can work with well
    Especially in distributed computing, this can result in OOM, instance crashes and so on
    Databases are optimized for joins of normalized tables

Legitimate usages addressed in book:

-   In some cases useful for denormalization (mostly readonly exports)
-   Vendor specific SQL array types are a bit better, but still overcomplicate to use and need special syntax and still no integrity

Legitimate usages IMHO:

-   Using documents content eg lists as json (binary) data resolves many issues from above and is supported relatively equally in all languages,
    but still no referential integrity and semantic interpretation and memory/storage is still uncontrolled and easily out of bounds
    Younger developer tend to overuse it for these reasons
-   When working a lot with cli/chainable tools such list structures can be nice as export format (as long as it is not stored in this way internally)

Solution:

-   Create intersection table


<a id="orged8e48a"></a>

## Chapter 3 - Naive Trees

Table referencing tree structure as adjacency list via a parent foreign key (parent<sub>id</sub>) or similar

Objective: Store and query hierarchies

Problems addressed in this book:

-   Querying a tree with usual SQL gets awkward
    Needs many left outer joins for every hierarchical level and still handles only fixed number of levels
    Also can be problematic for performance and memory consumption
-   Hard to compute aggregates like simple counts or filtering out sub levels on given conditions

Further problems IMHO:

-   Hard to visualize (SQL databases and frontends usually aren&rsquo;t graph database or views)
-   Not useful ad hoc for any Machine Learning, Feature Generation or easy Denormalization (e.g. to feed into an analytics engine or a standard ML approach like decision trees or clustering algos)
-   Tough to do plausbilizations, data drift checks or other data tests or reporting

Legitimate usages addressed in book:

-   still simple (KISS) format of most hierarchical data
-   don&rsquo;t need support for unlimited depth
-   if mainly operations are inserting/updating the information, not querying them

Legitimate usages IMHO:

-   if it&rsquo;s getting forwarded to a Graph model, database or visualization anyway

Solution:

-   Recursive Queries
    Disadvantages: steep learning curve and a bit unusual, and still performance, and a bit custom db specific)
-   Path enumeration similar to unix file system (&ldquo;1/4/5&rdquo;)
    Disadvantages: Jaywalking
-   Nested sets where each node receives a nsleft <= all node nrs below in the hierarchy <= nsright
    Querying then is very fast, insertions are not fast
-   Closure table having another Table referencing each node 1 : m all children including the node itself
    Fast querying, fast updating, deletion, inserting, but needs a lot of space


<a id="org0548b0a"></a>

## Chapter 4 - ID Required

Add new column like \`id\` as pseudo key or surrogate key to every table so that every row can be addressed uniquely
while also allowing all other attributes to contain duplicates

Objective: Establish primary key conventions

Problems addressed in this book:

-   cargo cult that every table &ldquo;needs&rdquo; a single (maybe even autogenerated) primary key all looking the same and maybe all called \`id\`
-   might make a redundant key
-   allows duplicate rows
-   obscures the meaning of a key
    -   \`id\` is so generic that it holds no meaning
    -   especially if query result is returned as dict (like in JSON) where multiple \`id\` would just silently overwrite
-   writing joins won&rsquo;t work with USING \`id\` and joins get ugly and worse error prone to be written
-   avoiding compound keys is just wrong:
    -   like mathematician refusing to use 2d or 3d coordinates

Further problems IMHO:

-   such ids are easy to misinterpret:
    -   confound with other ids
    -   think their ordering might matter
    -   if there is a natural key column, it might be called similar and confuses the hell out of everyone
-   makes it tough to migrate or roll back changes from tests, other branches, run distributed, etc
-   uses extra space
-   doesn&rsquo;t have a meaning especially not for the subject matter experts, but also not for the database experts per se
-   messes up any hashing, e.g. inserting, deleting and inserting again should yield the same table,
    but with such an autogenerated surrogate key, it won&rsquo;t be the same row and if you track via a hash,
    it might even receive a different one (or you need complicate logic to find out whether the id is a real one or a surrogate one)
-   similar: it&rsquo;s completely unclear whether the id is important in case of exports or even in contrast security problematic
-   can&rsquo;t use it to feed into a machine learning (it&rsquo;s even worse and ML could be find a meaningless correlation and overfit)

Legitimate usages:

-   pseudo key is a good choice as a surrogate for a natural key that&rsquo;s too long to be practical
-   data warehousing

Solution as in book:

-   **tell it like it is:** -   sensible names for your primary key, like \`bug<sub>id</sub>\` instead of \`id\`
    -   **same** column name in foreign keys where possible (so joining via USING bug<sub>id</sub> or similar will work like a charm)
    -   name of primary key should be unique within your schema
-   **be unconventional:** change defaults for ORMs in case
-   **embrace natural keys and compound keys:** -   if table contains an attribute that&rsquo;s guaranteed to be unique, non null and serve to identify the row => use it as primary key
    -   use compound keys when they&rsquo;re appropriate

Further solutions IMHO:

-   Hash the natural key candidates:
    -   if it is unsure whether natural keys are guaranteed to stay natural keys in future
    -   are too long
    -   or have other problems, like they are sensitive and might not be exported or something like that, but you still need them for linking


<a id="orgb4fbdee"></a>

## Chapter 5 - Keyless Entry

leaving out referential integrity to simplify database design/architecture/programming
instead of fail early whenever a user submitted invalid data

Problems addressed in this book:

-   **assuming flawless code (in application logic):** &ldquo;One in a million is next Tuesday&rdquo; (regarding low probabilities of errors)
-   **checking for mistakes:** via own written scripts having to run regulary (something I had to do a lot when working with data)
    is more effort than just setting the right constraints and rely on the database to do it
-   **&ldquo;it&rsquo;s not my fault&rdquo;:** your application might be fine, but other applications or database users or ad hoc SQL might not
    and again this will happen at some point in the lifetime of an application (IHMO, especially if it a successful application)
-   **Catch-22 updates:** to make updates and keep referential integrities, you need more than one database SQL statement
    shutting off foreign key enables it, but for the price of having inconsistent views in between

Further problems IMHO:

-   makes it very hard to work with database exports or dumps
    as the important relationship between the data gets lost (and documentation in practice either is not accessible or outdated)
    I had to write more than once scripts to reverse engineer the foreign key relationships
    what is extremely difficult if the key ranges overlap and/or there are already inconsistencies in the database (as a result of no foreign key design)
    so while RDBMS should be very strict math oriented set theory things -> they become a non scientific guessing game
-   it&rsquo;s difficulty to check data pipelines on consistency or subtle errors if the constraints are not hard enforced

Legitimate usages addressed in book:

-   when doing huge data cleanup projects
-   renaming database tables can be become nasty with foreign key definitions
    (author mentions pt-online-schema-change tool for MySQL)
    IMHO I&rsquo;m sceptic about and personally would try to delegate the migration to a good tool (like Django ORM migrations or w/e)

Legitimate usages IMHO:

-   when building highly dynamic ELT pipelines
    it might be easier and more performant to avoid creating foreign key relations
    Note: It&rsquo;s important not to do any modifications (that&rsquo;s why it&rsquo;s ok for ELT, but IMHO not for ETL)
    I think it&rsquo;s especially right, if the destination database is one that only exists for short time,
    like if you bring it into a pandas/SQLite in memory (read only) presentation

Solution:

-   Declare constraints
-   Define cascading updates


<a id="org8efeb45"></a>

## Chapter 6 - Entity-Attribute-Value

support variable attribute via a 2nd table with columns like (id, attr<sub>name</sub>, attr<sub>value</sub>)
also calls open schema, schemaless, name-value pairs
with:

-   both tables have few columns
-   number of columns doesn&rsquo;t need to grow to support new attributes
-   avoid clutter of columns with many nulls

Problems addressed in this book:

-   **Querying:** will also need to use a WHERE attr<sub>name</sub> = ? clause instead of a SELECT &#x2026;, attr<sub>name</sub> statement
    IMHO I don&rsquo;t think that&rsquo;s so terrible, but more problematic is that slight typos or similar might be completely missed
-   **Data Integrity:** -   can&rsquo;t make mandatory attributes
    -   can&rsquo;t use SQL data types (usually attr<sub>value</sub> will be just a string)
        IMHO in addition no really good and performant way to do even more than SQL types (like writing a constraint),
        even if you can do it, it will have a lot of branching inside, what&rsquo;s just terrible for readability, correctness, performance, exportability, maintainability
    -   can&rsquo;t enforce referential integrity
    -   can&rsquo;t make up attribute names like `attr_name IN ('date_reported', 'report_date'))`
        IMHO: this is a very common problem
-   reconstructing a row is problematic (in pure SQL it&rsquo;s really ugly)
    IMHO: usually there are custom wide <> short format converters that make it manageable

Further problems:

-   querying on a combination of different attr<sub>name</sub>:attr<sub>value</sub> pairs very easily becomes a mess,
    it&rsquo;s usually possible with aggregation functions, but ugly to write, ugly to read and can have many surprises if there are attr<sub>name</sub> non unique (e.g. as multiple ids were selected etc)
-   it&rsquo;s much tougher to make plausibility checks against possibly dirty data, e.g. typos in values, just as the domain for values is so much bigger and heterogenous
-   same values might have complete different meanings (e.g. &ldquo;true&rdquo;)
    that&rsquo;s confusing for us humans
    bad for quality checks
    bad for any easy to gather statistics
    terrible for any ML input
-   it&rsquo;s even possible that same attr<sub>name</sub> have a different meaning (maybe because they are coming from a different source)
-   it&rsquo;s also possible that multiple same attr<sub>name</sub> are mentioned (what&rsquo;s then the correct value or should it be multivalued?)
    that&rsquo;s manageable by setting a unique constraint, but again, that might influence performance and get lost in exports and is in every case possibly confusing for humans, but also for JSON exports or other such structures
-   explaining this format to SME is no fun and handling by them has a huge potential to miss the points even if they know SQL well
    key value structures might be natural for programmers, but for the rest of the world flat, long tables are much more intuitive (with the exception of visualizing individual results in a frontend)

Legimate usages addressed in the book:

-   hard to justify in a relational databases => if there are nonrelational data needs -> use NoSQL technology

Legitimate usages IMHO:

-   if close to all data is relational, but you need one such &ldquo;open schema&rdquo; and going JSON or similar is no way (because tools don&rsquo;t really support it, let&rsquo;s say Excel likish ones)
    it&rsquo;s certainly better than to add a complete different tool (NoSQL, special logic to have JSON <> wide views, automatic converters or plugins)
-   really: if most attributes are null most of the time, but there are many hundreds or even more of them
    IMHO you easily get lost in those many columns (it&rsquo;s not a problem for the machine or the SQL database, but for us humans)
    in case: at least try to nail down the attr<sub>name</sub> by having them be a foreign key for attr<sub>name</sub> lookup table (where you could also store things like comments, synonyms or differentiate between homonyms)

Solutions addressed in book:

-   **Single Table Inheritance:** -   store all related types in one table
    -   use one attribute to define the subtype of a given row
    -   best when only few subtypes and few subtype specific attributes and a need for a single table access pattern
-   **Concrete Table Inheritance:** -   create separate table for each subtype
    -   every table contains same attributes that are common in the base type plus the specific subtype attributes
    -   best if you seldom need to query agains all subtypes at once
-   **Class Table Inheritance:** -   single table for the base type
    -   for each sub type create another table with a primary key that is also a foreign key to the base table
    -   best if you need often to query across all subtypes, referencing the columns they have in common
-   **Semistructured Data:** -   use something like JSON or JSONB column
    -   it&rsquo;s for at least completely extensible and more or less standard format with tools for it (custom SQL support, but also things like JSON schema, etc)
    -   best used, when you can&rsquo;t limit yourself to a finite set of subtypes and need complete flexibility to define new attributes at any time
-   **Post-Processing:** -   don&rsquo;t try to write queries that fetch entities as a single row as though data were stored in a conventional table
    -   just query all rows for specific ids
    -   write application code to loop over it
    
    IMHO:
    
    -   works only for small data, but then very well, especially with tools like pandas, dplyr, &#x2026;
    -   filtering down ids for specific keys might be necessary anyway (possible, but not very performant with subqueries)
    -   if you can arrange data to be local structure (partition by id e.g.), pivoting locally and transforming into a wide table format is possible
        (again, might not be very performant depending on the database)
        but leads to having natural queries instead of many tedious joins and/or subqueries

Further Solutions IMHO:

-   it&rsquo;s possible to write triggers in PL/SQL or other languages supported by the database that
    automatically create a read only copy of a key value table (and all inserts, updates, deletes) into wide format table
    (probably adding columns ad hoc if needed)
    it&rsquo;s redundant and has a suprise and little performance penalty on changes (but is fast to read then), and works ok in practice
    biggest disadvantage is that bigger refactorings can become a mess
    if you need this demand on multiple occassions, it might be worth to do a real CQRS solution with a streaming tool like Kafka
    a subtle disadvantage is that it is hard to check both tables keep in sync (or to supervision the copy trigger logic)
    -   Note: You should not design a database to work with such a schema intentionally
        That&rsquo;s a workaround if the input data is in key value format and SMEs etc are used to work with it to some degree,
        but so you have to keep it in such a raw format, but still would want to write proper SQL for further work.


<a id="org2caa884"></a>

## Chapter 7 - Polymorphic Associations

Reference multiple different parents for a common artefact table (like comments, blogs, images, &#x2026;)

Anti-Pattern: Use dual purpose foreign key
so you reference the artefact<sub>id</sub> with joining on them, but without having foreign key relations (because you can only have a foreign key to one of the parents, not to all)

Problems addressed in book:

-   Referential integrity is not enforced by database
-   can only reference parents by left outer join them, resulting in duplicate column names if parents have columns in common (not a problem for SQL but for humans)
    or by having a parent<sub>type</sub> information that again is not enforced by database

Legitimate usages addressed in book:

-   ORMs might do something like that for us (and that might be ok, as it should battle proofed), but don&rsquo;t do such designs from scratch

Solutions:

-   **Creating intersection tables:** ---- Comments
             ---- BugsComments    ---- Bugs
             ---- FeatureComments ---- Features
        
        CREATE TABLE BugsComments(  -- and similar FeatureComments
               issue_id     BIGINT UNSIGNED NOT NULL,
               comment_id   BIGINT UNSIGNED NOT NULL,
               UNIQUE KEY (comment_id),  -- if a comment shouldn't be used in different bugs, still would allow to have a comment used in a Bug and in a Feature (needs application logic to constraint that)
               PRIMARY KEY (issue_id, comment_id),
               FOREIGN KEY (issue_id) REFERENCES Bugs(issue_id),  -- or Feature(issue_id)
               FOREIGN KEY (comment_id) REFERENCES Comments(comment_id)
        );
-   **Create common super table:** ---- Issues
             ---- Bugs
             ---- Features
             ---- Comments
        
        CREATE TABLE Issues(
               issue_id     SERIAL PRIMARY KEY
        );
        CREATE TABLE Bugs( -- and similar Features
               issue_id     BIGINT UNSIGNED PRIMARY KEY,
               FOREIGN KEY (issue_id) REFERENCES Issues(issue_id),
               ...
        );
        CREATE TABLE Comments(
               comment_id   SERIAL PRIMARY KEY,
               issue_id     BIGINT UNSIGNED NOT NULL,
               ...,  -- author, comment text, date, ...
               FOREIGN KEY (issue_id) REFERENCES Issues(issue_id)
        );


<a id="org7d42e91"></a>

# Data Pipelines with Apache Airflow


<a id="orgcdfa168"></a>

## Part I - Getting Started


<a id="org6302ec6"></a>

### Chapter 1 - Meet Apache Airflow

-   **Data pipelines as graphs:** works on DAGs, so does not contain any loops or cycles
    extremely important, as it prevents us from running into circular dependencies
-   **Pipeline graphs vs sequential scripts:** single monolithic script may not initially seem like that much of a problem,
    but it can introduce some inefficiencies when tasks in the pipeline fail
-   **Defining pipelines flexibility in (python) code:** in airflow, define you DAGs using Python code in DAG files,
    which are essentially Python scripts that describe the structure of the corresponding DAG
-   **Reasons to choose Airflow:** features such as backfilling enable to easily (re)process historical data,
    allowing to recompute any derived data sets after making changes to your code
-   **Reasons not to choose Airflow:** -   handling streaming pipelines
    -   implementing highly dynamic pipelines
        although Airflow can implement this kind of dynamic behaviour,
        the web interface will only show tasks that are still defined in the most recent version of the DAG
    -   it&rsquo;s primarly a workflow/pipeline management platform,
        does not contain features as maintaining data lineages, data versioning, &#x2026;
-   **Summary:** implementing efficient, batch-oriented data pipelines


<a id="orgc9c2aef"></a>

### Chapter 2 - Anatomy of an Airflow DAG

-   **Tasks vs operators:** what&rsquo;s the difference
    -   operators have a single responsibility: they exist to perform a single piece of responsibility
        e.g. `BashOperator` or `PythonOperator` or `EmailOperator` or `SimpleHTTPOperator`
    -   in context of DAGs and throughout Airflow documentation, terms *operator* and *task* used interchangeable
    -   Airflow has a base class `BaseOperator` and provides many subclasses of it (see above for examples)
    -   tasks in Airflow manage the execution of an operator
-   **Running Airflow in a Python environment:** Make sure to install apache-airflow and not just airflow
-   **Summary:** -   Workflows in Airflow are represented as DAGs
    -   Operators represent a single unit of work
    -   Airflow contains an array of operators both for generic and specific types of work
    -   Airflow UI offers a graph view for viewing the DAG structure and tree view for viewing DAG runs over time
    -   Failed tasks can be restarted anywhere in the DAG


<a id="org6291313"></a>

### Chapter 3 - Scheduling in Airflow

-   **Defining scheduling intervals:** e.g.

    dag = DAG(
        dag_id="02_daily_schedule",
        schedule_interval="@daily",
        start_date=dt.datetime(2023, 1, 1),
        ...
    )

Airflow starts tasks in an interval **at the end of the interval**
so @daily will run at end of day at midnight

-   **Cron based intervals:** min hour day<sub>of</sub><sub>the</sub><sub>month</sub> month day<sub>of</sub><sub>week</sub><sub>sunday</sub><sub>to</sub><sub>saturday</sub>
-   **Frequently used scheduling intervals:** -   @once
    -   @hourly
    -   @daily
    -   @weekly
    -   @monthly
    -   @yearly
-   **Frequency based intervals:** e.g.
    
        dag = DAG(
            dag_id="02_daily_schedule",
            schedule_interval=dt.timedelta(days=3),
            start_date=dt.datetime(2023, 1, 1),
            ...
        )
-   **Dynamic time references using execution dates:** via context variables:
    
    -   **execution<sub>date</sub>:** datetime of start of current execution interval
    -   **next<sub>execution</sub><sub>date</sub>:** datetime of end of current execution interval
    -   **previous<sub>execution</sub><sub>date</sub>:** start of previous execution interval
    
    can be used e.g. via jinja2 templating like
    
        fetch_events = BashOperator(
            task_id="fetch_events",
            bash_command=f"""
               ... &&
               curl ...?start_date={{execution_date.strftime("%Y-%m-%d")}}&end_date={{next_execution_date.strftime("%Y-%m-%d")}}
            """
        )
    
    shorthand notations:
    
    -   **ds:** execution<sub>date.strftime</sub>(&ldquo;%Y-%m-%d&rdquo;)
    -   **next<sub>ds</sub>, next<sub>ds</sub><sub>nodash</sub>, prev<sub>ds</sub>, prev<sub>ds</sub><sub>nodash</sub>:** similar
-   **partitioning data:** possible via a templates<sub>dict</sub> in context variable, e.g.
    
        def calculate_some_stats(**context):
            input_path = context["templates_dict"]["input_path"]
            output_path = context["templates_dict"]["output_path"]
        
            ...
        
        calculate_stats_operator = PythonOperator(
            task_id="calculate_stats",
            python_callable=calculate_some_stats,
            templates_dict={
                "input_path": "/data/events/{{ds}}.json",
                "output_path": "/data/stats/{{ds}}.csv"
            },
            dag=dag
        )
-   **Understanding Airflow&rsquo;s execution dates:** interval-based approach has advantage that it is exactly known for which time interval the task has to work in contrast to cron jobs
    
    **Caveat**: interval parameters can be undefined if runs are triggered manually in Airflow
-   **Using backfilling to fill in past gaps:** by default, Airflow will schedule and run **any past** schedule that have not been run
    so will result in all intervals that have been passed before the current time being executed
    
    controlled by `catchup` parameter, e.g.:
    
        dag = DAG(
            dag_id="09_no_catchup",
            schedule_interval="@daily",
            start_date=dt.datetime(year=2023, month=1, day=1),
            end_date=dt.datetime(year=2024, month=1, day=1),
            catchup=False,  # don't rerun dayly tasks for previous days than current day in case
        )
    
    can be used to reprocess data after we&rsquo;ve made changes in our code
-   **Best practices for designing tasks:** Airflow tasks: atomicity and idempotency


<a id="orge82d0ce"></a>

### Chapter 4 - Templating tasks using the Airflow context

-   **Templating operator arguments:** Airflow uses pendulum library for datetime
-   **What is available for templating:** Context variables
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <tbody>
    <tr>
    <td class="org-left">conf</td>
    <td class="org-left">Airflow configuration</td>
    </tr>
    
    
    <tr>
    <td class="org-left">dag</td>
    <td class="org-left">current DAG object</td>
    </tr>
    
    
    <tr>
    <td class="org-left">dag<sub>run</sub></td>
    <td class="org-left">current DagRun object</td>
    </tr>
    
    
    <tr>
    <td class="org-left">ds</td>
    <td class="org-left">execution<sub>date</sub> formatted as %Y-%m-%d</td>
    </tr>
    
    
    <tr>
    <td class="org-left">ds<sub>nodash</sub></td>
    <td class="org-left">execution<sub>date</sub> formatted as %Y%m%d</td>
    </tr>
    
    
    <tr>
    <td class="org-left">execution<sub>date</sub></td>
    <td class="org-left">start datetime of current interval</td>
    </tr>
    
    
    <tr>
    <td class="org-left">inlets</td>
    <td class="org-left">??</td>
    </tr>
    
    
    <tr>
    <td class="org-left">macros</td>
    <td class="org-left">??</td>
    </tr>
    
    
    <tr>
    <td class="org-left">next<sub>ds</sub></td>
    <td class="org-left">execution date of next interval (=end of current interval) formatted as %Y-%m-%d</td>
    </tr>
    
    
    <tr>
    <td class="org-left">next<sub>ds</sub><sub>no</sub><sub>dash</sub></td>
    <td class="org-left">execution date of next interval (=end of current interval) formatted as %Y%m%d</td>
    </tr>
    
    
    <tr>
    <td class="org-left">next<sub>execution</sub><sub>date</sub></td>
    <td class="org-left">execution date of next interval (=end of current interval)</td>
    </tr>
    
    
    <tr>
    <td class="org-left">outlets</td>
    <td class="org-left">??</td>
    </tr>
    
    
    <tr>
    <td class="org-left">params</td>
    <td class="org-left">user provided variables to the task context (intended for key value pairs dynamically configured)</td>
    </tr>
    
    
    <tr>
    <td class="org-left">prev<sub>ds</sub></td>
    <td class="org-left">execution date of previous interval formatted as %Y-%m-%d</td>
    </tr>
    
    
    <tr>
    <td class="org-left">prev<sub>ds</sub><sub>nodash</sub></td>
    <td class="org-left">execution date of previous interval formatted as %Y%m%d</td>
    </tr>
    
    
    <tr>
    <td class="org-left">prev<sub>execution</sub><sub>date</sub></td>
    <td class="org-left">execution date of previous interval</td>
    </tr>
    
    
    <tr>
    <td class="org-left">prev<sub>start</sub><sub>date</sub><sub>success</sub></td>
    <td class="org-left">date and time of which the last successful run of the same task (only in past) was started</td>
    </tr>
    
    
    <tr>
    <td class="org-left">run<sub>id</sub></td>
    <td class="org-left">DagRun&rsquo;s run<sub>id</sub></td>
    </tr>
    
    
    <tr>
    <td class="org-left">task</td>
    <td class="org-left">current operator</td>
    </tr>
    
    
    <tr>
    <td class="org-left">task<sub>instance</sub> (short: ti)</td>
    <td class="org-left">current TaskInstance object</td>
    </tr>
    
    
    <tr>
    <td class="org-left">task<sub>instance</sub><sub>key</sub><sub>str</sub></td>
    <td class="org-left">unique identifier for current TaskInstance <code>{dag_id}_{task_id}_{ds_nodash}</code></td>
    </tr>
    
    
    <tr>
    <td class="org-left">templates<sub>dict</sub></td>
    <td class="org-left">user provided variables to the task context (intended for default variables)</td>
    </tr>
    
    
    <tr>
    <td class="org-left">test<sub>mode</sub></td>
    <td class="org-left">boolean whether airflow is running in test model</td>
    </tr>
    
    
    <tr>
    <td class="org-left">tomorrow<sub>ds</sub></td>
    <td class="org-left">ds plus one day</td>
    </tr>
    
    
    <tr>
    <td class="org-left">tomorrow<sub>ds</sub><sub>nodash</sub></td>
    <td class="org-left">ds<sub>nodash</sub> plus one day</td>
    </tr>
    
    
    <tr>
    <td class="org-left">ts</td>
    <td class="org-left">execution<sub>date</sub> formatted as ISO8601</td>
    </tr>
    
    
    <tr>
    <td class="org-left">ts<sub>nodash</sub></td>
    <td class="org-left">execution<sub>date</sub> formatted as ISO8601 without dashes</td>
    </tr>
    
    
    <tr>
    <td class="org-left">ts<sub>nodash</sub><sub>with</sub><sub>tz</sub></td>
    <td class="org-left">execution<sub>date</sub> formatted as ISO8601 without dashes but with timezones</td>
    </tr>
    
    
    <tr>
    <td class="org-left">var</td>
    <td class="org-left">helpers objects for dealing with Airflow variables</td>
    </tr>
    
    
    <tr>
    <td class="org-left">yesterday<sub>ds</sub></td>
    <td class="org-left">ds minus one day</td>
    </tr>
    
    
    <tr>
    <td class="org-left">yesterday<sub>ds</sub><sub>nodash</sub></td>
    <td class="org-left">ds<sub>nodash</sub> minus one day</td>
    </tr>
    </tbody>
    </table>
-   **Templating to PythonOperator:** is an exception to above, needs instead a python<sub>callable</sub> that explicitly demands the needed variables
    
        dag = DAG(...)
        def get_data(execution_date):
            ...
        
        get_data_operator = PythonOperator(
            task_id="get_data",
            python_callable=get_data,
            dag=dag
        )
    
    or
    
        def get_data(**context):
            start = context["execution_date"]
            ...
    
    or even
    
        def get_data(execution_date, **context):
            start = execution_date
            remaining_context = context
            ...
-   **Providing variables to the PythonOperator:** get_data_operator = PythonOperator(
            task_id="get_data",
            python_callable=get_data,
            op_args=["arg1", "arg2", ...],
            op_kwargs={"keyX": "argX", "keyY": "argY", ...},
        )
-   **Inspecting templated arguments:** in UI via clicking the Rendere Template button after running a task
    
    by CLI via =airflow task render [dag<sub>id</sub>] [task<sub>id</sub>] [desired execution date]
-   **Hooking up other systems:** passing data between taks:
    -   either using Airflow metastore to read and write results between Tasks => **XCom**
        -   only suitable for smaller objects
        -   typically advised to apply XComs only for transferring small pieces of data such as a handful of strings
    -   or by writing results to and from a persistent location
        -   ususally via one of the providers (with pip packages like `apache-airflow-providers-*`, eg `apache-airflow-providers-postgres`)
        -   might instantiate a hook (dealing with creating connections, sending queries and closing connections again)
        -   operators determine what has to be done, hooks determine how to do something
        -   ususally when building pipelines, you&rsquo;ll only deal with operators: hooks are used internally in operators


<a id="org39f888e"></a>

### Chapter 5 - Defining dependencies between tasks

-   **Linear dependencies:** via >> operator like
    
        # either separate as
        download_launches >> get_pictures
        get_pictures >> notify
        
        # or multiple dependencies in one go
        download_launches >> get_pictures >> notify

\#+END<sub>SRC</sub>

-   **Fan in/out dependencies:** from airflow.operators.dummy import DummyOperator
        
        start = DummyOperator(task_id="start")  # dummy start task
        start >> [fetch_wheather, fetch_sales]  # fan out
        
        fetch_wheather >> clean_wheather  # linear dependencies that run in parallel
        fetch_sales >> clean_sales
        
        [clean_wheather, clean_sales] >> join_datasets  # fan in
        
        join_datasets >> train_model >> deploy_model  # just simple linear dependencies
-   **Branching within tasks:** flexible, but difficult to see which code branch is being used
    
        def _clean_sales(**context):
            if context["execution_date"] < ERP_CHANGE_DATE:
                _clean_sales_old(**context)
            else:
                _clean_sales_new(**context)
-   **Branching within DAG:** `BranchPythonOperator` expected to return ID of downstream task
    
        fetch_sales_old = PythonOperator(...)
        clean_sales_old = PythonOperator(...)
        
        fetch_sales_new = PythonOperator(...)
        clean_sales_new = PythonOperator(...)
        
        fetch_sales_old >> clean_sales_old
        fetch_sales_new >> clean_sales_new
        
        pick_erp_system = BranchPythonOperator(  # <-- Explicit branching
            task_id="pick_erp_system",
            python_callable=_pick_erp_system,  # depending on day or w/w will either return "fetch_sales_old" or "fetch_sales_new"
        )
        
        join_datasets = PythonOperator(
            ...,
            trigger_rule="none_failed"  # <-- now only one of two branches will succeed, so need to adapt the triggering
        )
-   **Conditions within tasks:** again flexible, but invisible
    
        def _deploy_conditionally(**context):
            if context["execution_date"] == ...:
                deploy_model()
        
        deploy_if_most_recent_run = PythonOperator(
            task_id="deploy_model_if_most_recent_run",
            python_callable=_deploy_conditionally
        )
-   **Making tasks conditional:** adding task that raises `AirflowSkipException` if downstream tasks should be skipped
    
        from airflow.exceptions import AirflowSkipException
        
        def _latest_only(**context):
            left_window = context["dag"].following_schedule(context["execution_date"])
            right_window = context["dag"].following_schedule(left_window)
        
            now = pendulum.utcnow()
            if not left_window < now <= right_window:
                raise AirflowSkipException("Not the most recent run")
        
        latest_only = PythonOperator(
            task_id="latest_only",
            python_callable=_latest_only,
            dag=dag
        )
        
        latest_only >> deploy_model
-   **Using builtin operators:** `LatestOnlyOperator`
    
        from airflow.operators import LatestOnlyOperator
        
        latest_only = LatestOnlyOperator(
            task_id="latest_only",
            dag=dag
        )
        
        train_model >> latest_only >> deploy_model
-   **Trigger rules:** <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <tbody>
    <tr>
    <td class="org-left">all<sub>success</sub></td>
    <td class="org-left">all parent tasks have completed successful</td>
    <td class="org-left">default</td>
    </tr>
    
    
    <tr>
    <td class="org-left">all<sub>failed</sub></td>
    <td class="org-left">all parents (or their ancestors) have failed</td>
    <td class="org-left">to trigger error handling when at least one should be succeeded</td>
    </tr>
    
    
    <tr>
    <td class="org-left">all<sub>done</sub></td>
    <td class="org-left">all parents are done independent of success</td>
    <td class="org-left">to execute clean up code</td>
    </tr>
    
    
    <tr>
    <td class="org-left">one<sub>failed</sub></td>
    <td class="org-left">trigger as soon as at least one parent failed</td>
    <td class="org-left">quickly trigger some error handling like notifications or rollbacks</td>
    </tr>
    
    
    <tr>
    <td class="org-left">one<sub>success</sub></td>
    <td class="org-left">trigger as soon as at least one parent succeeded</td>
    <td class="org-left">quickly trigger downstream computations/notifications as one result is available</td>
    </tr>
    
    
    <tr>
    <td class="org-left">none<sub>failed</sub></td>
    <td class="org-left">all parents completed or were skipped</td>
    <td class="org-left">for conditional branching</td>
    </tr>
    
    
    <tr>
    <td class="org-left">none<sub>skipped</sub></td>
    <td class="org-left">no parents have been skipped</td>
    <td class="org-left">trigger code if all upstream tasks were executed</td>
    </tr>
    
    
    <tr>
    <td class="org-left">dummy</td>
    <td class="org-left">triggers regardless of state of any upstream tasks</td>
    <td class="org-left">testing</td>
    </tr>
    </tbody>
    </table>
-   **Sharing data using XComs:** upstream task responsible for pushing the XCom value
    explicitly within one task using the `xcom_push` method
    
        def _train_model(**context):
            model_id = str(uuid.uuid4())
            context["task_instance"].xcom_push(key="model_id", value=model_id)  # <--
        
        train_model = PythonOperator(
            task_id="train_model",
            python_callable=_train_model,
        )
    
    after running, you can view these published XCom values in web interface (Admin -> XComs)
    
    retrieve the XCom value in other tasks using the `xcom_pull` method
    
        def _deploy_model(**context):
            model_id = context["task_instance"].xcom_pull(  # <--
                task_ids="train_model", key="model_id"
            )
        
        deploy_model = PythonOperator(
            task_id="deploy_model",
            python_callable=_deploy_model,  # <--
        )
    
    or via template variables:
    
        def _deploy_model(templates_dict, **context):
            model_id = templates_dict["model_id"]
            ...
        
        deploy_model = PythonOperator(
            task_id="deploy_model",
            python_callable=_deploy_model,
            templates_dict={
                "model_id": "{{task_instance.xcom_pull(task_ids='train_model', key='model_id')}}"  # <--
            }
        )
-   **when (not) to use XComs:** -   disadvantages:
        -   add hidden dependency between tasks
        -   can be anti-pattern when breaking atomicity of tasks (e.g. passing tokens that will be invalid hours later)
-   **using custom XCom backends:** -   standard XCom does not scale well for larger volumes
        so better be used to store individual values or small results
    -   can write own `CustomXComBackend` deriving from `airflow.models.xcom.BaseXCom` and provide def for `serialize_value` and `deserialize_value`
-   **simplifying Python tasks with Taskflow API:** decorator bases API for defining Python tasks and their dependencies
    
        from airflow.decorators import task
        
        with DAG(...) as dag:
            ...
        
            @task
            def train_model():
                model_id = str(uuid.uuid4())
                ...
                return model_id
        
            @task
            def deploy_model(model_id):
                ...
        
            model_id = train_model()
            deploy_model(model_id)
-   **when (not) to use the Taskflow API:** -   simpler approach for defining Python tasks and their dependencies
        using syntax closer to using regular Python functions
    -   explicitly ensuring values are passed between tasks (and not hiding them and expect programmer to do the right thing)
    -   limited to Python tasks
        but can combine object oriented tasks piping with >> operator and Taskflow API


<a id="orgd0723c5"></a>

## Part II - Beyond Basics


<a id="orgcf059f2"></a>

### Chapter 6 - Triggering workflows

-   **Intro:** Trigger actions are often the result of external events, like:
    -   a file uploaded to a shared drive
    -   a developer pushing code to a repository
    -   existence of a partition in a Hive table
    -   &#x2026;
-   **Polling conditions with sensors:** special type (subclass) of operators
    poll for certain condition to be true and succed if some
    
        from airflow.sensors.filesystem import FileSensor
        
        wait_for_supermarket_1 = FileSensor(  # check for existence of file and return true if it exists
            task_id="wait_for_supermarket_1",
            filepath="/data/supermarket1/data.csv"
        )
    
    dag start time should be place at the start of the data arrival boundaries
-   **Polling custom conditions:** `PythonSensor` is a PythonOperator thas python<sub>callable</sub> returning true if condition is fulfilled and false if not
-   **Sensors outside the happy flow:** -   by default, sensor timeout is 7 days !!
    -   however new DAGs runs are added every (e.g. day) including their sensors
    -   catch: there&rsquo;s a limit to the number of tasks Airflow can handle and will run -> **sensor deadlock**
        
            dag = DAG(
                dag_id="couponing_app",
                start_date=dt.datetime(2023, 1, 1),
                schedule_interval="0 0 * * *",
                concurrency=50,  # changes limits of nr of tasks simultaneously run by Airflow
            )
    -   sensor class has argument mode = poke (default) | reschedule (non-blocking)
-   **Triggering other DAGs:** one option to circumvent repeated tasks with (almost) equal functionality is to split your DAG into multiple smaller DAGs
    so you can call DAG 2 multiple times from DAG 1
    can be achieved with `TriggerDagRunOperator`
    
        for supermarket_id in range(1, 5):
            ...
            trigger_create_metrics_dag = TriggerDagRunOperator(
                task_id=f"trigger_create_metrics_dag_supermarket_{supermarket_id}",
                trigger_dag_id="create_metrics",  # references to the called DAG
                dag=dag1,
            )
        
        dag2 = DAG(
            dag_id="create_metrics",
            start_date=airflow.utils.days_ago(3),
            schedule_interval=None,  # <-- will be triggered explicitly and not scheduled
        )
    
    each DAG run holds field run<sub>id</sub> starting with &ldquo;scheduled\_\_&rdquo; | &ldquo;backfill\_\_&rdquo; | &ldquo;manual\_\_&rdquo;
-   **Backfilling with the TriggerDagRunOperator:** tasks downstream of a TrigerDagRunOperator in another DAG are not cleared
    clearing tasks in a DAG including TriggerDagRunOperator will trigger a new DAG run instead of clearing the corresponding previously triggered DAG runs
-   **Polling state of other DAGs:** `ExternalTaskSensor` which is a sensor poking the state of tasks in other DAGs
    
        dag1 = DAG(dag_id="ingest_supermarket_data", schedule_interval="0 16 * * *", ...)
        
        DummyOperator(task_id="copy_to_raw", dag=dag1) >> DummyOperator(task_id="process_supermarket", dag=dag1)
        
        dag2 = DAG(schedule_interval="0 16 * * *", ...)
        wait = ExternalTaskSensor(  # <-- polling state of other dag
            task_id="wait_for_process_supermarket",
            external_dag_id="ingest_supermarket_data",
            external_task_id="process_supermarket",
            dag=dag2
        )
        wait >> DummyOperator(task_id="report")
    
    default behaviour is simly check for a successful state of a task with the **exact** same execution date as itself
    can be configured with a `execution_delta` argument to the ExternalTaskSensor,
    positive timedelta will look back in time
    also possible to provide function `execution_date_fn` returning a list of timedeltas
-   **Starting workflows with REST/CLI:** airflow dags trigger dag1
        
        # or with configuration
        airflow dags trigger --conf '{"supermarket_id": 1}' dag1
    
    or via REST API with a POST request containing json configuration


<a id="org9ec230e"></a>

### Chapter 7 - Communication with external systems

-   **External system meaning:** any technology other than Airflow **and** the machine Airflow is running on&#x2026;
-   **Connection to cloud services:** in context of Airflow, to the programmer the interface is an operator,
    these internally make use of the Cloud SDK to send requests and provide a small layer around the Cloud SDK
-   **Installing extra dependencies:** pip install apache-airflow-providers-amazon  # yield in having e.g. a S3CopyOperator
        pip install apache-airflow-providers-google
        pip install apache-airflow-providers-microsoft-azure
-   **Developing a machine learning model:** Most AWS services are supported by an Airflow operator
    
        ,,,
        download_mnist_data = S3CopyOperator(
            task_id=...,
            source_bucket_name=...,
            source_bucket_key=...,
            dest_bucket_name=...,
            dest_bucket_key=...,
            dag=dag
        )
        ...
        s3Hook = S3Hook()
        
        mnist_buffer = io.BytesIO()
        mnist_obj = s3Hook.get_key(
            bucket_name=...,
            key=...
        )
        ...
        s3Hook.load_file_obj(
            output_buffer,
            key=...,
            bucket_name=...,
            replace=True,  # <-- important for idempotency
        )
        ...
        sagemaker_train_model = SageMakerTrainingOperator(
            task_id=...,
            config={
               ...  # huge config for SageMaker
            },
            wait_for_completion=True,  # otherwise it would just start the training, but don't wait till it's finished
            print_log=True,  # get all CloudWatch logs, too
            check_interval=10,
            dag=dag
        )
        
        sagemaker_deploy_model = SageMakerEndpointOperator(
            task_id=...,
            wait_for_completion=True,
            config={ ... },
            dag=dag
        )

-   **Developing locally with external systems:** 

    export CONFIG_VARIABLES="..."
    # ...
    
    airflow db init  # Initialization, will use AIRFLOW_CORE_SQL_ALCHEMY_CONN or init a local sqlite db
    airflow tasks test <TASK_NAME> <EXECUTION_DATE>  # runs a single task

-   **Moving data from between systems:** Airflow acts as the &ldquo;spider in the web&rdquo;,
    starting and managing jobs and ensuring all finish successfully in the correct order,
    failing the pipeline if not
    
    Many A-to-B operators, like:
    
    -   `MySqlToGoogleCloudStorageOperator`
    -   `SFTPToS3Operator`
    -   `SimpleHTTPOperator`
    
    Tricky part is often not the orchestration of jobs with Airflow,
    but ensuring all bits and pieces of various jobs are configured correctly and fit together like puzzle pieces
-   **Outsourcing heavy work:** common discussion is whether to view Airflow as not only a task orchestration system, but also a task execution system
    
    regarding Spark, there are various ways to start a job:
    
    -   `SparkSubmitOperator` with a spark-submit binary on Airflow&rsquo;s machine plus configuration as YARN client
    -   `SSHOperator` to login to a Spark instance
    -   `SimpleHTTPOperator` to start Spark Job via a REST API (e.g. Livy)
-   **Summary:** -   Operators for external systems expose functionality by calling the client for a given system
    -   Sometimes these operators are merely passing through arguments to the Python client
    -   Other times they provide additional functionality, such as the `SageMakerTrainingOperator`,
        which continuously polls AWS and blocks until completion
    -   If access to external services from the local machine is possible we can test tasks using the CLI command
        
            airflow tasks test


<a id="orga44ccb7"></a>

### Chapter 8 - Building custom components

-   **Building a custom hook:** One way of dealing with the complexity of interacting with an API is to encapsulate the code into reusable Airflow hook
-   **Designing a custom hook:** All hooks are created as subclasses of abstract `BaseHook` class
    
        from airflow.hooks.base_hook import BaseHook
        
        class MovielensHook(BaseHook):
            def __init__(self, conn_id, ...):
                super().__init__()
                self._conn_id = conn_id
                self._session = None
        
            def get_conn(self):
                """ Most Airflow hooks are expected to define a get_conn method
                    responsible for setting up a connection to an external system
                """
                ...
                # Instead of hardcoding credentials, they should be fetched from Airflow credentials store (Admin > Connections)
                if self._session is None:  # and probably cache sessions, too
                    config = self.get_connection(self._conn_id)
                    ...
                    self._session = ...
        
            def get_ratings(self, ...):  # public method provided by the hook to be called by the users
                .,.
        
            def _get_with_pagination(self, ...):  # private helper method
                ...
    
    provides nice encapsulation of API logic (here as example for movie ratings)
-   **Building DAG with the (custom) hook:** airflow_folder
        |-- dags
        |   |-- custom  # example package name for custom (hook etc) logic
        |   |   |-- __init__.py
        |   |   |-- hooks.py  # <-- module containing custom hook code
        |   |-- 01_python.py
        |   |-- 02_hook.py
        |-- docker_compose.yaml
        |-- ...
    
        from custom.hooks import XYZ_Hook  # can be used in this way then
    
    Note, to use the hook, it still need to be wrapped into a PythonOperator that takes care of supplying e.g. correct start/end dates for given DAG run
-   **Defining custom operator:** All operators are built as subclasses of `BaseOperator` class
    
        from airflow.models import BaseOperator
        from airflow.utils.decorators import apply_defaults
        
        class MyCustomOperator(BaseOperator):
            ...
            template_fields = ("_start_date", "_end_date", "_output_path", ...)  # tell Airflow to template these instance variables on our operator
            ...
        
            @apply_defaults  # to ensure default arguments are applied to custom operator, in practice, always include it !!
            def __init__(self,
                         conn_id,
                         output_path,
                         start_date="{{ds}}",  # templating possible with above defined template_fields
                         end_date="{{next_ds}}",
                         ...,
                         *kwargs
            ):
                super().__init__(self, **kwargs)
                self._conn_id = conn_id
                ...
        
            def execute(self, context: dict):
                """ main method of airflow operator """
                ...
                hook = CustomHook(self._conn_id)
                try:
                    self.log(f"Fetching ratings for {self._start_date} to {self._end_date}")
                    ratings = list(hooks.get_ratings(start_date=self._start_date, end_date=self._end_date))
                    self.log(f"Fetched {len(ratings)} ratings")
                finally:
                    hook.close  # to release any ressources
                ...
-   **Building custom sensors:** very similar to custom operators, except inherit from `BaseSensorOperator` and define method `poke` instead of `execute`
    
        from airflow.sensors.base import BaseSensorOperator
        
        class MyCustomSensor(BaseSensorOperator):
            ...
            def poke(self, context: dict):
                ...
-   **Bootstrapping a Python package:** Instead of putting custom logic into airflow directory, creating a Python package and publishing/putting to a specific file location might be superior for bigger projects
    
        $ tree airflow-custom-package
        airflow-custom-package
        |-- src
            |-- airflow_custom_package
                |-- __init__.py
                |-- hooks.py
                |-- operators.py
                |-- sensors.py
    
    Base structure, of course, add tests, etc.

