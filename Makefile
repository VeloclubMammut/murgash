all:
	docker run --rm -v $(CURDIR):/site -w /site -p 1313:1313 hugomods/hugo:exts server --bind=0.0.0.0  -w --logLevel debug -e development -b http://localhost:1313 -DEF | grep --color -iE '(WARN|ERR)'

