# # Node.js
#
# Node.js as “a platform built on Chrome's JavaScript runtime for easily building fast, scalable network applications. Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient, perfect for data-intensive real-time applications that run across distributed devices”.
#`Current Version: v0.10.24`
#
#Since the release of Google Chrome in late 2008, JavaScript performance has been improving at an incredibly fast rate due to heavy competition between browser vendors (i.e. Mozilla, Microsoft, Apple, Opera, and Google). The performance of modern JavaScript virtual machines is literally changing the type of applications we can build on the web. A compelling example of this is jslinux [a PC emulator running in JavaScript where you can load a Linux kernel, interact with the terminal session, and compile a C program all in your browser].
#
#Node.js specifically uses V8, the virtual machine that powers Google Chrome, for server-side programming. V8 gives a huge boost in performance because it cuts out the middleman, preferring straight compilation into native machine code over executing bytecode or using an interpreter. Because Node.js uses JavaScript on the server there are other benefits:
#
#- Developers can write web applications in one language, which helps by reducing the "context" switch between client and server development, and allowing for code sharing between client and server (e.g. reusing the same code for form validation or game logic).
#
#- JSON is a very popular data interchange format today and it is native JavaScript.
#
#- JavaScript is the language used in various NoSQL databases (e.g. CouchDB /MongoDB) so interfacing with them is a natural fit (e.g. MongoDB shell and query language is JS, CouchDB map/reduce is JS).
#
#- JavaScript is a compilation target and there are a number of languages that compile to it already.
#
#- Node.js uses one virtual machine (V8) that keeps up with the ECMAScript standard. In other words, we don’t have to wait for all the browsers to catch up to use new JavaScript language features in Node.js
#

#### Asynchronous and Evented:
#
#Node.js provides an event-driven and asynchronous platform for server-side JavaScript. It brings JavaScript to the server much in the same way a browser brings JavaScript to the client. It is important to understand how the browser works in order to understand how Node works. Both are event-driven (i.e. use an event loop) and non-blocking when handling I/O (i.e. use asynchronous I/O). Let’s look an example to explain what that means.
#
#Take this common snippet of jQuery performing an Ajax request using XHR   [XML Http Request]
#
#
#``` javascript
#$result = mysql_query('SELECT * FROM myTable');
#print_r($result);
#```
#
#
#We are doing some I/O and the process is blocked from continuing until all the data has come back. For many applications this model is fine and is easy to follow. What may not be apparent is that the process has state/memory and is essentially doing "nothing" until the I/O is completed. That could take 10ms to minutes depending on the latency of the I/O operation. Latency can be unexpected as well, for example:
#
#- The disk is performing a maintainence operation, pausing reads/writes
#- A database query is slower because of increased load
#- Pulling a resource from "sitexyz.com" is sluggish today for some reason
#
#If a program blocks on I/O, what does the server do when there are more requests to handle? Typically this means that we use a multi-threaded approach. A common implementation is to use one thread per connection and setup a thread pool for those connections. You can think of threads as computational workspaces in which the processor works on one task. In many cases, a thread is contained inside a process and maintains its own working memory. Each thread handles one or more server connections. While this sounds like a natural way to delegate server labor, to developers who've been doing this a long time, managing threads within an application can be complex. Also, when a large number of threads is needed to handle many concurrent server connections, threading can tax operating system resources. Threads require CPU to perform context-switches as well as additional RAM.
#
#To illustrate this, let's look at a benchmark (shown in Figure) comparing NGINX and Apache. NGINX is an HTTP server like Apache but instead of using the multi-threaded approach with blocking I/O, it uses an event loop with asynchronous I/O (like the browser and Node.js). Because of these design choices, NGINX is often able to handle more requests and connected clients, making it a more responsive solution.
#
#
#In Node.js, I/O is almost always performed outside of the main event loop allowing the server to stay efficient and responsive like NGINX. This makes it much harder for a process to become I/O bound because I/O latency isn’t going to crash your server or use the resources it would if you were blocking. It allows the server to be lightweight on what are typically the slowest operations a server performs.
#
#This mix of an event-driven and asynchronous model and the widely accessible JavaScript language helps open up a exciting world of data-intensive real-time applications
#
#
