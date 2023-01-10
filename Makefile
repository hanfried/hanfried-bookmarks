BOOKMARKS = bookmarks.org papers.org books.org
EXPORTS = bookmarks.md papers.md books.md
TODAY := $(shell date +%F)

all:
	@echo "Check emacs daemon is running and if not, start it"
	(ps afux | grep -P 'emacs.*--(fg-)?daemon' | grep -v grep) || emacs --daemon

	@echo "Bookmarks org files $(BOOKMARKS)"
	@for t in $(BOOKMARKS); do echo "Copy if updated", $$t; cp -uv ~/org/$$t .; done

	@echo "Call emacsclient to export bookmarks.org to markdown and copy it as README.md"
	@for t in $(BOOKMARKS); do echo "Export to Markdown", $$t; emacsclient -e "(progn (find-file \"~/org/$$t\") (org-md-export-to-markdown))"; done

	@echo "Check links in bookmarks and commit to github"
	@cp -uv ~/org/bookmarks.md README.md
	@for t in $(EXPORTS); do cp -uv ~/org/$$t .; done
	cp pre-commit .git/hooks/pre-commit
	chmod a+x .git/hooks/pre-commit
	git commit -a -m "Bookmarks from ${TODAY}"
	git push
