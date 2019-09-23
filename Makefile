BOOKMARKS = bookmarks.org papers.org
TODAY := $(shell date +%F)

all:
	@echo "Bookmarks org files $(BOOKMARKS)"
	for t in $(BOOKMARKS); do cp ~/org/$$t .; done

	@echo "Call emacsclient to export bookmarks.org to markdown and copy it as README.md"
	emacsclient -e '(progn (find-file "~/org/bookmarks.org") (org-md-export-to-markdown))'
	cp ~/org/bookmarks.md README.md
	git commit -a -m "Bookmarks from ${TODAY}"
