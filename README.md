
# Table of Contents

1.  [Bookmarks](#org078cfcd)
    1.  [Misc](#org57a9fbb)
    2.  [Bahn](#org4a17bea)
    3.  [Business](#org9ff00f4)
    4.  [Personal Development](#orgd99796e)
    5.  [Gesellschaftliches](#orgd93215b)
    6.  [Software-Development](#org4a0123c):Software_Development:
        1.  [Misc](#org20a5a7b)
        2.  [Lessons from 50 years experience (Project-Management etc)&#x2026;](#org8fddfd7)
        3.  [Essays on Programming](#org7a9b850)
        4.  [Some Collection of Best of Talks](#orgac4e868)
        5.  [Project Management](#orgb41f7b2)
        6.  [Team Management](#orgc0d3057)
        7.  [JSON](#org643ae5a)
        8.  [YAML](#orga3a2925)
        9.  [RegEx](#orgbe6c5be)
        10. [Python](#orgc076763)
        11. [Django](#orgb64ee0b)
        12. [Javascript / CSS](#org87cbd9e)
        13. [Java](#org9d1d9bc)
        14. [REST APIs / Web Development / HTML](#org80155ba)
        15. [HTML](#orged5488f)
        16. [Golang](#org8e744ef)
        17. [Git / GitHub / Versioning](#org5de5eaa)
        18. [Shell/Bash/Zsh](#org06cf13d)
        19. [Makefiles](#org313dfc0)
        20. [Databases](#org421a7e8)
        21. [Cronjobs](#org8be5042)
        22. [Editors](#orga4c2ce5)
    7.  [DevOps / Security](#orgd16be8c)
        1.  [Misc](#org27892fb)
        2.  [Logging](#orgcb652d6)
        3.  [Dashboarding](#orgf714e37)
        4.  [Monorepo vs Multirepo](#org90cc86f)
        5.  [CI/CD-Pipeline](#org2010d52)
        6.  [Cloud Provisioners](#orga87677b)
        7.  [Site Reliability](#org4c0f67d)
        8.  [Microservices / Serverless](#orgabe5d3d)
        9.  [Docker/Containers](#org9269b90):Docker:
        10. [Kubernetes](#org5da1a49):Kubernetes:
        11. [SSH](#orgf549e0b)
        12. [General Computer/Networking/&#x2026; Security](#org1818680):Security:
        13. [Security Tools](#org90ed1b6)
    8.  [Data Science / ML / NLP](#orga2e0fd7):DataScience:
        1.  [Misc](#orgae4c04a)
        2.  [Compilations](#org284b051)
        3.  [Interesting Analysis](#orgfaccb54):Analysis:
        4.  [Kaggle](#org7e887de):Kaggle:
        5.  [Team (Management, Hiring, Organization, &#x2026;)](#org2356f5a)
        6.  [Optimizers / Learn Rates](#org932ebe3)
        7.  [Visidata](#orgbc24e81)
        8.  [Jupyter Notebooks](#orga5e5fd1)
        9.  [Streamlit](#org02c7411)
        10. [Pytorch/fastai](#orgaaeda61)
        11. [Web Scraping](#org74002f4)
        12. [Datasets](#orgee63a25)
        13. [Pandas](#org2026f34):Pandas:
        14. [Data Annotation](#orgf0ecc23)
        15. [Data Cleaning](#orgd5b576d)
        16. [Data Exploration / Feature Engineering](#orgfcde5bf)
        17. [Data Testing](#org1970175)
        18. [Data Visualization](#org54dd900):Visualization:
        19. [NLP](#org51e1e2e):NLP:
        20. [Computer Vision](#org95b4494)
        21. [Time Series](#orgb129e8e)
        22. [Graphs](#orgcc84de0)
        23. [Semi Supervised Learning](#org17857b6)
        24. [Deployments](#orgadf09a0):DevOps:
    9.  [Data Engineering](#org02ab6c6)
        1.  [Misc](#orgeed030c)
        2.  [Spark](#org058c42d)
        3.  [Data Drift Detection](#orgd56b7db)
    10. [Math](#org54ab173):Math:
    11. [Physics](#orgc31c706)



<a id="org078cfcd"></a>

# Bookmarks


<a id="org57a9fbb"></a>

## Misc

-   <https://github.com/sherlock-project/sherlock>  - find different social media accounts across the internet by username
-   <http://scienceandpublic.com/>  - DeJargonizer
-   <https://www.nature.com/articles/d41586-019-02918-5>  - how to write a great science paper
-   <https://www.fast.ai/2019/05/13/blogging-advice/>  - Advice for Better Blog Posts
-   <https://techblog.commercetools.com/easy-steps-to-get-obs-running-for-high-quality-demo-and-presentation-recordings-a6eef311e56e>
-   <https://www.gulp.de/knowledge-base/recht-und-steuern/unternehmer-selbststaendiger-oder-freiberufler.html>


<a id="org4a17bea"></a>

## Bahn

-   Anzeige von Bahn API Daten <https://marudor.de/>
    Inklusive detaillierte Wagenreihung und Anfahrtspläne für einen Bahnhof
-   <https://bahn.guru>  - Sparpreis-Finder


<a id="org9ff00f4"></a>

## Business

-   <https://clutch.co/app-developers/resources/what-is-riskiest-assumption-test>  - RAT vs MVP
-   <https://entrepreneurshandbook.co/the-real-reasons-why-a-vc-passed-on-your-startup-917c30103ecb>  - pretty complete check list
-   <https://www.gulp.de/knowledge-base/19/iii/neue-checkliste-fuer-freelancer-bin-ich-scheinselbststaendig.html>
-   <https://medium.com/swlh/5-more-stupid-things-entrepreneurs-should-never-say-when-fundraising-67121dee1c1b>
    -   **<span class="underline">&ldquo;If we capture X% of the market…&rdquo;</span>:** Instead, marketing sizing estimates
        show how much money is already being spent, which means capturing market
        share requires taking customers from an entrenched player. It’s going to
        cost a lot more time and money than this founder thinks.
    -   **<span class="underline">&ldquo;Before we start, would you mind signing this NDA?&rdquo;</span>:** This founder thinks
        ideas are more valuable than execution. &#x2026; care about whether or not the
        founder can create a highly scalable business around it.
    -   **<span class="underline">&ldquo;Our team is led by technical founders&rdquo;</span>:** instead of validating the
        market opportunity to check for actual demand, they immediately started
        building it. That’s not going to end well. &#x2026; learn that entrepreneurship
        isn’t like Field of Dreams, and “If you build it, they will come” doesn’t
        work
    -   **<span class="underline">&ldquo;We’re not just co-founders. We’re also best friends.&rdquo;</span>:** instead of
        identifying an important market opportunity, researching it rigorously, and
        then building the best team possible to capture it, they sat around for
        hours trying to come up with a “great idea.” &#x2026; they’re building a company
        and they think it’s going well because a few of their friends/family/frat
        brothers agreed to download the beta version of their app
    -   **<span class="underline">&ldquo;We’re growing organically!&rdquo;</span>:** founder doesn’t realize that, for
        venture-backed companies, organic growth is functionally equivalent to
        magical growth. Yes, it looks cool on a chart, but it doesn’t represent
        anything compelling about the underlying fundamentals of the business &#x2026;
        founder doesn’t realize that, for venture-backed companies, organic growth
        is functionally equivalent to magical growth. Yes, it looks cool on a chart,
        but it doesn’t represent anything compelling about the underlying
        fundamentals of the business
-   <https://medium.com/@aarondinin/the-two-letter-word-that-will-destroy-your-company-1e66a71b5349>
    -   **If** we can close X% of the leads we’ve got coming into the pipeline…
        **If** only X% of our website visitors click…
        **If** we can just get picked up by a couple of media outlets…
        **If** just one of our videos goes viral…
        **If** we get just one investor to commit…
    -   Even in the few examples I’ve given, I hope you’ve noticed how easy and
        dangerous it is to make assumptions about the outcomes of difficult work and
        then cover it with the word “if.”
    -   obfuscate tasks that are enormously complex, difficult, time-consuming,
        expensive, and perhaps impossible
    -   replacing my original “if-statement” with the following phrase:
        “If we can do something that takes 12 months and costs us a million dollars.”
-   <https://medium.com/@aarondinin/10-things-a-vc-would-rather-do-with-your-nda-than-sign-it-9f7cff9175ee>
    -   Investors meet with dozens of companies each week, and many of those
        companies have similarities based around the investor’s investment thesis.
        By signing your NDA, they could inadvertently put themselves in a position
        of not being able to discuss something necessary for considering another
        investment.
    -   A venture capitalist has no interest in “stealing” your idea or proprietary
        information because venture capitalists don’t build companies. That’s not
        their business model. Their business model is to invest in companies, and
        that’s a full time job. They don’t have time to do whatever work is involved
        in building the company you’re pitching.
    -   The job of a venture-backed entrepreneur is to grow a company to the point
        at which it can exit and generate a return on the VC’s investment.
    -   investors don’t want their entrepreneurs wasting time trying to figure out
        new and proprietary ways of building and growing companies
-   <https://entrepreneurshandbook.co/when-startups-fail-its-usually-because-founders-overlook-these-3-obvious-things-24aa05d05d40>
    1.  If you don’t have customers, you don’t have a business
        What matters is getting people to buy your product.
    2.  People who don’t know about your product can’t buy it
        if nobody knows about it, nobody can buy it.
        If you’re not good at marketing, nothing else about your business can succeed. You need to obsess about that above everything else.
    3.  Successful businesses solve people’s problems
        building amazing products isn’t what successful entrepreneurs do. Instead, having an amazing product is the outcome of an entrepreneur’s hard work.
        entrepreneurship isn’t about building things. Entrepreneurship is about solving people’s problems
-   <https://medium.com/swlh/why-startups-should-never-hire-straight-a-students-75b176b8e907>
-   <https://medium.com/young-coder/how-microsoft-beat-the-innovators-dilemma-5b78e3692ed3>


<a id="orgd99796e"></a>

## Personal Development

-   <https://forge.medium.com/10-habits-of-unsuccessful-people-you-dont-want-to-copy-d401ac677c91>
-   <https://onezero.medium.com/the-efficiency-delusion-f6a97241e1e1>
-   <https://elemental.medium.com/why-you-should-try-micromastery-90b080b3befa>
-   <https://medium.com/better-programming/why-do-incompetent-managers-get-promoted-815165a03bee>


<a id="orgd93215b"></a>

## Gesellschaftliches

-   <https://www.youtube.com/watch?v=pKymOx9UDoM>  - Harald Lesch: wenn nicht jetzt, wann dann? Vortrag (Klima)
-   <https://medium.com/fast-company/start-taking-back-your-online-privacy-by-making-these-4-easy-changes-def3668bf69b>
-   <https://onezero.medium.com/i-got-my-file-from-clearview-ai-and-it-freaked-me-out-33ca28b5d6d4>
-   <http://m.spiegel.de/gesundheit/psychologie/psychotherapie-wie-ein-lobbyverband-psychisch-kranken-schadet-a-1259159.html>
-   <https://www.zeit.de/kultur/2019-04/sexualitaet-jugendliche-pubertaet-youporn>
-   <https://www.heise.de/ct/artikel/Die-Psycho-Tricks-der-App-Entwickler-4547123.html>
-   <https://onezero.medium.com/relentless-com-life-as-a-cog-in-amazons-e-tail-machine-d46b3ef05eb8>
-   <https://www.bento.de/gefuehle/badeunfall-mein-freund-waere-fast-ertrunken-was-ich-daraus-gelernt-habe-a-1517a3af-5571-483b-af01-4e25d9600927>
-   <https://fragdenstaat.de>
-   <https://medium.com/illumination-curated/one-simple-reason-why-my-husband-and-i-wont-raise-our-daughter-in-the-u-s-81ac37e5369c>


<a id="org4a0123c"></a>

## Software-Development     :Software_Development:


<a id="org20a5a7b"></a>

### Misc

-   <https://www.usecue.com/blog/code-warriors/>
    A true warrior masters his sword and his mind. A ‘code warrior’ masters his software and his
    system. Mastering your software is not the most difficult part, just read the quick-start and
    off you go. Mastering the system that makes your software function, however, can take a
    lifetime.
-   <https://hackernoon.com/the-fine-art-of-fast-development-f3b1abb509da>
-   <https://erik-engheim.medium.com/developers-got-to-stop-turning-advice-into-rules-3d969657fb9a>
-   <https://testing.googleblog.com/2015/04/just-say-no-to-more-end-to-end-tests.html>
-   <https://medium.com/@cscalfani/goodbye-object-oriented-programming-a59cda4c0e53>
-   <https://caseymuratori.com/blog_0015>  - Semantic Compression of Code instead of Abstracting in Advance/OOP
-   <https://medium.com/@liman.rom/f-spoiled-me-or-why-i-dont-enjoy-c-anymore-39e025035a98>  - nice examples of advantages of a well designed functional language
-   <https://levelup.gitconnected.com/why-rewriting-applications-from-scratch-is-almost-always-a-bad-idea-5402d1715006>
-   <https://glitch.com/>  - Coding together in a collaborative way
-   <https://dx.tips/the-end-of-localhost>  - Interesting discussion of movement to move development in the cloud (instead of working locally)


<a id="org8fddfd7"></a>

### Lessons from 50 years experience (Project-Management etc)&#x2026;

-   <https://medium.com/@karlwiegers/growing-a-culture-of-software-quality-eb39a090e76b>  - Interview about code reviews
    Excerpt:
    -   One obvious indicator is a lack of customer satisfaction. But you don’t want
        to wait until after delivery to discover quality problems. That’s one
        advantage of agile approaches. Some working software is delivered
        periodically so you can begin collecting that feedback and make appropriate
        course corrections.
    -   Few organizations measure how much of their total effort is spent on rework,
        both during development and post-delivery. If you do measure that, you could
        get a pretty scary number.
    -   In a healthy software engineering culture, quality is a priority for all
        team members and managers. One cultural principle of a group I led was that
        we prefer to have a peer, rather than a customer, find a defect.
    -   “You can pay me now, or you can pay me a lot more later.”
    -   The best software engineer I ever knew got nervous if he couldn’t find
        people to review his code.
    -   I would never want to work in an organization in which peer reviews were not
        a standard part of the culture.
    -   Invite people to review your work early and often, formally and informally.
    -   If someone reviews 1000 lines of your code and suggests some better
        approaches, you’re probably not going to go back and incorporate all those
        changes.
    -   The other reason for reviewing before you think you’re done is
        psychological. When you think something is finished, you really don’t want
        someone to tell you that it’s not. You can have a lot of psychological
        resistance to review input at that point, because you’re ready to move on to
        the next task. It’s easy to push back against any suggestions for changes.
        This is not a constructive attitude toward peer reviews or a good use of a
        reviewer’s time.
    -   If someone walks out of a review feeling beat up and swears that they’re
        never going to go through that again, that’s definitely not a sign of a good
        review process in a healthy culture.
    -   Each of us must reach a point where not only are we comfortable soliciting
        input on our work, but we actually become uncomfortable if we haven’t had
        others examine what we’ve created before we inflict it on an unsuspecting
        world.
-   <https://medium.com/swlh/building-a-healthy-software-engineering-culture-59183b93389d>
    Excerpt:
    -   Quality is the top priority; long-term productivity is a natural consequence
        of high quality.
    -   But discussing just what principles, values, and attitudes are important
        will help align the team members so they can make decisions and take actions
        that are consistent with that shared philosophy.
    -   Of course, culture evolves over time. You just hope it doesn’t devolve. I’ve
        seen that happen too, like when a new manager came in to take over my group
        after I stepped down as the manager. He didn’t share our commitment to a
        quality-driven culture and continuous improvement, and some of what we had
        achieved gradually eroded away. That was discouraging.
    -   Suppose a manager claims that quality is a top priority. But then he doesn’t
        want to give project teams the time to perform peer reviews, or he penalizes
        people if bugs are found in their work during a review.
    -   Managers — and enthusiastic team members — must recognize that people and
        organizations can only absorb change at a certain rate.
-   <https://medium.com/@karlwiegers/mind-the-crap-gap-61f314fe9678>
    Excerpt:
    -   Hold your hand up in front of you with your thumb and index finger about one
        inch apart. In many situations, that short distance represents the
        difference between quality and crap. Most of the time, all it takes to
        bridge that “crap gap” is to do a little more questioning, listening,
        thinking, measuring, or testing before delivering the product or declaring
        the job complete. Ignoring the crap gap can be expensive for the workers and
        annoying for their victims.
    -   A sign in my college chemistry laboratory asked: “If you don’t have time to
        do it right, when will you have time to do it over?”
    -   Okay, but personally, I like to verify correctness before declaring victory.
    -   It’s up to management to shape a company culture in which individual
        employees feel both empowered and expected to do the job well.
    -   One good way to handle situations like this is to point out to the provider
        that the defective work does not appear to be up to their standards.
    -   Moreover, when I see something obviously done wrong like this, it makes me
        wonder how many other problems there were that I just can’t see. I don’t
        fully trust the provider anymore.
    -   Companies that do measure what they spend on rework — both internal and
        external failure — often are shocked at the numbers. Reducing rework
        increases your profit; it’s that simple.
-   <https://medium.com/swlh/six-estimation-safety-tips-6832b8f8c42a>
    Excerpt:
    1.  A goal is not an estimate
        -   Commitments should be based on plausible estimates, not just desired
            targets.
        -   work should not be considered overdue if there was never any realistic
            likelihood of completing it by the dictated target date
    2.  The estimate you produce should be unrelated to what you think the requester wants to hear
        -   don’t change your estimate simply because someone doesn’t care for it
        -   There’s no reason to reduce a thoughtfully crafted estimate simply
            because someone isn’t happy with it.
        -   You can examine assumptions, try different estimation methods, explore
            risks, or negotiate scope, resources, or quality. But don’t just cave to
            make someone smile.
    3.  The correct answer to any request for an estimate is “Let me get back to you on that.”
        -   So before you say, “Sure, no problem,” make sure you know what you’re getting into.
    4.  Avoid giving single-point estimates
        -   present an estimate as a range instead of a single value. Identify the
            minimum possible duration (or some other measurable factor) for the work,
            the most likely or expected value, and the maximum expected duration
            barring some catastrophic event
    5.  Incorporate contingency buffers into estimates
    6.  Record actual outcomes and compare them to the estimates
        -   if you record what you did today, then tomorrow that is historical data.
            It’s not more complicated than that
        -   In fact, if you don’t do that, then the next time you’re not estimating,
            you are guessing — again.
-   <https://medium.com/swlh/negotiating-achievable-commitments-6575b3d73b20>
    Excerpt:
    
    Successful projects — and successful relationships — are based on
    realistic commitments, not on fantasies and empty promises.
    
    1.  We must make commitments freely
    2.  Commitments must be explicitly stated and clearly understood by all parties
        involved
        -   Consider writing a brief summary of each major commitment you exchange
            with someone else. This confirms the communication and establishes a
            shared expectation of accountability.
        -   I keep two running lists in my daily life: To Do, and Waiting For.
    
    **Negotiating Commitments**
    
    -   Separate the people from the problem
    -   Focus on interests, not positions
    -   Invent options for mutual gain
    -   Insist on using objective criteria
        -   And remember that an estimate is not the same as a promise.
        -   A common cause of commitment failure is making “best case” commitments
            rather than “expected case” commitments.
    
    **Modifying Commitments**
    
    -   If it becomes apparent that you team won’t meet a commitment, tell those
        affected promptly. Don’t pretend you’re on schedule until it’s too late to
        make adjustments. Letting someone know early on that you can’t fulfill a
        commitment builds credibility and respect for your integrity, even if the
        stakeholders aren’t thrilled that you can’t deliver on the original promise
    
    **Commitment Ethics**
    
    -   A meaningful commitment ethic includes the ability to say “no.”
        e.g.:
        -   “Sure, I can do that by Friday. What would you like me to not do instead?”
        -   “We can’t get that feature into this iteration and still finish on
            schedule. Can it wait until the next iteration, or would you rather defer
            something else?”
        -   “I can do that, but it’s not as high on the priority list as my other
            obligations. Let me suggest someone else who might be able to help you
            more quickly than I can.”
    
    -   Never make a commitment that you know you can’t keep.
    -   our morale will be higher if we’re not set up for certain failure.”
-   <https://medium.com/swlh/hearing-the-voice-of-the-customer-the-product-champion-approach-24c61b526131>
    Excerpt:
    -   Only knowledgeable and empowered customer representatives can answer
        questions and flesh out high-level requirements.
    -   My concern about the phrase on-site customer is simply that it is singular.
    -   Most products have multiple distinct user classes, who have largely
        different needs. Certain groups — the favored user classes — will be more
        important than others to the project’s business success. Sometimes user
        classes aren’t even people: they’re other information systems or hardware
        components that derive services from the system you’re building.
    -   A more realistic approach is to enlist a small number of product champions
        to serve as key user representatives.
    -   If this group couldn’t all agree on some issue, Don made the call. Someone
        has to make these kinds of decisions; it’s better if a knowledgeable and
        respected user rep does it than if the BA or developers choose.
    -   They weren’t co-located with the development team, although they were
        accessible enough to provide quick feedback when needed.
    -   Each champion has the time available to do the job.
    -   Each champion has the authority to make binding decisions at the user
        requirements level.
    -   The moral of the story is that your customer reps must commit to making the
        project contributions you need from them, and then they need to do the job.
    -   The ideal product champion is an actual member of the user class he or she
        represents. This isn’t always possible, particularly when building
        commercial products for a faceless market. You might need to use surrogates
        in place of real user representatives.
    -   When your product champions are former — not current — users, ask yourself
        whether a disconnect has grown over time between their experiences and the
        needs today’s users have. Their understanding could be obsolete.
    -   Managers sometimes are uncomfortable delegating decision-making authority to
        ordinary users.
    -   First, those managers probably aren’t current members of the user class.
        Second, busy managers rarely have the time to devote to a serious
        requirements development effort. It’s better to have managers provide input
        to the business requirements
    -   Software developers who think they can speak for the users. Rarely, this
        situation can work. More commonly, even developers with considerable domain
        experience will find that actual users of the new product will bring a
        different — and more reliable — perspective.
    -   Your stakeholders might hesitate to have knowledgeable users spend time
        working with BAs or through developers on requirements. Here’s how I see it.
        You’re going to get the customer input eventually. It’s a lot less painful
        to get it early and on an ongoing basis during development.
    -   If your customers won’t collaborate in making sure the product meets their
        needs, I question their commitment to the project’s success.
-   <https://medium.com/swlh/requirements-review-challenges-e3ffe3ad60ef>
    Excerpt:
    -   If someone said you could only perform a single quality practice on a
        software project, what would you choose? I’d pick peer reviews of
        requirements.
    -   Several companies reported that they avoided up to ten hours of labor for
        every hour they invested in inspecting requirements documents and other
        software deliverables. Who wouldn’t want to try a technique that might offer
        a 1,000 percent return on investment?
    -   The prospect of thoroughly examining a long requirements document is
        daunting.
    -   Even given a document of moderate size, all reviewers might carefully
        examine the first part and a few stalwarts will study the middle, but
        probably no one will look at the last part.
    -   perform incremental reviews throughout requirements development
    -   large review teams increase the cost of the review, make it hard to schedule
        meetings, and have difficulty reaching agreement on issues
        -   Fourteen people cannot agree to leave a burning room, let alone agree on
            whether or not a particular requirement is correct.
        -   Make sure each participant is there to find defects, not to be educated or
            to protect a political position.
        -   Understand which perspective (such as user, developer, or tester) each
            inspector represents. (+ send just one representative to the inspection meeting)
        -   Establish several small teams to inspect the requirements in parallel and
            combine their defect lists, removing any duplicates.
        -   supply the requirements set to the other interested stakeholders in
            advance so they have an opportunity to contribute their input
    -   don’t let debates in the form of written comments substitute for talking to each other
    -   A prerequisite for a formal review meeting is that the participants have
        examined the material being reviewed ahead of time.
    -   In fact, if you’re invited to participate in a requirements review and don’t
        have adequate time to go over the material in advance on your own, don’t
        even bother attending the meeting. It’s a waste of everyone’s time.
    -   My general rule is: “Review early and often, formally and informally.”


<a id="org7a9b850"></a>

### Essays on Programming

-   <https://www.benkuhn.net/progessays/>
-   <https://blog.nelhage.com/post/computers-can-be-understood/>
-   <https://mcfunley.com/choose-boring-technology>
    This is controversial. There are also many examples where choosing boring
    technology ended up in terrible technology that needed much earlier
    maintainance (like choosing PHP in 2010 or the quoted MySQL from the article
    &#x2013; most of the time a PostgreSQL ends up with less problems, and you still
    need to be able to migrate to Spanner/Hive/Spark/CockroachDB if you are
    successful)
    
    IMHO, the main problem is the conception of shipping without planned
    maintainance (development). That&rsquo;s absurd in every other engineering
    discipline. When we build a house, car, plane, &#x2026; - we know from the start
    when we need to do maintainance and which parts should be replaced after what
    time of usage (and most of the time, we won&rsquo;t replace it with outdated
    technology). Updating the software at least once in a quarter and working on
    at least some issues (with the benefit of keeping knowledge about the internal
    processes), should be the minimum and planned by start. But usually in
    software, after shipping we expect to minimize following costs and call it
    operations. And then we end up with a whole deprecated stack that somehow
    works, but nobody really can work on or improve any longer.
-   <https://sandimetz.com/blog/2016/1/20/the-wrong-abstraction>
    -   duplication is far cheaper than the wrong abstraction
    -   prefer duplication over the wrong abstraction
    -   IMHO, a good hint is coming from Go Best Practices: Don&rsquo;t write `common`,
        `util` or other generic classes, and if you can&rsquo;t assign an abstraction to
        one topic, I think it&rsquo;s a good sign of a bad abstraction or an abstraction
        that should be only internally used in a bit fatter package
-   <https://www.kalzumeus.com/2010/06/17/falsehoods-programmers-believe-about-names/>
    tldr; It&rsquo;s a huge mess, don&rsquo;t expect anything (not even unicode)
    
    In theory, the best would be to implement something like a free data field and
    then an implementation of how to interpret it and then algorithm on top of it
    using the most appropriate interface to work with the name. But really, who
    does that, is there even at least one example for it?
-   <https://sockpuppet.org/blog/2015/03/06/the-hiring-post/>
    Very detailed:
    
    -   but try to make interviewing unimportant (you need good coder skills, not good talking/social stress skills)
    -   prefer coding testing from practice
    -   but keep objective scoring criteria: like test coverage, algorithmic complexity, spotted problem A, B, &#x2026;, &#x2026;
    -   if interviewing: keep a warm up phase with unimportant personal questions,
        keep highly structured interviews [all though they won&rsquo;t be loved](with robot-like scripts for the
        interviewer) and make them same/comparable for every one
    -   still allow free Q&A, but make it shorter and with less influence on all
    -   make it respectful for the interviewed person: free books etc to compensate for the work
    
    &#x2026; not sure about what company size the author is talking, for small
    companies, the main problem is usually to get at least one competent worker,
    not to select between different highly skilled apprentices
    
    &#x2026; in general: I&rsquo;m personal doubtful about long interviewing procedures with
    several rounds. There are many studies showing that in the end, they really
    don&rsquo;t help. There are 2 reliable proxies: high potential (graduate degree)
    [problem: isn&rsquo;t productive from day1] and is working successful for someone
    else [expensive]. I personal think, it&rsquo;s in case better to make a quick
    decision probably relying on something like
    <https://en.wikipedia.org/wiki/Secretary_problem> than to overestimate the own
    scoring procedures of interviewing. One problem of long interviewing is that
    the best will find another job before the selection process has finished
    (unless you are the one and only company)
-   <https://programmingisterrible.com/post/176657481103/repeat-yourself-do-more-than-one-thing-and>
    -   Repeat yourself, but don’t repeat other people’s hard work. Repeat yourself:
        duplicate to find the right abstraction first, then deduplicate to implement
        it.
    -   With “Don’t Repeat Yourself”, some insist that it isn’t about avoiding
        duplication of code, but about avoiding duplication of functionality or
        duplication of responsibility. This is more popularly known as the “Single
        Responsibility Principle”, and it’s just as easily mishandled. (like many boolean flags etc)
    -   A given module often gets changed because it is the easiest module to
        change, rather than the best place for the change to be made. In the end,
        what defines a module is what pieces of the system it will never responsible
        for, rather what it is currently responsible for.
    -   In the end, we call our good decisions ‘clean code’ and our bad decisions
        ‘technical debt’, despite following the same rules and practices to get
        there.
-   <https://www.joelonsoftware.com/2002/11/11/the-law-of-leaky-abstractions/>
    -   All non-trivial abstractions, to some degree, are leaky.
        -   iterating over a large two-dimensional array can have radically different
            performance if you do it horizontally rather than vertically,
        -   But in some cases, certain SQL queries are thousands of times slower than
            other logically equivalent queries. A famous example of this is that some
            SQL servers are dramatically faster if you specify “where a=b and b=c and
            a=c”
        -   network libraries like NFS and SMB let you treat files on remote machines
            “as if” they were local, sometimes the connection becomes very slow or
            goes down, and the file stops acting like it was local, and as a
            programmer you have to write code to deal with this.
        -   C++ string classes are supposed to let you pretend that strings are
            first-class data. They try to abstract away the fact that strings are hard
            and let you act as if they were as easy as integers. Almost all C++ string
            classes overload the + operator so you can write s + “bar” to concatenate.
            But you know what? No matter how hard they try, there is no C++ string
            class on Earth that will let you type “foo” + “bar”, because string
            literals in C++ are always char\*’s, never strings.
        -   And you can’t drive as fast when it’s raining, even though your car has
            windshield wipers and headlights and a roof and a heater, all of which
            protect you from caring about the fact that it’s raining (they abstract
            away the weather), but lo, you have to worry about hydroplaning (or
            aquaplaning in England) and sometimes the rain is so strong you can’t see
            very far ahead so you go slower in the rain, because the weather can never
            be completely abstracted away
    -   So the abstractions save us time working, but they don’t save us time learning.
    -   And all this means that paradoxically, even as we have higher and higher
        level programming tools with better and better abstractions, becoming a
        proficient programmer is getting harder and harder.
-   <https://blog.nelhage.com/post/reflections-on-performance/>
    -   Performance — in particular, being notably fast — is a feature in and of its
        own right, which fundamentally alters how a tool is used and perceived.
    -   Fast tools don’t just allow users to accomplish tasks faster; they allow
        users to accomplish entirely new types of tasks, in entirely new ways.
    -   “performance last” model will rarely, if ever, produce truly fast software
    -   The basic architecture of a system — the high-level structure, dataflow and
        organization — often has profound implications for performance.
    -   the more 1% regressions you can avoid in the first place, the easier this
        work is.
    -   attempts to add performance to a slow system often add complexity, in the
        form of complex caching, distributed systems, or additional bookkeeping for
        fine-grained incremental recomputation
    -   tool is fast in the first place, these additional layers may be unnecessary
        to achieve acceptable overall performance, resulting in a system that is in
        net much simpler for a given level of performance
-   <https://web.archive.org/web/20220418020617/https://www.somethingsimilar.com/2013/01/14/notes-on-distributed-systems-for-young-bloods/>
    -   Distributed systems are different because they fail often
    -   Writing robust distributed systems costs more than writing robust single-machine systems
    -   Robust, open source distributed systems are much less common than robust, single-machine systems
    -   Coordination is very hard
    -   If you can fit your problem in memory, it’s probably trivial
    -   “It’s slow” is the hardest problem you’ll ever debug
    -   Implement backpressure throughout your system
    -   Find ways to be partially available
    -   Metrics are the only way to get your job done
    -   Use percentiles, not averages
    -   Learn to estimate your capacity
    -   Feature flags are how infrastructure is rolled out
    -   Choose id spaces wisely
    -   Exploit data-locality
    -   Writing cached data back to persistent storage is bad
    -   Computers can do more than you think they can
    -   Use the CAP theorem to critique systems
    -   Extract services
-   <https://www.stilldrinking.org/programming-sucks>  - just epic and an exact description of programming world


<a id="orgac4e868"></a>

### Some Collection of Best of Talks

Nowhere complete, nowhere top selected per se, but some are interesting, so let&rsquo;s keep a little list of them

-   <https://www.youtube.com/watch?v=ecIWPzGEbFc&feature=youtu.be>  - &ldquo;Uncle&rdquo; Bob Martin - &ldquo;The Future of Programming&rdquo;
-   <https://www.youtube.com/watch?v=UANN2Eu6ZnM>  - Mental game of python -> how to reduce cognitive load and implement incrementally even OOP
-   <https://www.youtube.com/watch?v=KGaFcI2UNrI>  - States and Nomads: Handling Software Complexity - Why something like Software Patterns Gamma et al fail
-   <https://medium.com/@copyconstruct/best-of-2019-in-tech-talks-bac697c3ee13>
    -   <https://www.infoq.com/presentations/go-locks/>  - Let’s Talk Locks:
    -   <https://www.infoq.com/presentations/ebtree-design/?utm_source=presentations&utm_medium=ny&utm_campaign=qcon>  - Design for a Scheduler and Use (Almost) Everywhere
    -   <https://www.infoq.com/presentations/pid-loops/>  - PID Loops and the Art of Keeping Systems Stable (Control Theory inside)
    -   <https://www.infoq.com/presentations/state-serverless-computing/>  - Serverless = lots of latency, only hard to get consistency without very significant latency
    -   <https://www.youtube.com/watch?v=r-TLSBdHe1A>  - Performance matters (about how difficult it is to really get correct measures and causal profiling [for parallel/distributed programs])
    -   <https://www.infoq.com/presentations/moore-law-expiring/>
    -   <https://www.youtube.com/watch?v=Mj5P47F6nJg>  - Structured concurrency


<a id="orgb41f7b2"></a>

### Project Management

-   <https://sboots.ca/2021/05/12/rule-number-one-avoid-vendor-lock-in/>  - from perspective of government/public institution projects
-   <https://itnext.io/creating-quality-software-takes-more-effort-and-skill-not-more-time-27301de8624>
-   <https://flyingbarron.medium.com/known-unknowns-webb-struck-by-meteoroid-fde752dec87a>

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">Understand</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">Not Understand</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Aware</td>
<td class="org-left">Known-Knowns</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">Known-Unknowns</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">I&rsquo;m aware of potential problems</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">I&rsquo;m aware of potential problems</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">and I understand how to solve them</td>
<td class="org-left"><= Work <=</td>
<td class="org-left">but I don&rsquo;t know how to solve or avoid them</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">^</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">^</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">Work</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">Research</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">^</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">^</td>
</tr>
</tbody>

<tbody>
<tr>
<td class="org-left">Not Aware</td>
<td class="org-left">Unknown-Knowns</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">Unknown-Unknowns</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">There are problems out there I&rsquo;m not aware of</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">There are problems out there I haven&rsquo;t even considered</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">but I&rsquo;ve got a good idea of how to approach new problems</td>
<td class="org-left"><= Training <=</td>
<td class="org-left">and I don&rsquo;t know what I&rsquo;ll do when I encounter them</td>
</tr>
</tbody>
</table>

-   <https://medium.com/analysts-corner/telepathy-and-clairvoyance-requirements-practices-that-dont-work-8945e8a02979>
-   <https://itnext.io/why-creating-software-is-always-harder-than-expected-14d241f70656>


<a id="orgc0d3057"></a>

### Team Management

-   <https://towardsdatascience.com/leading-a-software-development-team-be13b3f6b0f>
-   <https://www.youtube.com/watch?v=28S4CVkYhWA&list=WL&index=2>  - Mob Programming and the Power of Flow
-   <https://github.com/18F/technology-budgeting/blob/master/handbook.md>  - De-risking custom technology projects (wie Behörden IT-Projekte am besten ausschreiben/planen/usw.)
-   <https://medium.com/static-void-academy/5-things-more-important-than-intelligence-in-software-engineering-23d52fb105b0>


<a id="org643ae5a"></a>

### JSON

-   <https://labs.bishopfox.com/tech-blog/an-exploration-of-json-interoperability-vulnerabilities>
-   <https://blog.kellybrazil.com/2021/12/03/tips-on-adding-json-output-to-your-cli-app/>  - talking about: jc an impressive tool that outputs typical cli as jsons
    Gives also some very useful best practices to work with JSON, so it&rsquo;s easy to pipe, parse and extract information out of it:
    -   Make a Schema
    -   Flatten the Structure
    -   Output JSON Lines for Streaming Output
    -   Use Predictable Key Names (especially no dynamically created keys like &ldquo;Interface 1&rdquo;, &ldquo;Interface 2&rdquo;, &#x2026; - better &ldquo;Interface&rdquo;: &ldquo;Interface 1&rdquo;)
    -   Pretty Print with Two Spaces or Don’t Format at All
    -   Don’t Use Special Characters in Key Names
    -   Don’t Allow Duplicate Keys
    -   Don’t Use Very Large Numbers


<a id="orga3a2925"></a>

### YAML

-   <https://yamllint.readthedocs.io/en/stable/>
-   <https://blog.atomist.com/in-defense-of-yaml/>
-   <https://arp242.net/weblog/yaml_probably_not_so_great_after_all.html>


<a id="orgbe6c5be"></a>

### RegEx

-   <https://regex101.com/>  - can help you build and test RegExes, as well as break them down and identify its individual parts
-   <https://regex-vis.com/>  - generates a graph from a RegEx which is very helpful for understanding what the expression actually does


<a id="orgc076763"></a>

### Python

1.  Best Practices

    -   <https://docs.quantifiedcode.com/python-anti-patterns/index.html>
    -   <https://gist.github.com/sloria/7001839>  - The Best of the Best Practices (BOBP) Guide for Python
    -   <https://medium.com/@cjolowicz/hypermodern-python-d44485d9d769>
        -   <https://medium.com/@cjolowicz/hypermodern-python-2-testing-ae907a920260>
        -   <https://medium.com/@cjolowicz/hypermodern-python-3-linting-e2f15708da80>
        -   <https://medium.com/@cjolowicz/hypermodern-python-4-typing-31bcf12314ff>
        -   <https://medium.com/@cjolowicz/hypermodern-python-5-documentation-13219991028c>
        -   <https://medium.com/@cjolowicz/hypermodern-python-6-ci-cd-b233accfa2f6>
    -   <https://martinheinz.dev/blog/59>  - Secure Password Handling in Python
    -   <https://towardsdatascience.com/whats-init-for-me-d70a312da583>  - Designing for Python package import patterns
    -   <https://instagram-engineering.com/static-analysis-at-scale-an-instagram-story-8f498ab71a0c>  - Linters, Codemods, &#x2026;

2.  Python Internals

    -   <https://towardsdatascience.com/understand-slots-in-python-e3081ef5196d>
    -   <https://towardsdatascience.com/python-f-strings-are-more-powerful-than-you-might-think-8271d3efbd7d>
        -   **Format date and timestamps:** f&ldquo;{dt.datetime.today():%Y-%M-%d}&rdquo;
        -   **Speed:** f-strings are fastest of all concatenation options in python
        -   **Format specification mini-language:** f&ldquo;{text<sub>to</sub><sub>center</sub>:<sup>15</sup>}
        -   **Nested f-strings:** -   f&ldquo;{f&rsquo;$number:.3f}&rsquo;:>10s}&rdquo;
            -   f&ldquo;{value:{width}.{precision}}&rdquo;
        -   **Conditionals formatting:** f&ldquo;{value:{&lsquo;4.3&rsquo; if value < 100 else &lsquo;8.5&rsquo;}}&rdquo;
    -   <https://docs.python.org/3/library/string.html#formatspec>  - Format specification mini-language
        
            format_spec     ::=  [[fill]align][sign][#][0][width][grouping_option][.precision][type]
            fill            ::=  <any character>
            align           ::=  "<" | ">" | "=" | "^"
            sign            ::=  "+" | "-" | " "
            width           ::=  digit+
            grouping_option ::=  "_" | ","
            precision       ::=  digit+
            type            ::=  "b" | "c" | "d" | "e" | "E" | "f" | "F" | "g" | "G" | "n" | "o" | "s" | "x" | "X" | "%"

3.  Modules

    1.  Misc
    
        -   <https://www.youtube.com/watch?v=GIF3LaRqgXo>  - Publishing (Perfect) Python Packages on PyPi
        -   <https://github.com/vinta/awesome-python>  - A curated list of awesome Python frameworks, libraries, software and resources.
        -   <https://towardsdatascience.com/the-most-underrated-python-packages-e22bf6049b5e>
            some surprising little packages:
            -   <https://github.com/huggingface/knockknock>  - get notified when your training/function ends
            -   <https://github.com/LuminosoInsight/python-ftfy>  - fix somehow broken unicode characters
        -   <https://github.com/jpvanhal/inflection>  - string transformation library. It singularizes and pluralizes English words, and transforms strings from CamelCase to underscored string.
        -   <https://github.com/lepture/python-livereload>  - nice file watcher
        -   <https://github.com/tiangolo/fastapi>  - framework, high performance, easy to learn, fast to code, ready for production
        -   <https://medium.com/better-programming/python-celery-best-practices-ae182730bb81>
        -   <https://github.com/seatgeek/fuzzywuzzy>  -  Fuzzy String Matching in Python (useful for CLI help and similar)
        -   <https://github.com/mingrammer/diagrams>  - lets you draw the cloud system architecture in Python code.
        -   <https://towardsdatascience.com/4-tools-to-automatically-extract-data-from-datetime-in-python-9ecf44943f89>
    
    2.  CLI
    
        -   <https://github.com/tiangolo/typer>  - build great CLIs. Easy to code. Based on Python type hints.
        -   <https://typer.tiangolo.com/>  - fastapi equivalent for CLI tools -> use it for the next CLI tool if possible
        -   <https://github.com/onelivesleft/PrettyErrors>  - readable stack traces for terminals with colors
        -   <https://github.com/Delgan/loguru>  - Python logging made (stupidly) simple
            Loguru is a library which aims to bring enjoyable logging in Python.
            
            Did you ever feel lazy about configuring a logger and used print() instead?&#x2026; I did, yet
            logging is fundamental to every application and eases the process of debugging. Using Loguru you
            have no excuse not to use logging from the start, this is as simple as from loguru import
            logger.
            
            Also, this library is intended to make Python logging less painful by adding a bunch of useful
            functionalities that solve caveats of the standard loggers. Using logs in your application
            should be an automatism, Loguru tries to make it both pleasant and powerful.
        -   <https://github.com/willmcgugan/rich>  - Python library for rich text and beautiful formatting in the terminal
    
    3.  Code Quality/CI
    
        -   <https://tox.readthedocs.io/en/latest/>  - standardize testing in Python
        -   <https://github.com/rubik/radon> and <https://github.com/rubik/xenon>  - measure and test program complexity
        -   <https://github.com/asottile/reorder_python_imports>
        -   <https://github.com/PyCQA/flake8-bugbear>
        -   <https://github.com/PyCQA/bandit>
        -   <https://gitlab.com/pycqa/flake8-docstrings>
        -   <https://github.com/terrencepreilly/darglint>  - checks that the docstring description matches the definition
        -   <https://github.com/Erotemic/xdoctest> - runs the examples in your docstrings
            and compares the actual output to the expected output as per the docstring
    
    4.  Typing
    
        -   <https://google.github.io/pytype/>  - checks and infers types for your Python code - without requiring type annotations
        -   <https://github.com/agronholm/typeguard>  - Run-time type checker for Python
        -   <https://github.com/python-discord/flake8-annotations>  - Flake8 Type Annotation Checking
        -   <https://github.com/samuelcolvin/pydantic/>  - Data validation and settings management using Python type hinting
        -   <https://medium.com/better-programming/the-beginners-guide-to-pydantic-ba33b26cde89>
        -   <https://github.com/python-desert/desert>  - generates serialization schemas for dataclasses and attrs classes
    
    5.  Data Science
    
        -   <https://towardsdatascience.com/an-overview-of-pythons-datatable-package-5d3a97394ee9>
        -   <https://github.com/ray-project/ray>  - seems to be an elegant alternative to celery
        -   Blog <https://towardsdatascience.com/modern-parallel-and-distributed-python-a-quick-tutorial-on-ray-99f8d70369b8>
        -   Documentation <https://ray.readthedocs.io/en/latest/index.html>
            I&rsquo;m not completely sure about the differences,
            but it looks it&rsquo;s much easier to setup and maintain.
            Also, the DAG handling is nicer on first look.
            
            One of the subprojects is a seamless pandas scaling framework [modin](https://github.com/modin-project/modin)!
        -   <https://github.com/modin-project/modin>  - scale your pandas workflows by changing one line of code
        -   <https://github.com/8080labs/ppscore>  - Predictive Power Score (PPS) instead of correlation matrices

4.  Debugging

    -   <https://github.com/benfred/py-spy>

5.  Documentation

    -   <https://medium.com/@cjolowicz/hypermodern-python-5-documentation-13219991028c>
        Tools:
        -   <https://gitlab.com/pycqa/flake8-docstrings> - adds an extension for the fantastic pydocstyle tool to flake8.
        -   <https://github.com/terrencepreilly/darglint>  - linter which checks that the docstring description matches the definition.
        -   <https://github.com/Erotemic/xdoctest>  - testing the examples in the docstrings
    -   <https://towardsdatascience.com/how-to-set-up-your-python-project-docs-for-success-aab613f79626>


<a id="orgb64ee0b"></a>

### Django

-   <https://github.com/pydanny/cookiecutter-django> &#x2013; Cookiecutter Django is a framework for jumpstarting production-ready Django projects quickly.
    Documentation: <https://cookiecutter-django.readthedocs.io/en/latest/>
-   <https://mattsegal.dev/django-prod-architectures.html>
-   <https://medium.com/@jwdobken/python-django-with-docker-and-gitlab-ci-b83cc4e7e2e>  - based on cookiecutter django
-   <https://www.youtube.com/watch?v=FPfBhqL-uek>  - Django for Admins
-   <https://docs.djangoproject.com/en/3.0/topics/performance/>  - Optimizing Django
-   <http://intercoolerjs.org/docs.html>  - Use familiar, declarative HTML attributes to add AJAX to your application. Use web standards like CSS, REST and Javascript events to enhance your app.
    -   **Blog:** <https://engineering.instawork.com/iterating-with-simplicity-evolving-a-django-app-with-intercooler-js-8ed8e69d8a52>
-   <https://medium.com/better-programming/how-to-use-drf-serializers-effectively-dc58edc73998>  - How to use django rest framework serializers


<a id="org87cbd9e"></a>

### Javascript / CSS

-   <https://medium.com/@michael.karen/learning-modern-javascript-with-tetris-92d532bcd057>
-   <https://medium.com/codex/stop-fighting-the-reason-css-exists-with-these-dumbass-frameworks-91732f5993c7>


<a id="org9d1d9bc"></a>

### Java

-   <https://medium.com/swlh/native-memory-the-silent-jvm-killer-595913cba8e7>  - more interesting than the debugging:
    **be aware that java.util.zip written in C has serious memory leaks without a good alternative**


<a id="org80155ba"></a>

### REST APIs / Web Development / HTML

-   <https://medium.com/@aleksei.kornev/production-readiness-checklist-for-backend-applications-8d2b0c57ccec>
-   <http://www.webpagetest.org/>  - checks speed of a web page from different locations, browsers, with auth, protocols &#x2026;
-   <https://developers.google.com/web/tools/lighthouse> - run it against any web
    page, public or requiring authentication. It has audits for performance,
    accessibility, progressive web apps, SEO and more.
-   <https://hackernoon.com/a-documentation-crash--45006a85c15c>
-   <https://documentation.divio.com/>  - What nobody tells you about documentation
    -   Tutorials
    -   How-To-Guides
    -   Discussions
    -   Reference
-   <https://medium.com/better-programming/best-practices-for-versioning-an-api-for-rest-apis-530a9398f311>
-   <https://www.freecodecamp.org/news/rest-is-the-new-soap-97ff6c09896d/>
-   <https://medium.com/dailyjs/what-every-software-engineer-should-know-about-oauth-2-0-10f0ef4998e5>
-   <https://medium.com/100-days-of-linux/10-curl-commands-that-you-should-know-ee3d032eb351>


<a id="orged5488f"></a>

### HTML

-   <https://itnext.io/html-underrated-tags-119ef3e45b94>
    -   **picture:** to have alternative imgs depending on media without all the css/js mash
    -   **progress:** progressbars just in plain html
    -   **base:** don&rsquo;t forget it :-)
    -   **input type=&ldquo;&#x2026;&rdquo;:** we have plain html date, datetime-local, month, week, time, color, range input types
    -   **details:** includes <summary> and only clicking on details shows all, again pure html
    -   **mark:** use it instead of <span class=&ldquo;&#x2026;&rdquo;> to mark something
    -   **abbr:** easy to forget, but very useful
    -   **div contenteditable:** to create an editable field (and get rid of textarea)
-   <https://javascript.plainenglish.io/9-html-tips-nobody-is-talking-about-2022-edition-b7c095029030>
    -   **Fallback image:** <img src="pic2.src" onerror="this.style.display='none'"/>
            <img src="pic1.src" onerror="this.src='fallback-img.jpg'"/>
    -   **Directly call from HTML:** <a href="tel:123-456-7890">123-456-7890</a>
    -   **Translate:** <p translate=”no”>Don’t translate this!</p>
            <p>This can be translated to any language.</p>
    -   **Poster:** attribute helps you set an image to be shown while the video is downloading
        
            <video controls poster="/images/w3html5.gif">
                <source src="movie.mp4" type="video/mp4">
                <source src="movie.ogg" type="video/ogg">
                Your browser does not support the video tag.
            </video>


<a id="org8e744ef"></a>

### Golang

-   <https://towardsdatascience.com/ultimate-setup-for-your-next-golang-project-1cc989ad2a96>
-   <https://medium.com/swlh/ultimate-golang-string-formatting-cheat-sheet-234ec92c97da>#
    -   **&ldquo;%+v&rdquo;:** print struct with field names
    -   **&ldquo;%#v&rdquo;:** print struct with type and field names
    -   **&ldquo;%q&rdquo; :** print string with quotes
    -   **&ldquo;%t&rdquo; :** print boolean
    -   **&ldquo;%e&rdquo;/&ldquo;%E&rdquo;:** print float in scientific notation
-   <https://medium.com/a-journey-with-go/go-multiple-errors-management-a67477628cf1>


<a id="org5de5eaa"></a>

### Git / GitHub / Versioning

1.  Misc

    -   <https://ohshitgit.com/>
    -   <https://semver.org/spec/v2.0.0.html>  - Semantic versioning
    -   <https://github.com/github/semantic/blob/master/docs/examples.md>  - Haskell library and command line tool for parsing, analyzing, and comparing source code
    -   <https://github.com/timqian/star-history>
        (1.0.0 -> 1.0.1 bugfix -> 1.1.0 new functionality -> &#x2026; -> 2.0.0 backward incompatible breaking change)
    -   <https://mogron.github.io/blog/github-star-analysis/>

2.  Best Practices / Linters

    -   <https://levelup.gitconnected.com/5-best-practices-to-prevent-git-leaks-4997b96c1cbe>
    -   <https://github.com/thoughtworks/talisman> - By hooking into the pre-push hook
        provided by Git, Talisman validates the outgoing changeset for things that
        look suspicious - such as authorization tokens and private keys.
        See also <https://thoughtworks.github.io/talisman/>
    -   <https://github.com/awslabs/git-secrets> - Prevents you from committing
        passwords and other sensitive information to a git repository
    -   <https://github.com/zricethezav/gitleaks>  - Scan git repos for secrets using regex and entropy

3.  Config + Tools

    -   <https://itnext.io/seven-git-configs-9de48007aa77>
    -   <https://medium.com/pragmatic-programmers/git-config-diff-colormoved-8e2f24af6645>
    -   <https://github.com/dandavison/delta>  A syntax-highlighting pager for git, diff, and grep output
        -   **Installation:** <https://dandavison.github.io/delta/installation.html>


<a id="org06cf13d"></a>

### Shell/Bash/Zsh

-   <https://www.shellcheck.net/>  - a static analysis tool for shell scripts
-   <https://kvz.io/bash-best-practices.html>
-   <https://blog.yossarian.net/2020/01/23/Anybody-can-write-good-bash-with-a-little-effort>
-   <https://arslan.io/2019/07/03/how-to-write-idempotent-bash-scripts/>
-   <https://betterprogramming.pub/5-bash-scripting-power-tips-bfd919b619c1>
-   <https://medium.com/better-programming/top-tips-for-writing-unsurprising-bash-scripts-9b9f4f0cc30e>
    1.  Tell Bash to Run in Safe Mode
        
            # start your script with
            #!/bin/bash -eu
            
            # Or
            
            #!/usr/bin/env bash
            set -o errexit
            set -o nounset
    
    2.  Try to use the long form of options
    
    3.  Use Quotes around the variables
    
    4.  Don&rsquo;t write Programs (more than 100 lines of code => use python instead)
    
    5.  Give helpful error messages (<https://levelup.gitconnected.com/helpful-errors-in-bash-scripts-c1e3c2c50bf8>)
-   <https://betterdev.blog/minimal-safe-bash-script-template/>
    
        #!/usr/bin/env bash
        
        set -Eeuo pipefail
        trap cleanup SIGINT SIGTERM ERR EXIT
        
        script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)
        
        usage() {
        cat <<EOF
        Usage: $(basename "${BASH_SOURCE[0]}") [-h] [-v] [-f] -p param_value arg1 [arg2...]
        
        Script description here.
        
        Available options:
        
        -h, --help      Print this help and exit
        -v, --verbose   Print script debug info
        -f, --flag      Some flag description
        -p, --param     Some param description
        EOF
        exit
        }
        
        cleanup() {
        trap - SIGINT SIGTERM ERR EXIT
        # script cleanup here
        }
        
        setup_colors() {
        if [[ -t 2 ]] && [[ -z "${NO_COLOR-}" ]] && [[ "${TERM-}" != "dumb" ]]; then
            NOFORMAT='\033[0m' RED='\033[0;31m' GREEN='\033[0;32m' ORANGE='\033[0;33m' BLUE='\033[0;34m' PURPLE='\033[0;35m' CYAN='\033[0;36m' YELLOW='\033[1;33m'
        else
            NOFORMAT='' RED='' GREEN='' ORANGE='' BLUE='' PURPLE='' CYAN='' YELLOW=''
        fi
        }
        
        msg() {
        echo >&2 -e "${1-}"
        }
        
        die() {
        local msg=$1
        local code=${2-1} # default exit status 1
        msg "$msg"
        exit "$code"
        }
        
        parse_params() {
        # default values of variables set from params
        flag=0
        param=''
        
        while :; do
            case "${1-}" in
            -h | --help) usage ;;
            -v | --verbose) set -x ;;
            --no-color) NO_COLOR=1 ;;
            -f | --flag) flag=1 ;; # example flag
            -p | --param) # example named parameter
            param="${2-}"
            shift
            ;;
            -?*) die "Unknown option: $1" ;;
            *) break ;;
            esac
            shift
        done
        
        args=("$@")
        
        # check required params and arguments
        [[ -z "${param-}" ]] && die "Missing required parameter: param"
        [[ ${#args[@]} -eq 0 ]] && die "Missing script arguments"
        
        return 0
        }
        
        parse_params "$@"
        setup_colors
        
        # script logic here
        
        msg "${RED}Read parameters:${NOFORMAT}"
        msg "- flag: ${flag}"
        msg "- param: ${param}"
        msg "- arguments: ${args[*]-}

-   <https://towardsdatascience.com/9-time-saving-tricks-for-your-command-line-c7535f1aa648>
    -   **!!:** reexecutes last command
    -   **!foo:** reexecute last command with foo
    -   **!$:** access arguments of last command
    -   **Ctrl+a:** hop to beginning of line
    -   **Ctrl+e:** hop to end of line
    -   **Ctrl+k:** delete everything from cursor to end of line
-   <https://levelup.gitconnected.com/5-modern-bash-scripting-techniques-that-only-a-few-programmers-know-4abb58ddadad>
    -   **Technique for showing spinner like animation via bash:** #!/bin/bash
            sleep 5 &
            pid=$!
            frames="/ | \\ -"
            while kill -0 $pid 2&>1 > /dev/null;
            do
                for frame in $frames;
                do
                    printf "\r$frame Loading..."
                    sleep 0.5
                done
            done
            printf "\n"
    -   **Displaying Native GUI Notifications from Bash:** #!/bin/bash
            sleep 10
            notify-send "notify.sh" "Task #1 was completed successfully"
-   <https://betterprogramming.pub/25-awesome-linux-command-one-liners-9495f26f07fb>
    My favorites:
    -   Set a console clock into the right corner
        
            while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &
    -   Mount a temporary RAM partition
        
            mount -t tmpfs tmpfs /mnt -o size=2048m
    -   List numerical values for each of the 256 colors in bash
        
            for code in {0..255}; do echo -e "\e[38;05;${code}m $code: Test"; done
    -   Run the previous command and replacing
        
            ^aaa^bbb
    -   Use the <rsync> command with a progress bar to copy
        
            rsync -rv <src> <dst> --progress
    -   Monitor the progress of a command
        
            pv a_big_file.txt | gzip > a_big_file.log.gz
-   <https://betterprogramming.pub/6-more-oddball-linux-utilities-you-should-try-7ba8552c2e2e>
    -   **lam file1 file2 &#x2026;:** laminated, files are joined together as columns
    -   **encguess file:** attempts to guess the encoding of a text file


<a id="org313dfc0"></a>

### Makefiles

-   <https://medium.com/better-programming/how-to-create-a-self-documenting-makefile-533ebf8f82e2>
-   <https://nullprogram.com/blog/2017/08/20/>  - A Tutorial on Portable Makefiles


<a id="org421a7e8"></a>

### Databases

-   <https://medium.com/@rakyll/things-i-wished-more-developers-knew-about-databases-2d0178464f78>
-   <https://stripe.com/en-de/blog/online-migrations>  - steps to migrate a huge production database while running in production

-   Dual Writing: Write to both versions
-   Copy offline snapshot data that was not updated while in the write to both sync process
-   Change read paths: Read from new version
-   Change write paths: Write only to new version, make sure that it only writes to new version, stop syncing
-   Remove old data

-   <https://medium.com/@rbranson/10-things-i-hate-about-postgresql-20dbab8c2791>

A list with items where you need a skilled DBA to understand, but written good enough to understand to use a managed service where ever possible :-)

-   <http://asvignesh.in/3-2-1-backup-strategy/>
-   <https://medium.com/scopedev/introduction-to-profiling-and-optimizing-sql-queries-for-software-engineers-3cf376ecc712>
-   <https://explain.depesz.com/>  - Tool: PostgreSQL&rsquo;s explain analyze made readable
-   410 gone medium.com/faun/how-are-passwords-securely-stored-in-databases-be883241959f
    tldr; The first method considered safe as of 2017 is Password-Based Key
    Derivation Functions (PBKDF2):
    
        intermediate = salt
        for (_ in range(N)):  # typical value for N might be 100
            intermediate = hash(password + intermediate)
        result_hash := intermediate
-   <https://towardsdatascience.com/the-curious-case-of-mysql-postgresql-and-hive-9e7cae9e52f4>  - subtle changes in behaviour given same syntax


<a id="org8be5042"></a>

### Cronjobs

-   <https://github.com/healthchecks/healthchecks>  - A cron monitoring tool written in Python & Django


<a id="orga4c2ce5"></a>

### Editors

1.  <https://elsewebdevelopment.com/neovim-vs-helix-which-is-the-best-vi-vim-style-modal-editor/>


<a id="orgd16be8c"></a>

## DevOps / Security


<a id="org27892fb"></a>

### Misc

-   <https://leebriggs.co.uk/blog/2022/06/21/devops-is-a-failure>  - DevOps has become Ops more or less
-   <https://medium.com/better-programming/top-8-devops-interview-questions-and-answers-9120f554d1b9>  - worth to read even when not preparing for an interview
-   <https://gruntwork.io/devops-checklist/>  - Production Readiness Checklist
    Read also: <https://blog.gruntwork.io/5-lessons-learned-from-writing-over-300-000-lines-of-infrastructure-code-36ba7fadeac1>
    including the video of an impressive talk: <https://www.youtube.com/watch?v=RTEgE2lcyk4>
-   <https://medium.com/s/story/technical-debt-is-like-tetris-168f64d8b700>
-   <https://ferd.ca/complexity-has-to-live-somewhere.html>
-   <https://www.joelonsoftware.com/2000/04/06/things-you-should-never-do-part-i/>
-   <https://blog.thepete.net/blog/2019/10/04/hello-production/>  - Deploying something useless into production, as soon as you can, is the right way to start a new project
-   <https://medium.com/@paulosman/production-oriented-development-8ae05f8cc7ea>  - code in production is the only code that matters.
    1.  Engineers should operate their code.
    2.  Buy Almost Always Beats Build
    3.  Make Deploys Easy
    4.  Trust the People Closest to the Knives
    5.  QA Gates Make Quality Worse
    6.  Boring Technology is Great.
    7.  Simple Always Wins
    8.  Non-Production Environments Have Diminishing Returns
    9.  Things Will Always Break
-   <http://onemogin.com/observability/dashboards/practitioners-guide-to-system-dashboard-design.html>
-   <https://medium.com/salesforce-ux/metric-display-standards-54736533c81>
-   <https://thechief.io/c/blameless/5-best-practices-nailing-incident-retrospectives/>
    1.  Use visuals in your postmortems
        Graphs like when the incidents happened
        -   Better to understand for newcomers what&rsquo;s going on
        -   In future engineers have something they already have seen before and can compare
    2.  Be a historian
        -   Show timelines
    3.  Publish promptly (aim <= 48h)
        -   More accurate (who can remember anything weeks or months old)
        -   Otherwise people thing everything is out of control and fill the gap with (miserable) products you don&rsquo;t want
    4.  Be blameless
    5.  Tell a (complete) story (not only for insiders)


<a id="orgcb652d6"></a>

### Logging

-   <https://medium.com/anton-on-security/retaining-logs-for-a-year-boring-or-useful-70ea21fa3dda>
-   <https://github.com/timberio/vector>  - lightweight, ultra-fast, open-source tool for building observability pipelines
    -   to replace Logstash, Fluent\*, Telegraf, Beats, or similar tools
    -   as a daemon or sidecar.
    -   as a Kafka consumer/producer for observability data.
    -   in resource constrained environments (such as devices)
    -   see also: <https://www.kartar.net/2020/05/a-bit-of-a-vector/>
-   <https://medium.com/@JaouherK/creating-a-human-and-machine-freindly-logging-format-bb6d4bb01dca>


<a id="orgf714e37"></a>

### Dashboarding

-   <https://shkspr.mobi/blog/2022/08/the-point-of-a-dashboard-isnt-to-use-a-dashboard/>
    it shows that you have access to your data => huge deal
    -   Live data
    -   Historic data
    -   Comparative metrics
    -   Access to multiple databases
    -   External data sources
    -   &#x2026;

It is there to prove that the data are easily accessible, comparable, and trackable. Only once that is done can they be actionable.

Trapped data is useless data.


<a id="org90cc86f"></a>

### Monorepo vs Multirepo

-   <https://www.bennadel.com/blog/3944-why-ive-been-merging-microservices-back-into-the-monolith-at-invision.htm>
-   <https://web.archive.org/web/20201030222344/https://www.rookout.com/blog/cant-git-no-satisfaction-why-we-need-a-new-gen-source-control>  - Advantages/Disadvantages of Monorepo vs Multirepo
-   <https://medium.com/opendoor-labs/our-python-monorepo-d34028f2b6fa>  - many interesting small decisions
    -   Seperate into projects, libraries and tools
    -   Different CI/CD pipelines for all of them &#x2013;> invest time in tooling
    -   when changing libraries, test run for them and all affected projects (so either make it backwards compatible or rewrite affected projects/services)
    -   as a result all projects use the same version of the libraries (no breaking changes and no updating/deprecating old versions)
    -   need tooling for linters, pytest, Dockerfiles, etc as they are not designed to work with monorepos
    -   group of Python reviewers for shared code (**really a best practice IMHO**)


<a id="org2010d52"></a>

### CI/CD-Pipeline

-   <https://aws.amazon.com/builders-library/automating-safe-hands-off-deployments/>  - very detailed report from an amazon employee
-   <https://medium.com/swlh/gitlab-ci-docker-an-unorthodox-but-hopefully-useful-workflow-29a4149c8acb> -
    builder docker image to compile, test and create artefacts and also to
    generate an application container
-   <https://github.com/nektos/act>  - Run your GitHub Actions locally


<a id="orga87677b"></a>

### Cloud Provisioners

1.  For all platforms

    -   <https://github.com/gruntwork-io/cloud-nuke>  - get rid of all allocated resources, finally!
    -   <https://medium.com/@nandovillalba/why-i-think-gcp-is-better-than-aws-ea78f9975bda>

2.  AWS

    -   <https://adayinthelifeof.nl/2020/05/20/aws.html>  - Nice, simple list of all AWS Web Services (May 2020)
    -   <https://medium.com/teamzerolabs/5-aws-services-you-should-avoid-f45111cc10cd>
        1.  Cognito (User Management/Mobile Login)
            -   No Mobile
            -   Use one of the competitors OAuth2 from Google/Facebook/w/e
        2.  CloudFormation
            -   Obviously a huge mess -> use Terraform instead
        3.  ElasticCache
            -   just very expensive for a simple redis server (that intents to hold ephemoral data anywhere)
            -   just deploy it to an ec2 or similar and if HA is needed setup a load balancer in front
        4.  Kinesis
            -   difficult to setup (some java foo stuff with explicit dependencies to bundle into python stuff and more creepy actions)
            -   just use one of the messaging queue alternatives like celery, rabbitmq, kafka, &#x2026;
        5.  Lambda
            -   great to handle triggers (like update to s3 or w/e)
            -   terrible to run http rest endpoints (no solid monitoring, logging, unclear environment it&rsquo;s running and so on)
                -> just use a real framework like flask, fastapi, django w/e or kubeless
    -   <https://medium.com/swlh/so-you-inherited-an-aws-account-e5fe6550607d>  - Secure an existing AWS Account (more or less complete checklist)
    -   <https://towardsdatascience.com/best-practices-for-securing-aws-ec2-instances-4bd656e22462>
    -   <https://github.com/rebuy-de/aws-nuke>
    -   <https://ncona.com/2020/05/setting-up-a-bastion-host-on-aws/>
    -   <https://medium.com/@kapalesachin/all-about-aws-vpc-47faf4114240>

3.  GCP

    -   <https://medium.com/google-cloud/completely-private-gke-clusters-with-no-internet-connectivity-945fffae1ccd>

4.  Openshift

    -   <https://medium.com/swlh/im-so-sorry-openshift-i-ve-taken-you-for-granted-f36fb47ea4d9>  - advantages of Openshift vs AKS/EKS,GKS,&#x2026;, tldr; it&rsquo;s much simpler

5.  Terraform

    1.  Misc
    
        -   <https://medium.com/swlh/design-principles-and-practices-for-terraform-276b2c463563>
        -   <https://medium.com/faun/invoking-the-aws-cli-with-terraform-4ae5fd9de277>
        -   <https://medium.com/swlh/setting-up-auth0-with-terraform-c93ae25cf2f9>
        -   <https://blog.gruntwork.io/a-comprehensive-guide-to-managing-secrets-in-your-terraform-code-1d586955ace1>
        -   <https://medium.com/faun/terraform-remote-backend-demystified-cb4132b95057>  - very similar to Terraform Up & Running
    
    2.  Tools
    
        -   <https://github.com/GoogleCloudPlatform/terraformer> - CLI tool to generate
            terraform files from existing infrastructure (reverse Terraform).
        -   <https://github.com/cycloidio/terracognita> - Reads from existing Cloud
            Providers (reverse Terraform) and generates your infrastructure as code on
            Terraform configuration
        -   <https://github.com/cycloidio/inframap> - Read your tfstate or HCL to generate a
            graph specific for each provider, showing only the resources that are most
            important/relevant.
    
    3.  Linters / Code quality
    
        -   <https://medium.com/faun/terraform-code-quality-66e6468f50f3>
        -   <https://github.com/terraform-linters/tflint>  - linter for terraform, e.g. catch wrong machine type before deploying
        -   <https://github.com/liamg/tfsec>  - Static analysis powered security scanner for your terraform code
        -   <https://github.com/eerkunt/terraform-compliance>  - a lightweight, security focused, BDD test framework against terraform
            -   mainly focuses on negative testing instead of having fully-fledged
                functional tests
            
            -   E.g. a sample policy could be, if you are working with AWS, you should not
                create an S3 bucket, without having any encryption. Of course, this is just
                an example which may or not be applicable for your case.
        -   <https://github.com/inspec/inspec>  - Auditing and Testing Framework (is compliance as code)
            -   focusing on positive auditing rules in a ruby like test spec format
            -   works also for other infrastructure elements, not only terraform
        -   <https://github.com/gruntwork-io/terratest>  - write integration tests for the cloud in unit test style

6.  Ansible & Co

    -   <https://pyinfra.com/>  - More pythonic and **faster** Ansible alternative
        -   **github:** <https://github.com/Fizzadar/pyinfra>


<a id="org4c0f67d"></a>

### Site Reliability

1.  Misc

    -   <https://medium.com/@rahatshaikh/cloud-design-patterns-explained-simply-113c788b33ff>  - Cloud Design Patterns
    
    including:
    
    -   **Asynchronous Request and Reply:** polling or event notification
    -   **Command and Query Responsibility Segregation (CQRS):** seperate read and write models
    -   **Event Sourcing:** event store (audit trail)
    -   **Retry:** Try and try again (later)
    -   **Circuit Breaker:** Fail fast
    -   **Sidecar:** Co-locate Monitoring, Logging, &#x2026;
    
    -   <https://www.oreilly.com/ideas/how-to-get-started-with-site-reliability-engineering-sre>
    -   <https://hackernoon.com/introduction-into-chaos-engineering-from-an-architects-perspective-kh5x3wkw>
    -   <https://tech.deliveryhero.com/our-reliability-manifesto/>

2.  Incident Management / Alerting

    -   <https://medium.com/kudos-engineering/faking-fires-get-better-incident-management-with-practise-e61a5d66578d>
    -   <https://uptime.com/blog/got-game-secrets-of-great-incident-management>
    -   <https://shubheksha.com/posts/2019/04/re-framing-how-we-think-about-production-incidents/>
    -   <https://thechief.io/c/blameless/best-practices-effective-incident-management/>
    -   <https://developers.soundcloud.com/blog/alerting-on-slos>
    -   <https://firehydrant.io/blog/incident-severity-and-priority-101/>  - Severity SEV1..SEV5 and Priority P1..P4 definition in natural language for everyone in the company
    -   <https://thenewstack.io/running-more-low-severity-incidents-is-improving-our-culture/>

3.  Deployment Strategies

    -   <https://charity.wtf/2019/05/01/friday-deploy-freezes-are-exactly-like-murdering-puppies/>
    -   <https://hackernoon.com/deploy-on-fridays-or-dont-qg2y32jk>
    -   <https://blog.turbinelabs.io/deploy-not-equal-release-part-one-4724bc1e726b>
    -   <https://medium.com/@copyconstruct/testing-in-production-the-safe-way-18ca102d0ef1>


<a id="orgabe5d3d"></a>

### Microservices / Serverless

-   <https://rapidapi.com/>  - to buy or sell pure APIs

Read Details about in <https://towardsdatascience.com/api-as-a-product-how-to-sell-your-work-when-all-you-know-is-a-back-end-bd78b1449119>

-   <https://www.vinaysahni.com/best-practices-for-building-a-microservice-architecture?fbclid=IwAR1LEKYyJ6p1N2v8sf7HpxkCjgj_MQaDL6t7OizR4FWGma-hzWeFSQfHjJg#platform>
-   <https://cloudncode.blog/2017/03/02/best-practices-aws-lambda-function/?fbclid=IwAR2t2c23c1VM21GNPIh0yHHGRhV9LoWYm0QOEofZ-youUYtDRLdR_UOj5Vs>
-   <https://theburningmonk.com/2020/07/are-lambda-to-lambda-calls-really-so-bad/>
-   <http://leebriggs.co.uk/blog/2019/04/13/the-fargate-illusion.html>  - severless not being infrastructureless
-   <https://theburningmonk.com/2019/04/comparing-nuclio-and-aws-lambda/>


<a id="org9269b90"></a>

### Docker/Containers     :Docker:

1.  Misc

    -   <https://medium.com/swlh/alpine-slim-stretch-buster-jessie-bullseye-bookworm-what-are-the-differences-in-docker-62171ed4531d>
    -   <https://pythonspeed.com/articles/base-image-python-docker-images/> :Docker:
    -   <https://pythonspeed.com/articles/dockerizing-python-is-hard/>    :Docker:
    -   <https://pythonspeed.com/articles/alpine-docker-python/>  - why not to use alpine as docker image for python
    -   <https://semaphoreci.com/blog/docker-benefits>                    :Docker:
    -   <https://towardsdatascience.com/docker-tensorflow-google-cloud-platform-love-87c026f08cc7>
    -   <https://iximiuz.com/en/posts/containers-distroless-images/>

2.  Linters

    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <thead>
    <tr>
    <th scope="col" class="org-left">&#xa0;</th>
    <th scope="col" class="org-left">**Dockle**</th>
    <th scope="col" class="org-left">**Hadolint**</th>
    <th scope="col" class="org-left">**Docker Bench for Security**</th>
    <th scope="col" class="org-left">**Clair**</th>
    <th scope="col" class="org-left">**Anchore**</th>
    <th scope="col" class="org-left">**Trivy**</th>
    </tr>
    </thead>
    
    <tbody>
    <tr>
    <td class="org-left">**Target**</td>
    <td class="org-left">Image</td>
    <td class="org-left">Dockerfile</td>
    <td class="org-left">Host</td>
    <td class="org-left">Image</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    
    <tr>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">Docker Daemon</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    
    <tr>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">Image</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    
    <tr>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">Container Runtime</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    </tbody>
    
    <tbody>
    <tr>
    <td class="org-left">**How to run**</td>
    <td class="org-left">Binary</td>
    <td class="org-left">Binary</td>
    <td class="org-left">ShellScript</td>
    <td class="org-left">Binary</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    </tbody>
    
    <tbody>
    <tr>
    <td class="org-left">**Dependency**</td>
    <td class="org-left">No</td>
    <td class="org-left">No</td>
    <td class="org-left">Some dependencies</td>
    <td class="org-left">No</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    </tbody>
    
    <tbody>
    <tr>
    <td class="org-left">**CI Suitable**</td>
    <td class="org-left">Yes</td>
    <td class="org-left">Yes</td>
    <td class="org-left">No</td>
    <td class="org-left">No</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    </tbody>
    
    <tbody>
    <tr>
    <td class="org-left">**Purpose**</td>
    <td class="org-left">Security Audit</td>
    <td class="org-left">Dockerfile Lint</td>
    <td class="org-left">Security Audit</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    
    <tr>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">Dockerfile Lint</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">Dockerfile Lint</td>
    <td class="org-left">Scan Vulnerabilities</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    </tbody>
    </table>
    
    -   <https://github.com/quay/clair>
    -   <https://github.com/hadolint/hadolint> - A smarter Dockerfile linter that helps
        you build best practice Docker images. The linter is parsing the Dockerfile
        into an AST and performs rules on top of the AST. It is standing on the
        shoulders of ShellCheck to lint the Bash code inside RUN instructions.
    -   <https://github.com/docker/docker-bench-security>
    -   <https://github.com/goodwithtech/dockle>
    -   <https://github.com/aquasecurity/trivy>
    -   <https://github.com/anchore/anchore-engine>

3.  Docker Best Practices & Docker Security

    -   <https://medium.com/better-programming/docker-best-practices-and-anti-patterns-e7cbccba4f19>
    -   <https://medium.com/@cwgem/thoughts-about-docker-security-8e0df4b43650>
        -   Usage Of Official Images
        -   Pull Signed Images
        -   Docker Trusted Registry
        -   Dockerd With User Namespaces (no privileged running)
        -   Hyper-V Isolation (docker run -it &#x2013;isolation=hyperv &#x2026;)
        -   Dockerfile Verification (docker history, dive, &#x2026;)
        -   Basic Virus Scan (Create docker container without running, export it and scan the image)
        -   Low Level Running Container Analysis (sysdig tool, let container for some
            time and check what expected system and network calls and do the same in the
            CI/CD pipeline)
        -   Seccomp Profiles and Capabilities
        -   CVE Scanning (e.g. via Clair)
        -   CIS Benchmarks (CIS = Center for Internet Security) &#x2013;> look for tools similiar to docker-bench-security/kube-bench
        -   Language Specific Package Scanning
        -   Static Code Analysis
    -   <https://towardsdatascience.com/top-20-docker-security-tips-81c41dd06f57> :Docker:
    -   <https://medium.com/faun/container-security-101-scanning-images-for-vulnerabilities-8030af2441ba>
    -   <https://boxboat.com/2020/04/24/image-scanning-tech-compared/>
        tldr; When in doubt, use trivy (comparing Clair vs Anchore vs Trivy)

4.  Tools

    -   <https://codeopolis.com/posts/6-docker-utilities-everyone-should-try/>
    -   <https://medium.com/ssense-tech/my-docker-support-stack-58b1e67f5f4f>  - Portainer to manage containers, WeaveScope to display network connections, Log-Io to pull logs from docker containers :Docker:
    -   <https://github.com/containrrr/watchtower> 
        -   With watchtower you can update the running version of your containerized app
            simply by pushing a new image to the Docker Hub or your own image registry.
            Watchtower will pull down your new image, gracefully shut down your existing
            container and restart it with the same options that were used when it was
            deployed initially.
    -   <https://github.com/coord-e/magicpak>  - Build minimal docker images without static linking
    -   <https://domm.plix.at/perl/2020_06_docker_prune_volumes_by_label.html>


<a id="org5da1a49"></a>

### Kubernetes     :Kubernetes:

1.  Misc

    -   <https://blog.pipetail.io/posts/2020-05-04-most-common-mistakes-k8s/>
    -   <https://github.com/jamiehannaford/what-happens-when-k8s>
    -   <https://matthias-endler.de/2019/maybe-you-dont-need-kubernetes/> :Kubernetes:
    -   <https://ably.com/blog/no-we-dont-use-kubernetes>
    -   <https://towardsdatascience.com/key-kubernetes-commands-741fe61fde8> :Kubernetes:
    -   <https://medium.com/90seconds/lessons-learned-with-gitlab-runner-on-kubernetes-d547c30ad5fb> :Kubernetes:
    -   <https://prefetch.net/blog/2019/10/16/the-beginners-guide-to-creating-kubernetes-manifests/> :Kubernetes:
    -   <https://learnk8s.io/cloud-resources-kubernetes>  - Provisioning
    -   <https://piotrminkowski.com/2020/03/10/best-practices-for-microservices-on-kubernetes/> with examples from Spring Boot
        1.  Allow platform to collect metrics
        2.  Prepare logs in right format
        3.  Implement both readiness and liveness health check
        4.  Consider your integrations (timeout for database connections and similar)
        5.  Use service mesh
        6.  Be open for framework specific solutions
        7.  Be prepared for rollback
    -   <https://itnext.io/before-you-use-kustomize-eaa9529cdd19>  - Advantages/Disadvantages of Kustomize vs Helm
    -   <https://www.eficode.com/blog/the-future-of-kubernetes-and-why-developers-should-look-beyond-kubernetes-in-2022>

2.  Linters

    -   <https://github.com/instrumenta/kubeval/>
    -   <https://helm.sh/docs/helm/helm_lint>
    -   <https://sonobuoy.io/> - diagnostic tool that makes it easier to understand the
        state of a Kubernetes cluster by running a choice of configuration tests in an
        accessible and non-destructive manner
        -   Conformance Testing
        -   Workload Debugging
        -   Custom Tests and Data Collection

3.  Kubernetes Security     :Security:

    -   <https://kubernetes-security.info/>                            :Security:
    -   <https://devops.com/how-to-secure-your-kubernetes-cluster-on-gke/> :Security:
    -   <https://kubernetes.io/blog/2018/07/18/11-ways-not-to-get-hacked/> :Security:
    -   <https://www.microsoft.com/security/blog/2020/04/02/attack-matrix-kubernetes/> :Security:
    -   <https://itnext.io/seccomp-in-kubernetes-part-i-7-things-you-should-know-before-you-even-start-97502ad6b6d6>
        1.  Run your containers with AllowPrivilegeEscaltion=false. It will make your
            seccomp profiles smaller and less likely to be impacted by container
            runtime changes.
        2.  Set your seccomp profiles at container level
        3.  Create application-specific seccomp profiles. If you can&rsquo;t do that, go for
            application type seccomp profiles, for example create a superset profile
            that encompass all your golang web api applications. As a last resort use
            runtime/default
        4.  No container in your cluster should run as seccomp=unconfined, specially in
            production environments
        5.  Create audit mode profiles to test in production by mixing a blacklist with
            a whitelist and logging all exceptions.
        6.  Allow the system calls you know you need, block everything else
        7.  Be comprehensive and make sure all the basic system calls have been whitelisted
    -   <https://github.com/aquasecurity/kube-bench>
    -   <https://github.com/cyberark/KubiScan>
    -   <https://github.com/kinvolk/lokomotive> - open source Kubernetes distribution
        that ships pure upstream Kubernetes. It focuses on being minimal, easy to use,
        and secure by default.

4.  AWS/EKS

    1.  Misc
    
        -   <https://zwischenzugs.com/2019/03/25/aws-vs-k8s-is-the-new-windows-vs-linux/> :Kubernetes:
        -   <https://medium.com/@dyachuk/why-do-kubernetes-clusters-in-aws-cost-more-than-they-should-fa510c1964c6>
    
    2.  EKS / Deployment
    
        -   <https://eksworkshop.com/>
        -   <https://medium.com/risertech/production-eks-with-terraform-5ad9e76db425>
            Regard <https://www.terraform.io/docs/providers/aws/r/eks_node_group.html> (so don&rsquo;t copy everything from the tutorial)
        -   <https://itnext.io/aws-elastic-kubernetes-service-running-alb-ingress-controller-8d0d457615fa>
        -   <https://medium.com/swlh/deploy-rshiny-with-kubernetes-using-aws-eks-and-terraform-655921d9e13c>
        -   <https://itnext.io/bootstrapping-kubernetes-clusters-on-aws-with-terraform-b7c0371aaea0>  - including a general overview of bootstrapping tools
    
    3.  CI/CD
    
        -   <https://itnext.io/utilize-jenkins-in-an-auto-scaling-kubernetes-deployment-on-amazon-eks-with-spot-instances-f9159df00aee>
        -   <https://itnext.io/building-a-kubernetes-ci-cd-pipeline-on-aws-with-codepipeline-codebuild-shopgun-43ccf76277b5>
        -   <https://medium.com/swlh/universal-cicd-pipeline-on-aws-and-k8s-7b4129fac5d4>

5.  HowTo-Guides (Kubeconfig, GCP, Rancher, KIND, Private Container Registry)

    -   <https://ahmet.im/blog/mastering-kubeconfig/>
    -   <https://medium.com/faun/application-deployment-using-gitlab-ci-cd-on-managed-kubernetes-cluster-at-gcp-72b59496979c>
    -   <https://medium.com/@jmrobles/how-to-create-a-kubernetes-cluster-with-rancher-on-hetzner-3b2f7f0c037a>
    -   <https://medium.com/@kgamanji/customise-your-kind-clusters-networking-layer-1249e7916100>
    -   <https://medium.com/faun/private-container-registry-on-kubernetes-78118a62a9c8>  - backed by S3
    -   <https://insights.project-a.com/using-github-actions-to-deploy-to-kubernetes-122c653c0b09>
    -   <https://martinheinz.dev/blog/60>  - Keeping Kubernetes Clusters Clean and Tidy

6.  Monitoring

    -   <https://tech.showmax.com/2019/10/prometheus-introduction/>
    -   <https://github.com/hjacobs/kube-ops-view>

7.  Service Meshs

    -   <https://zwischenzugs.com/2020/05/05/riding-the-tiger-lessons-learned-implementing-istio/>
        1.  The Number Of People Doing This Feels Really Small
            
            -   [Istio Forum](https://discuss.istio.io/)
            
            -[ Istio Slack Channel](https://discuss.istio.io/t/istio-slack-channel/1527)
        2.  If You Go Off The Beaten Path, Prepare For Pain
            Defaults work fine. Off-Defaults will need serious development and debugging time
        3.  Build Up A Good Mental Glossary Istio has its own vocabulary: Cluster,
            registry, even ingress is subtle different to what it is used commonly and
            also used in Kubernetes
            Documentation is a bit git-like, it&rsquo;s compact and understandable once you understand it.
        4.  It Changes Fast
            Watch for releases
        5.  Focus On Working On Your Debug Muscles
            -   <https://istio.io/docs/ops/diagnostic-tools/>
            -   <https://github.com/istio/istio/wiki/Troubleshooting-Istio>
            -   <https://github.com/istio/istio/wiki/Analyzing-Istio-Performance>
        6.  When It All Works, It’s Great
    -   <https://medium.com/@pklinker/performance-impacts-of-an-istio-service-mesh-63957a0000b>  - tldr; significant, but not very much


<a id="orgf549e0b"></a>

### SSH

-   <https://medium.com/maverislabs/proxyjump-the-ssh-option-you-probably-never-heard-of-2d7e41d43464>


<a id="org1818680"></a>

### General Computer/Networking/&#x2026; Security     :Security:

1.  Misc

    -   <https://github.com/redacted/XKCD-password-generator>  - Generate secure multiword passwords/passphrases, inspired by XKCD
    -   <https://www.youtube.com/watch?v=BreKdM7CKnY&list=PL_IxoDz1Nq2YjnEpUMSqeqVUXgyEcsJdu&index=2&t=0s>  - Hirne hacken, Sicherheit aus psychologischer Sicht
    -   <https://medium.com/@stestagg/stealing-secrets-from-developers-using-websockets-254f98d577a0>  - A browse up example: scanning localhost ports in the frontend
    -   <https://www.digitalocean.com/community/tools/nginx>  - The easiest way to configure a performant, secure, and stable NGINX server.
        A web page to generate the nginx.conf as starting point following best practices (and still configurable)
    -   <https://medium.freecodecamp.org/discovering-the-hidden-mine-of-credentials-and-sensitive-information-8e5ccfef2724>
    -   <https://www.youtube.com/watch?v=k8FIDGmmYvs>  - How to break PDFs
    -   <https://www.philvenables.com/post/cybersecurity-and-the-curse-of-binary-thinking>
    -   <https://www.netmeister.org/blog/tlds.html>  - Domain Name System or DNS is a never-ending source of amusement and amazement

2.  Anti-Patterns

    -   <https://www.ncsc.gov.uk/whitepaper/security-architecture-anti-patterns>
        1.  &rsquo;Browse-up’ for administration
            -   When administration of a system is performed from a device which is less trusted than the
                system being administered. ​
            -   A better approach: ‘browse-down’
        2.  Management bypass
            -   When layered defences in a network data plane can be short-cut via the management plane.​
            -   A better approach: layered defences in management planes
        3.  Back-to-back firewalls
            -   When the same controls are implemented by two firewalls in series, sometimes from different
                manufacturers.
            -   A better approach: do it once, and do it well
            -   The one exception: There is one example of using two firewalls back-to-back that makes more
                sense; to act as a contract enforcement point between two entities that are connecting to
                each other.
        4.  Building an ‘on-prem’ solution in the cloud
            -   When you build - in the public cloud - the solution you would have built in your own data
                centres.
            -   A better approach: use higher order functions
        5.  Uncontrolled and unobserved third party access
            -   When a third party has unfettered remote access for administrative or operational purposes,
                without any constraints or monitoring in place.
            -   A better approach: a good contract, constrained access and a thorough audit trail
        6.  The un-patchable system
            -   When a system cannot be patched due to it needing to remain operational 24/7.
            -   A better approach: design for &rsquo;easy&rsquo; maintenance, little and often
    -   <https://www.ncsc.gov.uk/blog-post/protect-your-management-interfaces>
        1.  Protecting devices used for administration
            -   Ensure privileged users carry out their administrative duties in a ‘clean’ (more trusted)
                environment.
            -   Ensure privileged users handle their email and web browsing in a separate ‘dirty’ (less
                trusted) environment.
            -   Consider the ‘dirty’ environment to be sacrificial, and design it in a way that anticipates
                compromise. When it is compromised, you’d like to be able to find out when and how (and be
                able to easily recover it into a good state), but the breach shouldn&rsquo;t have a big impact on
                your important systems.
            -   Use strong authentication mechanisms, such as 2-factor authentication.
        2.  Reducing the exposure of management interfaces
            -   Expose management interfaces to dedicated management networks where you can. At the very
                least, limit authorised inbound IP addresses to those used by dedicated management devices.
            -   Deploy jump servers where you need to expose management interfaces to less trusted networks.
                Ensure these are very well configured and maintained.
            -   Use only the latest versions of secure protocols and configure them to use strong
                authentication mechanisms. For example, use the latest version of SSH rather than Telnet,
                and use public-key authentication to secure access.
            -   Create similar tiers in your management networks to those in the systems being managed.
            -   Collect and automatically alert on security-relevant events against your management
                infrastructure.
        3.  Ensuring there&rsquo;s a trail of breadcrumbs
            -   Record the commands issued by users on jump servers, and store them securely.
            -   Ensure all network and server infrastructure audit records are also kept securely.
            -   Send these records to a service that administrators don&rsquo;t have readily available access to,
                and would need multiple people to modify.
            -   Automate the analysis of logs to identify suspicious behaviour.
    -   <https://www.ncsc.gov.uk/blog-post/debunking-cloud-security-myths>
        > On balance we think well-engineered SaaS is better for security than the alternatives.
        
        > Consider whether your IT security engineering team is going to be better or worse at security
          management for a major commodity product, offered - as a service - by the major vendor who
          developed it.
        
        > SaaS offerings may feel at times like an uncontrolled and uncontrollable space where your
          staff will share private data in an unconstrained fashion. Our experience is that this can be
          true, but that it’s better to provide them with easy to understand guidance on which tools are
          appropriate to use, and where to seek help, rather than to ban them altogether.
        
        > I assert it is better to spend our local security effort on problems unique to our
          organisations, rather than worrying about patching, maintaining, and monitoring services that
          others can do better than us.
        
        > In summary, I would like to leave you with the message that whilst SaaS is not a silver bullet
          for cyber security, in many situations the security benefits outweigh the risks.
    -   <https://withblue.ink/2020/04/08/stop-writing-your-own-user-authentication-code.html>
    -   <https://medium.com/@joelgsamuel/ip-address-access-control-lists-are-not-as-great-as-you-think-they-are-4176b7d68f20>

3.  How-To-Guides

    -   <https://medium.com/viithiisys/10-steps-to-secure-linux-server-for-production-environment-a135109a57c5>  - <&#x2013; do this on a production server
    -   <https://blog.usejournal.com/how-to-avoid-ruining-lives-front-end-security-matters-26d4f906c7a6>  - XSS and CSRF tokens
    -   <https://onezero.medium.com/how-to-totally-secure-your-smartphone-48b7a85a5ed8>


<a id="org90ed1b6"></a>

### Security Tools

-   <https://github.com/dev-sec/ansible-os-hardening> - This role provides numerous
    security-related configurations, providing all-round base protection. It is
    intended to be compliant with the DevSec Linux Baseline.
-   Tool <https://github.com/hannob/snallygaster>  - scan for secret files on HTTP Servers
    Video <https://www.youtube.com/watch?v=Bppr9rbmwz4>  - Attacking with HTTP Requests


<a id="orga2e0fd7"></a>

## Data Science / ML / NLP     :DataScience:


<a id="orgae4c04a"></a>

### Misc

-   <https://tech.trello.com/ice-scoring/>  - Prioritize A/B Test Ideas
-   <https://lilianweng.github.io/lil-log/2019/03/14/are-deep-neural-networks-dramatically-overfitted.html>
    Give the idea to re-randomize layers or re-initialize top-layers and measure re-randomization or
    re-initialization robustness to find a &ldquo;best&rdquo; iteration stop. As big DL models won&rsquo;t really
    overfit in classical sense of increasing error again at some point in training, but still start
    to memorize etc.
    -   View by information theory/compression
-   <https://towardsdatascience.com/top-10-coding-mistakes-made-by-data-scientists-bb5bc82faaee>
-   <https://karpathy.github.io/2019/04/25/recipe/>  - A Recipe for Training Neural Networks
-   <https://towardsdatascience.com/neural-odes-breakdown-of-another-deep-learning-breakthrough-3e78c7213795>
-   <https://docs.nvidia.com/deeplearning/sdk/dali-developer-guide/docs/index.html>  - Nvidia Dali GPU/CPU fast Augmentations library
-   <https://towardsdatascience.com/no-machine-learning-is-not-just-glorified-statistics-26d3952234e3> :Philosophical:Statistical:
-   <https://towardsdatascience.com/the-most-powerful-idea-in-data-science-78b9cd451e72>  - Any datapoint you use to inspire a theory or question can’t be used to test that same theory. :Philosophical:Statistical:
    Avoid p-hacking and all this stuff
    Split it up into at least 2 data sizes
    
    Introductionary, but very well written text


<a id="org284b051"></a>

### Compilations

-   <https://github.com/khuyentran1401/Data-science>  - Collection of useful data science topics along with code and articles (good curated)
-   <https://towardsdatascience.com/ai-papers-to-read-in-2022-c6edd4302247>
    -   [Tabular Data: Deep Learning is Not All You Need](https://arxiv.org/abs/2106.03253)
    -   [A ConvNet for the 2020s](https://arxiv.org/pdf/2201.03545.pdf)


<a id="orgfaccb54"></a>

### Interesting Analysis     :Analysis:

-   <https://towardsdatascience.com/whos-tweeting-from-the-oval-office-96ea5b60c03>  - Guess the author with NLP and (classic) ML techniques :NLP:Society:
-   <https://towardsdatascience.com/making-the-mueller-report-searchable-with-ocr-and-elasticsearch-4e73e55de341> :ElasticSearch:OCR:
-   <https://towardsdatascience.com/how-does-news-coverage-differ-between-media-outlets-20aa7be1c96a>  - WordClouds for CNN, NBC, &#x2026; + TopWords + SentimentAnalysis of Headlines
-   <https://www.youtube.com/watch?v=DpXy041BIlA&t=2s>  - 30 weird chess algorithms - Data Science at its best I&rsquo;d say completely out of usual domains :Chess:
-   <https://towardsdatascience.com/march-madness-analyze-video-to-detect-players-teams-and-who-attempted-the-basket-8cad67745b88>


<a id="org7e887de"></a>

### Kaggle     :Kaggle:

-   <https://medium.com/@andrew.picart/using-kaggle-for-your-data-science-work-a2e78d692395> :Jupyter<sub>Notebook</sub>:Kaggle:Collaboration:
-   <https://towardsdatascience.com/a-story-of-my-first-gold-medal-in-one-kaggle-competition-things-done-and-lessons-learned-c269d9c233d1>


<a id="org2356f5a"></a>

### Team (Management, Hiring, Organization, &#x2026;)

-   <https://medium.com/predict/five-interview-questions-to-predict-a-good-data-scientist-40d310cdcd68>
-   <https://hbr.org/2019/02/how-to-choose-your-first-ai-project>
-   <https://techblog.commercetools.com/building-up-a-data-science-team-from-scratch-7a7b24ba9f2d>
-   <https://towardsdatascience.com/what-i-learned-from-being-a-startups-first-data-engineer-f19cd71d3f31>
-   <https://towardsdatascience.com/important-traits-to-help-you-become-a-better-data-science-manager-dc0de3a37961>
-   <https://towardsdatascience.com/12-things-i-learned-during-my-first-year-as-a-machine-learning-engineer-2991573a9195>
-   <https://towardsdatascience.com/six-challenges-every-data-scientist-will-face-and-how-to-overcome-them-2d7ccd6e88c4>
-   <https://towardsdatascience.com/data-science-is-boring-1d43473e353e>
-   <https://towardsdatascience.com/how-to-screw-up-a-computer-vision-project-166dfcc44a5f>
-   <https://towardsdatascience.com/why-data-scientists-and-engineers-quit-their-jobs-afc2350eef9a>
-   <https://tedbauer2003.medium.com/data-driven-approaches-flop-because-well-they-terrify-people-a66fc92ba9fe>
    Excerpt:
    
    -   Data nerds that I’ve met fucking love data. They want to explain all these formulas they put together. Execs don’t have time for that.
    -   a major problem with “data-driven decisions” is that executives want to believe in their gut
    -   If “Big Data” removes some of these reasons, how relevant are they anymore?
    -   who wants 750 rows of information if guesswork makes you feel better?
    -   No one is going to use data if it makes them less relevant or contradicts their “gut feels” and “instincts about their industry.” I mean, that’s just human psychology.
    -   Analysis paralysis: More data just means more to analyze // more to mess up analyzing, and that’s actually slowing down decision-making.
    -   [data] It’s gotten this religious importance at the leadership level, even though most leaders have no idea what any of it represents
    -   implementation of big data. It’s not about collecting the data or having it to show. That’s what most companies think. It’s about (a) empathy for how other people want to interact with it and (b) using it for better decisions
    
    Recommended actions:
    
    -   Let employees work on small data projects
    -   Let them block one hour/day to take an online class about data or processing information
    -   Let everyone be associated with 1–2 surveys that go out across a year
    -   Ask actual data-driven questions when you interview
    -   Include small data projects in hiring assessments if you want to see people’s ability to mess around with stuff
    -   Make the projects small, guided, and step-by-step so that people don’t feel overwhelmed
    -   Don’t let the hardcore data people make it scarier for everyone else, especially if you view data as a future competitive advantage
    -   Don’t let hardcore data people do presentations that showcase massive data sets and cross-tabs and whatever … this scares others
    -   Slow and steady gets you more people who can contribute
    
    Comments:
    
    -   **Shane Murphy:** &#x2026; I dislike the idea of anything being data-driven, to be honest. I prefer the term &ldquo;data-informed.&rdquo; It&rsquo;s less corporate and implies that the data is a part of a larger decision making process, which is what it should be. The idea of just taking a set of data and making a decision based on that data is a bit insulting to a human being who is tasked (and paid) to actually make decisions &#x2026;
    -   **Crazyrichfeen:** &#x2026; One is that, if data truly does lead to better decision, then at some point someone is going to get over their fear of lack of relevance and use it to dominate their competition. &#x2026; Most people look at the world through an a priori model, and have already decided how it works, and cherry pick &rsquo;evidence&rsquo; to support their already existing models. This is the ultimate reason why data driven approaches are eschewed right now. When done right, they tend to tell people things they don&rsquo;t want to hear &#x2026;
    -   **MXM:** &#x2026; would add that SOME level of skepticism about data is normal and healthy &#x2026; If there is a formula that comes out it doesn’t explain WHY the data came out that way.  &#x2026; There are many silly correlations in the world
    -   **Cameron Warren:** Data translation is the key &#x2026; 90% of analytics work results in overly complicated dashboards that die after a week. The power users of dashboards are, you guessed it, just other “data” people that are less technical.


<a id="org932ebe3"></a>

### Optimizers / Learn Rates

-   <https://towardsdatascience.com/finding-good-learning-rate-and-the-one-cycle-policy-7159fe1db5d6> :fastai:
-   <https://medium.com/@lessw/new-deep-learning-optimizer-ranger-synergistic-combination-of-radam-lookahead-for-the-best-of-2dc83f79a48d> :fastai:
-   <https://towardsdatascience.com/self-paced-learning-for-machine-learning-f1c489316c61>
-   <https://pub.towardsai.net/morphnet-is-a-google-model-to-build-faster-and-smaller-neural-networks-f890276da456>
    Uses cycles of reduction phase (and notes about casts related to target) and expansion phase where high costs to neuron layers (=reducing quality of model) are more expanded than other layers


<a id="orgbc24e81"></a>

### Visidata

-   **Documentation:** <https://www.visidata.org/docs/>
-   **Github:** <https://github.com/saulpw/visidata>
-   **Installing (via pipx):** <https://gist.github.com/jsvine/4fd295176b4f5257dfb89b3898a21a7e>
-   **Video Tutorial:** <https://www.youtube.com/playlist?list=PLxu7QdBkC7drrAGfYzatPGVHIpv4Et46W>


<a id="orga5e5fd1"></a>

### Jupyter Notebooks

-   <https://nextjournal.com/schmudde/how-to-version-control-jupyter>
-   <https://towardsdatascience.com/advanced-jupyter-notebooks-a-tutorial-3569d8153057>
-   <https://towardsdatascience.com/how-to-effortlessly-optimize-jupyter-notebooks-e864162a06ee>
-   <https://github.com/fastai/fastprogress>  - Simple and flexible progress bar for Jupyter Notebook and console
-   <https://towardsdatascience.com/jupyter-is-the-new-excel-but-not-for-your-boss-d24340ebf314>  - ways to export/give other easy access to notebooks (hiding cells etc)
-   <https://towardsdatascience.com/on-the-myths-and-problems-of-jupyter-notebooks-81517a4696ef>  - You can version control, test and modularize notebooks with current tools. Let’s discuss the real issues.
-   <https://towardsdatascience.com/introduction-to-papermill-2c61f66bea30>  - How to transform your Jupyter Notebook into a workflow tool
-   <https://towardsdatascience.com/jupyter-notebook-as-a-function-create-reusable-notebooks-with-papermill-8f9bea5b9727>
-   <https://medium.com/y-data-stories/automating-jupyter-notebooks-with-papermill-4b8543ece92f>
-   <https://github.com/ploomber/ploomber>  - Ploomber is the fastest way to build data pipelines zap. Use your favorite editor (Jupyter, VSCode, PyCharm) to develop interactively and deploy cloud without code changes (Kubernetes, Airflow, AWS Batch, and SLURM). Do you have legacy notebooks? Refactor them into modular pipelines with a single command


<a id="org02c7411"></a>

### Streamlit

-   <https://towardsdatascience.com/how-to-deploy-a-streamlit-app-using-an-amazon-free-ec2-instance-416a41f69dc3>


<a id="orgaaeda61"></a>

### Pytorch/fastai

-   <https://towardsdatascience.com/multi-layer-perceptron-usingfastai-and-pytorch-9e401dd288b8> :PyTorch:fastai:
-   <https://towardsdatascience.com/deep-learning-for-diagnosis-of-skin-images-with-fastai-792160ab5495> :fastai:
-   <https://medium.com/huggingface/from-tensorflow-to-pytorch-265f40ef2a28> :PyTorch:tensorflow:


<a id="org74002f4"></a>

### Web Scraping

-   <https://medium.com/better-programming/introducing-autoscraper-a-smart-fast-and-lightweight-web-scraper-for-python-20987f52c749>


<a id="orgee63a25"></a>

### Datasets

-   <https://github.com/awesomedata/awesome-public-datasets>  - repository on GitHub of high quality topic-centric public data sources.
    They are collected and tidied from blogs, answers, and user responses. Almost all of these are
    free with a few exceptions here and there
-   <https://tinyletter.com/data-is-plural>  - weekly newsletter of useful/curious datasets. Y
    you can find a huge archive of datasets on their google doc. Just hit ctrl + f for a topic you’d
    like to look into and see the dozens of results that pop up.
-   <https://data.world/datasets/open-data>  - Data World is an open data repository containing data contributed by thousands of users and organizations all across the world.
    it contains really hard to find data from. In particular, the healthcare field is one of the
    more difficult industries to get publicly available data from(due to privacy concerns). But
    luckily, Data World has 3667 free health datasets you can use for your next project.

-   <https://archive.ics.uci.edu/ml/index.php>  - UCI Machine Learning Repository is a collection of databases, domain theories, and data generators
    used by the machine learning community for the empirical analysis of machine learning
    algorithms. The archive was created as an ftp archive in 1987 by David Aha and fellow graduate
    students at UC Irvine. Since that time, it has been widely used by students, educators, and
    researchers all over the world as a primary source of machine learning data sets. As an
    indication of the impact of the archive, it has been cited over 1000 times, making it one of the
    top 100 most cited “papers” in all of computer science.
-   <https://www.data.gov/>
-   <https://github.com/neutraltone/awesome-stock-resources> - A curated list of awesome stock photography, video and illustration websites.
-   <https://datasetsearch.research.google.com>
-   <https://www.europeandataportal.eu/de/homepage>
-   <https://tfhub.dev/>  - Pretrained Models from Google & DeepMind
    -   Text (Embeddings)
    -   Image (Classification, Feature Vector, Generator, Other)
    -   Video (Classification)
-   <https://archive.org/details/GeneralIndex>  -  gigantic index of the words and short phrases contained in more than 100 million journal articles — including many paywalled papers
    see also: <https://www.nature.com/articles/d41586-021-02895-8>
-   <https://www.si.edu/openaccess>  -  enthält 2D- und 3D-Darstellungen von kulturellen, wissenschaftlichen, historischen, künstlerischen, technischen und Design-Exponaten aus seinen 19 Museen, 9 Forschungszentren, Bibliotheken, Archiven und dem National Zoo. Hinzu kommen Forschungsdaten und Daten zu Sammlungen


<a id="org2026f34"></a>

### Pandas     :Pandas:

-   <https://towardsdatascience.com/7-useful-pandas-tips-for-data-management-8b23a85bf41f>  - read<sub>html</sub> and read<sub>pdf</sub>, use .xs method for multi-indexing
-   <https://hackersandslackers.com/intro-to-data-analysis-in-python-using-pandas/>  - Really deep and good information (interesting for beginners and advanced readers) in 12 Parts &#x2026;
-   <https://hackersandslackers.com/using-hierarchical-indexes-with-pandas/>   - That&rsquo;s part 12 of it
-   <https://www.youtube.com/watch?v=xPPs59pn6qU>  - pivot and pivot<sub>table</sub> usage (part of a pandas video series)
-   <https://towardsdatascience.com/analyzing-time-series-data-in-pandas-be3887fdd621> :TimeSeries:
-   <https://towardsdatascience.com/geopandas-101-plot-any-data-with-a-latitude-and-longitude-on-a-map-98e01944b972> :Visualization:
-   <https://towardsdatascience.com/how-to-work-with-million-row-datasets-like-a-pro-76fb5c381cdd>  - reducing memory
-   <https://towardsdatascience.com/6-pandas-mistakes-that-silently-tell-you-are-a-rookie-b566a252e60d>
    -   Read CSVs is slow: Prefer using a specialiced module for it, e.g.: <https://github.com/h2oai/datatable>
    -   dtypes, worst is object, there is a also a `category` dtype
    -   Little helper function from <https://gist.githubusercontent.com/BexTuychiev/4e34c55454c50c6fb1d0043d2848de6a/raw/f8af2217bdf3cb19881f068a9ba42ce67b1d6d8c/10206.py>
        to reduce in memory footprint of dataframes (might not hold after saving)
        
            def reduce_memory_usage(df, verbose=True):
                numerics = ["int8", "int16", "int32", "int64", "float16", "float32", "float64"]
                start_mem = df.memory_usage().sum() / 1024 ** 2
                for col in df.columns:
                    col_type = df[col].dtypes
                    if col_type in numerics:
                        c_min = df[col].min()
                        c_max = df[col].max()
                        if str(col_type)[:3] == "int":
                            if c_min > np.iinfo(np.int8).min and c_max < np.iinfo(np.int8).max:
                                df[col] = df[col].astype(np.int8)
                            elif c_min > np.iinfo(np.int16).min and c_max < np.iinfo(np.int16).max:
                                df[col] = df[col].astype(np.int16)
                            elif c_min > np.iinfo(np.int32).min and c_max < np.iinfo(np.int32).max:
                                df[col] = df[col].astype(np.int32)
                            elif c_min > np.iinfo(np.int64).min and c_max < np.iinfo(np.int64).max:
                                df[col] = df[col].astype(np.int64)
                        else:
                            if (
                                c_min > np.finfo(np.float16).min
                                and c_max < np.finfo(np.float16).max
                            ):
                                df[col] = df[col].astype(np.float16)
                            elif (
                                c_min > np.finfo(np.float32).min
                                and c_max < np.finfo(np.float32).max
                            ):
                                df[col] = df[col].astype(np.float32)
                            else:
                                df[col] = df[col].astype(np.float64)
                end_mem = df.memory_usage().sum() / 1024 ** 2
                if verbose:
                    print(
                        "Mem. usage decreased to {:.2f} Mb ({:.1f}% reduction)".format(
                            end_mem, 100 * (start_mem - end_mem) / start_mem
                        )
                    )
                return df
    -   prefer file formats like parquet
    -   read pandas user guide
-   <https://towardsdatascience.com/an-overview-of-pythons-datatable-package-5d3a97394ee9>


<a id="orgf0ecc23"></a>

### Data Annotation

-   <https://towardsdatascience.com/introducing-label-studio-a-swiss-army-knife-of-data-labeling-140c1be92881>
    -   **Github:** <https://github.com/heartexlabs/label-studio>
-   <https://towardsdatascience.com/introducing-mito-how-to-generate-pandas-code-while-editing-a-spreadsheet-96cf874b70c2>
    Similar to OpenRefine maybe, didn&rsquo;t checked it yet


<a id="orgd5b576d"></a>

### Data Cleaning

-   <https://counting.substack.com/p/data-cleaning-is-analysis-not-grunt>


<a id="orgfcde5bf"></a>

### Data Exploration / Feature Engineering

-   <https://towardsdatascience.com/25-hot-new-data-tools-and-what-they-dont-do-31bf23bd8e56>
-   <https://towardsdatascience.com/annotated-heatmaps-in-5-simple-steps-cc2a0660a27d>
-   <https://github.com/pandas-profiling/pandas-profiling>  - Generates profile reports from a pandas DataFrame. :Pandas:
    The pandas df.describe() function is great but a little basic for serious exploratory data analysis.
-   <https://towardsdatascience.com/the-hitchhikers-guide-to-feature-extraction-b4c157e96631>  - featuretools, target mean encoding, ordinal encoding, hash encoding, log loss clipping, &#x2026;
-   <https://towardsdatascience.com/4-tips-for-advanced-feature-engineering-and-preprocessing-ec11575c09ea>  - SMOTE Oversampling, featuretools creations, IterativeImputer, IsolationForest for Outlier Detection
-   <https://distill.pub/2016/misread-tsne/>  - A nice <span class="underline">interactive</span> overview of the effect of hyperparameters for t-SNE
-   <https://towardsdatascience.com/five-command-line-tools-for-data-science-29f04e5b9c16>  - especially csvkit and csvquery
-   <https://medium.com/@ODSC/transforming-skewed-data-for-machine-learning-90e6cc364b0>
-   <https://de.wikipedia.org/wiki/Shapiro-Wilk-Test>  -  Signifikanztest, der die Hypothese überprüft, dass die zugrunde liegende Grundgesamtheit einer Stichprobe normalverteilt


<a id="org1970175"></a>

### Data Testing

-   <https://great-expectations.readthedocs.io/en/latest/index.html> - helps teams save time and promote analytic integrity by offering pipeline tests.
    Pipeline tests are applied to data (instead of code) and at batch time (instead
    of compile or deploy time). Pipeline tests are like unit tests for datasets:
    they help you guard against upstream data changes and monitor data quality.
-   <https://towardsdatascience.com/validate-your-pandas-dataframe-with-pandera-2995910e564>  - pandera provides a flexible and expressive API for performing data validation on dataframes to make data processing pipelines more readable and robust.


<a id="org54dd900"></a>

### Data Visualization     :Visualization:

-   [Human Terrain - Visualizing World Population in 3D](https://pudding.cool/2018/10/city_3d/?fbclid=IwAR3YX_t3CyRYCMKhuqXcQ4Xxy-eg1gGJpmsK8AA8_GpPfzmfcTwWmaMk2bw)
-   <https://www.youtube.com/watch?time_continue=283&v=jbkSRLYSojo>  - Hans Rosling&rsquo;s 200 Countries, 200 Years, 4 Minutes - The Joy of Stats
-   <https://link.medium.com/xL0hrHaJSV>  - Data visualizations “Mistakes, we’ve drawn a few” by Sarah Leo
-   <https://towardsdatascience.com/pythons-one-liner-graph-creation-library-with-animations-hans-rosling-style-f2cb50490396>
-   <https://towardsdatascience.com/its-2019-make-your-data-visualizations-interactive-with-plotly-b361e7d45dc6>  - Plotly, Express, Cufflinks comparison
-   <https://towardsdatascience.com/how-to-write-web-apps-using-simple-python-for-data-scientists-a227a1a01582>  - streamlit as lightweight Dash/Shiny-kind framework
-   <https://towardsdatascience.com/reviewing-python-visualization-packages-fa7fe12e622b>
-   <https://towardsdatascience.com/build-your-own-data-dashboard-93e4848a0dcf>  - With Dash, nice short introduction example
-   <https://medium.com/nautilus-magazine/5-ways-to-lie-with-charts-173cd7fe2dc0>
-   <https://modus.medium.com/how-to-not-suck-at-color-b3980ee8084a>
-   <https://www.freecodecamp.org/news/fundamental-design-principles-for-non-designers-ad34c30caa7>
-   <https://towardsdatascience.com/vis-amz-83dea6fcb059>  - Visualizing 100,000 Products Fast sentence embeddings (fse) for millions of reviews in only a few minutes. :NLP:


<a id="org51e1e2e"></a>

### NLP     :NLP:

1.  Misc

    -   <https://towardsdatascience.com/state-of-the-art-multilingual-lemmatization-f303e8ff1a8>  - State-of-the-art Multilingual Lemmatization
    -   <https://link.medium.com/kQI6IF7p5V>  - “HMTL: Multi-task learning for state of the art NLP” by Elvis
        
        including ELMO etc
    
    -   <https://www.analyticsvidhya.com/blog/2019/03/pretrained-models-get-started-nlp/>
    -   <https://towardsdatascience.com/reliving-avengers-infinity-war-with-spacy-and-natural-language-processing-2abcb48e4ba1>  - Discovering the top nouns, verbs, entities and text similarity
    -   <https://towardsdatascience.com/a-technique-for-building-nlp-classifiers-efficiently-with-transfer-learning-and-weak-supervision-a8e2f21ca9c8>
    -   <https://towardsdatascience.com/fuzzy-matching-at-scale-84f2bfd0c536>  - Use tf-idf on substrings to make very, very fast fuzzy matching - clever trick

2.  Search

    -   <https://towardsdatascience.com/introducing-txtai-an-ai-powered-search-engine-built-on-transformers-37674be252ec>

3.  Summarisation

    -   <https://towardsdatascience.com/automatic-text-summarisation-ccc98d2b323f>  - Condensing with TextRank
        TextRank works similar to PageRank with the idea of:
        -   Sentences instead of Pages
        -   TextSimilarity instead of Links

4.  Chatbots

    -   <https://www.slideshare.net/farizbashirov>  - 8 do&rsquo;s and don&rsquo;t of chatbots
    -   <https://medium.com/huggingface/how-to-build-a-state-of-the-art-conversational-ai-with-transfer-learning-2d818ac26313>

5.  Data Augmentation     :Augmentations:

    -   <https://towardsdatascience.com/these-are-the-easiest-data-augmentation-techniques-in-natural-language-processing-you-can-think-of-88e393fd610>

6.  Tools

    -   <https://towardsdatascience.com/the-best-nlp-tools-of-early-2020-live-demos-b6f507b17b0a>
    -   <http://gltr.io/dist/index.html>  - Giant Language model Test Room: detect whether a text could be real or fake
        
        Read also explanation about usage in <http://gltr.io/>
    
    -   <https://github.com/msg-systems/holmes-extractor>  - information extraction from English and German texts.
    
    In all use cases, the information extraction is based on analysing the semantic relationships expressed by the component parts of each sentence:
    
    -   <https://talktotransformer.com/>  - See how a modern neural network completes your text.
    -   <https://towardsdatascience.com/text-classification-with-state-of-the-art-nlp-library-flair-b541d7add21f>
    
    -   <https://github.com/zalandoresearch/flair/>
    
    -   <https://github.com/pytorch/fairseq>
    -   <https://github.com/jbesomi/texthero> - python toolkit to work with text-based
        dataset quickly and effortlessly. Texthero is very simple to learn and
        designed to be used on top of Pandas.

7.  Embeddings

    -   <https://towardsdatascience.com/document-embedding-techniques-fed3e7a6a25d>  - A review of notable literature on the topic
    -   <https://nlp.stanford.edu/projects/glove/>  Global Vectors for Word Representation
    -   <https://towardsdatascience.com/use-cases-of-googles-universal-sentence-encoder-in-production-dd5aaab4fc15>
    -   <https://towardsdatascience.com/fse-2b1ffa791cf9>  - Sentence Embeddings. Fast, please!

8.  Metrics

    -   <https://towardsdatascience.com/evaluating-text-output-in-nlp-bleu-at-your-own-risk-e8609665a213>
    -   <https://gluebenchmark.com/>  - General Language Understanding Evaluation (GLUE)
        
        nine sentence- or sentence-pair language understanding tasks built on established existing
        datasets and selected to cover a diverse range of dataset sizes, text genres, and degrees of
        difficulty
    
    -   <http://sjmielke.com/comparing-perplexities.htm>
    -   <https://towardsdatascience.com/how-to-find-shortest-dependency-path-with-spacy-and-stanfordnlp-539d45d28239>

9.  Attention / Transformers / &#x2026;

    -   <https://github.com/sannykim/transformers>  - a collection of resources to study Transformers in depth
    -   <https://medium.com/inside-machine-learning/what-is-a-transformer-d07dd1fbec04>
    -   <http://nlp.seas.harvard.edu/2018/04/03/attention.html>  - annotated implementation of a transformer
    -   <http://mostafadehghani.com/2019/05/05/universal-transformers/>
    -   <https://medium.com/tensorflow/lingvo-a-tensorflow-framework-for-sequence-modeling-8b1d6ffba5bb>
    -   <https://slator.com/technology/is-googles-new-lingvo-framework-a-big-deal-for-machine-translation/>

10. BERT

    -   <https://medium.com/synapse-dev/understanding-bert-transformer-attention-isnt-all-you-need-5839ebd396db>
    -   <https://medium.com/@_init_/why-bert-has-3-embedding-layers-and-their-implementation-details-9c261108e28a>
    -   <https://towardsdatascience.com/deconstructing-bert-distilling-6-patterns-from-100-million-parameters-b49113672f77>
    -   <https://medium.com/hiredscore-engineering/introducing-octoml-73bd527491b1>  - makes it easy to use BERT
    -   <https://towardsdatascience.com/xlm-enhancing-bert-for-cross-lingual-language-model-5aeed9e6f14b>
    -   <https://towardsdatascience.com/a-review-of-bert-based-models-4ffdc0f15d58>
    -   <https://towardsdatascience.com/train-and-deploy-mighty-transformer-nlp-models-using-fastbert-and-aws-sagemaker-cc4303c51cf3> :AWS:DevOps:
    -   <https://towardsdatascience.com/bert-for-dummies-step-by-step-tutorial-fb90890ffe03>
    -   <https://medium.com/roblox-tech-blog/how-we-scaled-bert-to-serve-1-billion-daily-requests-on-cpus-d99be090db26>
        Using CPUs for Production Inference obviously
        -   **Thread Tuning:** torch.set<sub>num</sub><sub>threads</sub>(1), so multiple workers in the framework don&rsquo;t fight for different CPU cores
        -   **Smaller Model:** DistilBert
        -   **Smaller Inputs:** Dynamic Shapes, no zero paddings needed if batch size for inference is just 1
        -   **Smaller Weights:** Dynamic Quantization (down to 8bit ints!!)
        -   **Smaller Nr of Requests:** by caching (they got 40% cache hit!)
    -   <https://towardsdatascience.com/fine-tuning-bert-for-text-classification-with-farm-2880665065e2>
    -   <https://towardsdatascience.com/labse-language-agnostic-bert-sentence-embedding-by-google-ai-531f677d775f>
    -   <https://towardsdatascience.com/understanding-bigbird-is-it-another-big-milestone-in-nlp-e7546b2c9643>

11. XLNet

    -   <https://towardsdatascience.com/what-is-xlnet-and-why-it-outperforms-bert-8d8fce710335>
    -   <https://towardsdatascience.com/xlnet-a-clever-language-modeling-solution-ab41e87798b0>
    -   <https://medium.com/dair-ai/xlnet-outperforms-bert-on-several-nlp-tasks-9ec867bb563b>

12. GPT

    -   <https://medium.com/@melaniemitchell.me/can-gpt-3-make-analogies-16436605c446>  - very impressive, it can. Read especially the follow up.


<a id="org95b4494"></a>

### Computer Vision

1.  Misc

    -   <https://medium.com/@CharlesOllion/whats-easy-hard-in-ai-computer-vision-these-days-e7679b9f7db7>
    -   Good overview <https://towardsdatascience.com/deep-learning-for-image-classification-why-its-challenging-where-we-ve-been-and-what-s-next-93b56948fcef>
        
        Good overview
    
    -   Good list of architectures on <https://keras.io/applications> including default image sizes
    -   <https://www.youtube.com/watch?v=fcnjHmBcLNQ>  - Short video showing Style transfer in Videos, super impressive
    -   <https://medium.com/bethgelab/neural-networks-seem-to-follow-a-puzzlingly-simple-strategy-to-classify-images-f4229317261f> - ResNet are not much better:
    
    than looking to tiny patches and sum up sum propabilities
    that&rsquo;s why shuffling pictures is robust for resnet
    but also why they are so sensitive to adversial networks

2.  Tools

    -   <https://medium.com/better-programming/beginners-guide-to-tesseract-ocr-using-python-10ecbb426c3d>  - Complete first tutorial including setting it up
    -   <https://github.com/albu/albumentations>  - Library for fast and convenient image augmentations :Augmentations:
    -   <https://towardsdatascience.com/clean-up-your-own-model-data-without-leaving-jupyter-bdbcc9001734>  - Annotator tool ****Innotator**** for images inside jupyter
    -   <https://github.com/tzutalin/labelImg>  - a graphical image annotation tool which saves in Pascal VOG or YOLO Format
    -   <https://towardsdatascience.com/feature-visualisation-in-pytorch-saliency-maps-a3f99d08f78a>
    -   <https://github.com/idealo/imagededup>  - python package that simplifies the task of finding exact and near duplicates in an image collection.

3.  Architectures

    -   Inception<sub>v4</sub> and predecessors: <https://towardsdatascience.com/review-inception-v4-evolved-from-googlenet-merged-with-resnet-idea-image-classification-5e8c339d18bc>
    -   ResNext: <https://towardsdatascience.com/review-inception-v4-evolved-from-googlenet-merged-with-resnet-idea-image-classification-5e8c339d18bc>
    -   Res2Net: <https://medium.com/@lessw/res2net-new-deep-learning-multi-scale-architecture-for-improved-object-detection-with-existing-de13095c9654>

4.  U-Nets / Colorizing / Super-Resolution

    -   <https://blog.floydhub.com/colorizing-and-restoring-old-images-with-deep-learning/>  - with Self Attention GANs, has a github link included
    -   <https://towardsdatascience.com/u-nets-with-resnet-encoders-and-cross-connections-d8ba94125a2c>
    -   <https://towardsdatascience.com/deep-learning-based-super-resolution-without-using-a-gan-11c9bb5b6cd5>  - Super resolution with just a U-Net (trained from small images starting) and an impressive blog with lots of examples
    -   <https://towardsdatascience.com/image-segmentation-kaggle-experience-9a41cb8924f0> :Kaggle:

5.  Bounding Boxes

    -   <https://towardsdatascience.com/implementation-of-mean-average-precision-map-with-non-maximum-suppression-f9311eb92522>
    -   <https://towardsdatascience.com/review-yolov3-you-only-look-once-object-detection-eab75d7a1ba6>


<a id="orgb129e8e"></a>

### Time Series

-   Forecasting at scale: <https://facebook.github.io/prophet/>
-   <https://towardsdatascience.com/on-the-automation-of-time-series-forecasting-models-technical-and-organizational-considerations-286db3120c8e>
-   <https://towardsdatascience.com/anomaly-detection-time-series-4c661f6f165f> - Detect anomaly in time series with facebook Prophet


<a id="orgcc84de0"></a>

### Graphs

-   <https://towardsdatascience.com/large-scale-graph-mining-with-spark-part-2-2c3d9ed15bb5>
-   <https://towardsdatascience.com/graphframes-in-jupyter-a-practical-guide-9b3b346cebc5>
-   <https://towardsdatascience.com/an-introduction-to-spark-graphframe-with-examples-analyzing-the-wikipedia-link-graph-67e58c20a107>


<a id="org17857b6"></a>

### Semi Supervised Learning

-   <https://medium.com/mlearning-ai/how-i-used-sklearns-labelpropogation-to-carry-out-semi-supervised-training-91401e2734be>
-   <https://towardsdatascience.com/how-to-benefit-from-the-semi-supervised-learning-with-label-spreading-algorithm-2f373ae5de96>
-   <https://scikit-learn.org/stable/modules/generated/sklearn.semi_supervised.LabelPropagation.html>
-   <https://scikit-learn.org/stable/modules/generated/sklearn.semi_supervised.LabelSpreading.html#sklearn.semi_supervised.LabelSpreading>


<a id="orgadf09a0"></a>

### Deployments     :DevOps:

-   <https://medium.com/datadriveninvestor/deploy-your-pytorch-model-to-production-f69460192217> :PyTorch:
-   <https://medium.com/@colinshaw_36798/fully-utilizing-your-deep-learning-gpus-61ee7acd3e57>


<a id="org02ab6c6"></a>

## Data Engineering


<a id="orgeed030c"></a>

### Misc

-   <https://itnext.io/big-data-pipeline-recipe-c416c1782908>  - Complete holistic overview to big data landscape 2020
-   [The Awesome Kafka Resources](https://docs.google.com/spreadsheets/d/1VcIk_enQ5wefkbRWAoSpy3ZZux5-WgSPipqVLuNsjcA/edit#gid=0)
-   <https://medium.com/better-programming/kafka-vs-rabbitmq-why-use-kafka-8401b2863b8b>
    -   **Kafka:** Pull Model (and very well suited for really high throughput situations)
    -   **RabbitMQ:** Push Model, probably a bit easier to work with (following article and &ldquo;Messaging the just works&rdquo; self advertisment of RabbitMQ)
-   <https://www.youtube.com/watch?v=Io1x6mQlh1E>  - Connected Components in MapReduce and Beyond
    Discusses the Alternating Algorithm (LargeStar, SmallStar) to have a fast and local working connection graph algorithm working up to huge data scale
-   <https://towardsdatascience.com/orchestrate-a-data-science-project-in-python-with-prefect-e69c61a49074>  - Interesting (and less complex) alternative to Airflow, as long as it is in Python
-   <https://towardsdatascience.com/designing-your-database-schema-best-practices-31843dc78a8d>  - Star vs Snowflake


<a id="org058c42d"></a>

### Spark

-   <https://towardsdatascience.com/successful-spark-submits-for-python-projects-53012ca7405a>  - complete setup including bundling env and dependencie


<a id="orgd56b7db"></a>

### Data Drift Detection

-   <https://towardsdatascience.com/checking-model-stability-and-population-shift-with-psi-and-csi-6d12af008783>


<a id="org54ab173"></a>

## Math     :Math:

-   <https://de.wikipedia.org/wiki/Braess-Paradoxon>
    zusätzliche Handlungsoption unter der Annahme rationaler Einzelentscheidungen zu einer
    Verschlechterung der Situation für alle führen kann
-   <https://www.cantorsparadise.com/how-to-benefit-from-braesss-paradox-b29b20d76149>
-   <https://towardsdatascience.com/simpsons-paradox-d2f4d8f08d42>
-   <https://towardsdatascience.com/the-inspection-paradox-is-everywhere-2ef1c2e9d709> :Statistical:
-   <https://towardsdatascience.com/a-b-testing-is-there-a-better-way-an-exploration-of-multi-armed-bandits-98ca927b357d>  - Overview of different algorithms for Multi Armed Bandits
-   <https://towardsdatascience.com/rip-correlation-introducing-the-predictive-power-score-3d90808b9598>  - Better way to find correlation instead of correlation matrices
    Main advantage to something like Mutual Information Score is that it can also applied to categorical variables
-   <https://towardsdatascience.com/psmpy-propensity-score-matching-in-python-a3e0cd4d2631>
-   <https://towardsdatascience.com/how-floating-point-numbers-work-1429907b6d1d>
-   <https://towardsdatascience.com/the-lost-boarding-pass-problem-2a17313b2d8a>  - a bit similar to birthday paradox
-   <https://towardsdatascience.com/what-really-is-a-matrix-determinant-89c09884164c>  - the scaling factor of an enclosed area by two vectors after the transformation described by the matrix
-   <https://towardsdatascience.com/how-to-create-slick-math-animations-like-3blue1brown-in-python-457f74701f68>


<a id="orgc31c706"></a>

## Physics

-   <https://www.youtube.com/watch?v=Ps5wovm3OQ4> - Wolfram Physics Harvard Black Hole Initiative: A
    Surprisingly Promising Approach to a Fundamental Theory of Physics

