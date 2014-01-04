Messages = new Meteor.Collection('messages');


Messages.allow({
  insert: function (userId, doc) {
    return !! userId;
  },

  remove: function (userId, doc) {
    return !! userId;
  }
});
