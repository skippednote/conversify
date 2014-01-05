Handlebars.registerHelper('format-date', function(date) {
      return moment(date).fromNow();
});

