# # Message List Manager
#
# Manager are the most crucial part of our application and do most of the heavy pulling for us. Here we have two manager, one for pulling out data from the database and other for listening to events and acting on them.
#
# The first helper uses MongoDB's protocal to find all the data from the `Messages` collection and store it in the msgs variable. The other helper is used for verification to check if a particular message is added by the logged in user. This is used to check and add the delete button.
#
# The event listener in our template manager is used to listen to events. Here it is being used to delete the message. It grabs the `id` of the message and passes it to `Message.remove(id)` on clicking the button with `.delete` class.

Template.messageList.helpers({
    msgs: function() {
        return Messages.find();
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
