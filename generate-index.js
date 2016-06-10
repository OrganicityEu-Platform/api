require('bootprint')
  .load(require('bootprint-base'))
  .merge({
    handlebars: {
      templates: 'templates/index',
      partials: 'partials',
      helpers: {
        linkTo: function(context, options) {
          return context.replace('.yaml', '.html');
        },
        inThrees: function(context, options) {
          // wow, this hack is dirty. sheesh.
          var buff = {};
          var i = 0;

          var r = "";

          for (var j in context) {
            buff[j] = context[j];
            i++;

            if (i >= 3) {
              r = r + options.fn(buff);
              buff = {};
              i = 0;
            }
          }

          if ( i > 0) {
            r = r + options.fn(buff);
          }

          return r;
        }
      }
    }
  })
  .build('apis.json', 'static')
  .generate()
  .done(console.log)

