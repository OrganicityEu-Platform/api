



full: static/questionnaire.html static/oc.css



static/questionnaire.html: raw/questionnaire.yml $(shell find templates) $(shell find partials)
	./node_modules/.bin/js-yaml $< > .tmp.json
	./node_modules/.bin/bootprint swagger -f bootprint.cfg.js .tmp.json static
	mv static/index.html $@
	rm .tmp.json


static/oc.css: assets/less/oc.less $(shell find assets/less)
	./node_modules/.bin/lessc --source-map=$<.css.map $< $@



# index.html: questionnaire.yml
# 	../node_modules/.bin/js-yaml questionnaire.yml > tmp.json
# 	../node_modules/.bin/bootprint swagger -f bootprint.cfg.js tmp.json static


clean:
	-rm static/*.html
	-rm static/oc.css
	-rm .tmp.json

