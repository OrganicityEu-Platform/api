

apiFiles=$(shell find raw/ -type f)
htmlFiles=$(subst raw/,static/,$(apiFiles:.yaml=.html))

apiPartials=$(shell find partials/base) $(shell find partials/json-schema)   \
            $(shell find partials/swagger) $(shell find templates/apis)
indexPartials=$(shell find partials/index) $(shell find templates/index)



doc: static/oc.css $(htmlFiles) static/index.html




static/%.html: raw/%.yaml $(shell find templates) $(apiPartials)
	./node_modules/.bin/swagger-tools validate $<
	./node_modules/.bin/js-yaml $< > .tmp.json
	./node_modules/.bin/bootprint swagger -f bootprint.cfg.js .tmp.json static
	mv static/index.html $@
	rm .tmp.json


static/oc.css: assets/less/oc.less $(shell find assets/less)
	./node_modules/.bin/lessc --source-map=$<.css.map $< $@

static/index.html: apis.json $(indexPartials) static/oc.css generate-index.js
	node generate-index.js

clean:
	-rm static/*.html
	-rm static/oc.css
	-rm static/main.css*

