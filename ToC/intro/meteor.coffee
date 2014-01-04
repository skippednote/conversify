# # Meteor.js
#Meteor is an open-source JavaScript web application framework, that make building web apps easier, simpler, and faster. It was first introduced in December 2011 under the name Skybreak. At its core is the Distributed Data Protocol. Its release was the largest in Hacker-News history. Among open source projects.
#
#Not only is Meteor entirely real-time (meaning any change to your database is automatically reflected live in the browser), but the fact that it uses JavaScript on both the client and server means that we don't have to juggle with multiple languages and environments anymore.
#
##### Features of Meteor.js:
#- Pure JavaScript
#We can write our entire app in pure JavaScript. All the same APIs are available on the client and the server — including database APIs! — so the same code can easily run in either environment.
#
#- Live page updates.
#We just write our templates & they automatically update when data in the database changes. No more boilerplate redraw code needs to be written. It also supports any templating language.
#
#- Clean, powerful data synchronization.
#We can write our client code as if it were running on the server and had direct access to the database. No more loading data from REST endpoints needs to be done.
#
#- Latency compensation.
#When a user makes a change, their screen updates immediately — no waiting for the server. If the server rejects their request or executes it differently, the client is patched up with what actually happened.
#
#- Hot Code Pushes.
#We can update our app while users are connected without disturbing them. When we push a new version, the new code is seamlessly injected into each browser frame in which the app is open.
#
#- Sensitive code runs in a privileged environment.
#We can write all of your code in JavaScript (if we want.) The user interface runs in our browser. The sensitive functions run in a privileged server environment.
#
#- Fully self-contained application bundles.
#We use only one command to compile our entire application into a tarball. We can unpack it anywhere and run one command, and our app is working. We're never locked into a particular hosting provider; we have all the code for the platform.
#
#- Interoperability.
#We can connect anything to Meteor, from native mobile apps to legacy databases to Arduinos. We just need to implement the simple DDP protocol.
#
#- Smart Packages.
#Meteor's Smart Packages are actually little programs that can inject code into the client or the server, or even hook into the bundler to preprocess your source. Great care has been taken to give the core Meteor packages the minimal set of dependencies, so we can use our favorite templating, testing, or DOM manipulation frameworks.
#
### DDP [Distributed Data Protocol]
#
#DDP is a standard way to solve the biggest problem facing client-side JavaScript developers: querying a server-side database, sending the results down to the client, and then pushing changes to the client whenever anything changes in the database.
#
#On the server, we define realtime queries using Meteor.publish. We can pass an arbitrary JavaScript function to Meteor.publish, so we can publish data from any source: our database, IMAP, or the forklifts in our warehouse.
#
#On the client, we call Meteor.subscribe to connect to a publication endpoint, receive the data, and listen for updates. The data is inserted directly into Meteor's client-side cache, so we can bind our HTML templates to it and they'll update automatically.
#
#Meteor's DDP implementation handles the rest. It intelligently polls our database to pick up changes and push them down to the client. And it can simulate our model code on the client, so our users see their screens update immediately without waiting for the network.
#
#DDP is a very simple protocol. It's just a codification of what we would inevitably write ourselves if we built this by hand. Because it's so simple, it's also general. DDP can work with any database, framework, or programming language, and it can work on servers, clients, and mobile devices. In fact, we can call Meteor.connect to connect to any DDP server such as a Meteor app written by someone else! , and make real-time subscriptions to any data it is publishing.
#
#Along with DDP, top-requested feature has been added: “server-side methods”. Clients can call arbitrary JavaScript functions that we define on the server. Meteor uses reconnection and a replay cache to ensure that methods execute exactly once. (Never twice by accident, like in our hand-written XHR code.)
