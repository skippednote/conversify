Template.messageList.helpers({
    msgs: function() {
        return Messages.find({}, {sort: {date: -1}});
    },

    myMsgs: function() {
        return this.owner == Meteor.userId()
    }
});


Template.messageList.events({
    'click .delete': function(e) {
        e.preventDefault();

        var id = this._id;
        console.log(id);
        Messages.remove(id);
    }
});
