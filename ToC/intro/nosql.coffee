# # NoSQL
#A NoSQL database provides a mechanism for storage and retrieval of data that is modeled in means other than the tabular relations used in relational databases. Motivations for this approach include simplicity of design, horizontal scaling and finer control over availability. NoSQL databases are often highly optimized key–value stores intended primarily for simple retrieval and appending operations, whereas an RDBMS is intended as a general purpose data store. There will thus be some operations where NoSQL is faster and some where an RDBMS is faster. NoSQL databases are finding significant and growing industry use in big data and real-time web applications. NoSQL systems are also referred to as "Not only SQL" to emphasize that they may in fact allow SQL-like query languages to be used.
#
#### MongoDB
#
#MongoDB (from "humongous") is an open-source document database that provides high performance, high availability, and automatic scaling, and is the leading NoSQL database, written in C++.
#
#Document Database
#A record in MongoDB is a document, which is a data structure composed of field and value pairs. MongoDB documents are similar to JSON objects. The values of fields may include other documents, arrays, and arrays of documents.  A MongoDB document.
# The advantages of using documents are:
# - Documents (i.e. objects) correspond to native data types in many programming language.
# - Embedded documents and arrays reduce need for expensive joins.
# - Dynamic schema supports fluent polymorphism.
# Key Features:
# High Performance
# MongoDB provides high performance data persistence. In particular:
# - Support for embedded data models reduces I/O activity on database system.
# - Indexes support faster queries and can include keys from embedded documents and arrays.
# High Availability
# To provide high availability, MongoDB’s replication facility, called replica sets, provide:
# - automatic failover.
# - data redundancy.
# a replica set is a group of mongodb servers that maintain the same data set, providing redundancy and increasing data availability.
# automatic scaling
# mongodb provides horizontal scalability as part of its core functionality.
# - automatic sharing distributes data across a cluster of machines.
# - replica sets can provide eventually-consistent reads for low-latency high throughput deployments.
#
