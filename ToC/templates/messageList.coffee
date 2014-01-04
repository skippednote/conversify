# # Message List Template
#
# This template is used to iterate over all messages from the `Messages` collection and pull out various fields from it. The `{{each}}` iterates over the `msgs` data source which is the JSON payload we have pulled out from the collection. This gives us the following fields stored in the db:
# - Message
# - Date
# - Author
# - Message ID
# - Authors Avatar
#
# We use handlebars partials to render these variables to the user like `{{message}}`, `{{author}}`, `{{avatar}}`.
#
# If a particular message is added by the user he will get a button to delete it next to the message. This functionality is attained by wrapping the button within the `{{#if myMsgs}}` condition, it check whether the ID of user and post match.


<template name='messageList'>
   <h1>Chat</h1>
    <table class="table table-striped">
    {{#each msgs}}
        <tr>
            <td class="author-message">{{{message}}}
                <small>( {{format-date date}} )</small>
                {{#if myMsgs}}
                    <button class="btn btn-danger delete">Delete</delete>
                {{/if}}
            </td>
            - <td class="author-meta"><img src="{{avatar}}" alt="{{author}}"> {{author}} </td>
        </tr>
    {{/each}}
    </table>
</template>
