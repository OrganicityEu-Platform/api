



full: static/OrganiCityScenarios.html static/oc.css



static/OrganiCityScenarios.html: raw/OrganiCityScenarios.yaml $(shell find templates) $(shell find partials)
	./node_modules/.bin/swagger-tools validate $<
	./node_modules/.bin/js-yaml $< > .tmp.json
	./node_modules/.bin/bootprint swagger -f bootprint.cfg.js .tmp.json static
	mv static/index.html $@
	rm .tmp.json


static/oc.css: assets/less/oc.less $(shell find assets/less)
	./node_modules/.bin/lessc --source-map=$<.css.map $< $@



clean:
	-rm static/*.html
	-rm static/oc.css
	-rm static/main.css*
	-rm .tmp.json
