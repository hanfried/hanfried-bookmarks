BOOKMARKS = bookmarks.org papers.org
TODAY := $(shell date +%F)

all:
	@echo "Bookmarks org files $(BOOKMARKS)"
	for t in $(BOOKMARKS); do cp ~/org/$$t .; done

	@echo "Check emacs daemon is running and if not, start it"
	(ps afux | grep 'emacs.*--daemon' | grep -v grep) || emacs --daemon

	@echo "Call emacsclient to export bookmarks.org to markdown and copy it as README.md"
	emacsclient -e '(progn (find-file "~/org/bookmarks.org") (org-md-export-to-markdown))'

	@echo "Check links in bookmarks and commit to github"
	cp ~/org/bookmarks.md README.md
	cp pre-commit .git/hooks/pre-commit
	chmod a+x .git/hooks/pre-commit
	git commit -a -m "Bookmarks from ${TODAY}"
	git push
