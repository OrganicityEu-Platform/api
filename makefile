

apiFiles=$(shell find raw/ -type f)
htmlFiles=$(subst raw/,static/,$(apiFiles:.yaml=.html))



doc: static/oc.css static/index.html $(htmlFiles)




static/%.html: raw/%.yaml $(shell find templates) $(shell find partials)
	./node_modules/.bin/swagger-tools validate $<
	./node_modules/.bin/js-yaml $< > .tmp.json
	./node_modules/.bin/bootprint swagger -f bootprint.cfg.js .tmp.json static
	mv static/index.html $@
	rm .tmp.json


static/oc.css: assets/less/oc.less $(shell find assets/less)
	./node_modules/.bin/lessc --source-map=$<.css.map $< $@

static/index.html: $(shell find assets/html)
	cat assets/html/index-header.html partials/base/header.hbs assets/html/index-body.html partials/base/footer.hbs assets/html/index-footer.html > static/index.html

clean:
	-rm static/*.html
	-rm static/oc.css
	-rm static/main.css*

