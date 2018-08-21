all:
	docker run --rm -ti -v $(CURDIR):/site -w /site -p 1313:1313 philipbalinov/hugo-docker server --bind=0.0.0.0 -t dimension  -w -v --verboseLog --debug --log  -b http://localhost:1313 -DEF | grep --color -iE '(WARN|ERR)'

