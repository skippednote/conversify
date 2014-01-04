Meteor.publish('Messages', function() {
      return Messages.find();
});
