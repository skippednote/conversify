# # Collections
#
# Collections are similar to Tables in relational databases. We use these collection to store data. In our application we are storing data in the `Messages` collection. The data is stored in JavaScript Object Notion format, JSON.
#
#Here we are using the constructor pattern to create a new instance of Mongo collection using Meteor wrapper and assigning to `Messages` varible which we use in our template helpers to pull out the data.


Messages = new Meteor.Collection('messages');
