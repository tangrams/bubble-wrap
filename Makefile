all: dist

dist:
	tangram-bundle bubble-wrap-style.yaml
	mv bubble-wrap-style.zip dist/bubble-wrap-style.zip

	tangram-bundle bubble-wrap-style-more-labels.yaml
	mv bubble-wrap-style-more-labels.zip dist/bubble-wrap-style-more-labels.zip

	tangram-bundle bubble-wrap-style-no-labels.yaml
	mv bubble-wrap-style-no-labels.zip dist/bubble-wrap-style-no-labels.zip

clean:
	rm -rf dist
	mkdir dist

tag:
	git tag  -m 'See CHANGELOG for details.' -a v`cat VERSION`
