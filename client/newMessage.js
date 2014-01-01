Template.newMessage.events({
    'submit form': function(e) {
        e.preventDefault();
        var user = Meteor.user();
        var author = user.profile.name;
        var avatar = user.services.twitter.profile_image_url;

        var messageData = {
            message: $(e.target).find('[name=message]').val(),
            author: author,
            avatar: avatar
        };

        Messages.insert(messageData);
        $(e.target).find('[name=message]').val('');
    }
});