Template.newMessage.events({
    'submit form': function(e) {
        e.preventDefault();
        var user = Meteor.user();
        var id = user._id;
        var author = user.profile.name;
        var avatar = user.services.twitter.profile_image_url;

        var messageData = {
            message: Emoji.convert($(e.target).find('[name=message]').val()),
            author: author,
            avatar: avatar,
            owner: id,
            date: new Date()
        };

        Messages.insert(messageData);
        $(e.target).find('[name=message]').val('');
    }
});
