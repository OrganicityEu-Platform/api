
index.html: questionnaire.yml
	../node_modules/.bin/js-yaml questionnaire.yml > tmp.json
	../node_modules/.bin/bootprint swagger -f bootprint.cfg.js tmp.json questionnaire
	../node_modules/.bin/html-inline questionnaire/index.html -o questionnaire.html

clean:
	rm -rf questionnaire
	rm -r tmp.json
