# # New Message
#
# The new message template is used to render the form for sending a message. Here we have a simple html form without any handlebars template. We will be using the template manager to pull the code out of the input box, save it to the DB and render it in the message list section.

<template name='newMessage'>
    <form class="form-horizontal">
            <input type="text" name="message" placeholder="Enter your messages here">
            <input type="Submit" value="Send message" class="btn">
    </form>
</template>
