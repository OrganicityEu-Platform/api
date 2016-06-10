

module.exports = {
  handlebars: {
    partials: require('path').join(__dirname, 'partials'),
    templates: require('path').join(__dirname, 'templates/apis'),
    helpers: {
      eachProperty: function(context, options) {
        var ret = "";
        for(var prop in context)
        {
          if (typeof context[prop] == 'object') {
            for(var subprop in context[prop]) {
              ret = ret + options.fn({
                property: prop + '.' + subprop,
                value: context[prop][subprop]
              });
            }
          }
          else {
            ret = ret + options.fn({property:prop,value:context[prop]});
          }
        }
        return ret;
      }
    }
  }
};
