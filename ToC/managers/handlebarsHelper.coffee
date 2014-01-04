# # Handlebars Helper
#
# This small snippet is used to convert the ISO formated date and time to a human readble format. We are using Moment.js a library for parsing time into various different format.
#
# Here is the message was added two minutes ago the timestamp would normally show
#  ` Sat Jan 04 2014 20:17:23 GMT+0530 (IST) `
# but on parsing using the handlebars helper we will get
#   ` two minutes ago `
#

Handlebars.registerHelper('format-date', function(date) {
          return moment(date).fromNow();
});
