# # New Message Helper
#
# We are using New Message template helper to add new items to our database. It is bound to the New Message template and grabs the data from there.
# When we enter our message in the input field and click the button, the new message helper grabs will create a object hash `messageData` and use key:value properties of the object to store various fields of the message. To grab the message body we are using jQuery, a DOM manipulation library that comes bundled with Meteor.
#
# We have the following field:
# - Message:  to get the message to be sent
# - author: to get the author who post the message
# - avatar: to get the image of author from twitter
#
# The message are wrapped inside `Emoji.conver()` function, this will find if there is any emoji code in our message and if there is, it will parse it and render it to the user.
#
# We use Mongo's `Messages.insert()` API to add content to the database. Here we will pass the `messsageData` object hash to it. Once the data is added to the database we will set the value of the input field to empty.


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
