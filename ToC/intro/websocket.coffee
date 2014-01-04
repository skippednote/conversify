# # Websocket
# Websocket is a protocol providing full-duplex communications channels over a single tcp connection. the websocket protocol was standardized by the ietf as rfc 6455 in 2011, and the websocket api in web idl is being standardized by the w3c.
#
# Websocket is designed to be implemented in web browsers and web servers, but it can be used by any client or server application. the websocket protocol is an independent tcp-based protocol. its only relationship to http is that its handshake is interpreted by http servers as an upgrade request. the websocket protocol makes possible more interaction between a browser and a web site, facilitating live content and the creation of real-time games. this is made possible by providing a standardized way for the server to send content to the browser without being solicited by the client, and allowing for messages to be passed back and forth while keeping the connection open. in this way a two-way (bi-directional) ongoing conversation can take place between a browser and the server. a similar effect has been achieved in non-standardized ways using stop-gap technologies such as comet.
#
# In addition, the communications are done over tcp port number 80, which is of benefit for those environments which block non-web internet connections using a firewall. websocket protocol is currently supported in several browsers including google chrome, internet explorer, firefox, safari and opera. websocket also requires web applications on the server to support it.
#
# Unlike http, websocket provides for full-duplex communication. additionally, websocket enables streams of messages on top of tcp. tcp alone deals with streams of bytes with no inherent concept of a message. before websocket, port 80 full-duplex communication was attainable using comet channels; however, comet implementation is nontrivial, and due to the tcp handshake and http header overhead, it is inefficient for small messages. websocket protocol aims to solve these problems without compromising security assumptions of the web.
#
# A secure version of the websocket protocol is implemented in firefox 6, safari 6, google chrome 14, opera 12.10 and internet explorer 10.
#
# An older, less secure version of the protocol was implemented in opera 11 and safari 5, as well as the mobile version of safari in ios 4.2. also, the blackberry browser in os7 implements websocket. although there are no known exploits, it was disabled in firefox 4 and 5, and opera 11.
#
# Websocket protocol client implementations try to detect if the user agent is configured to use a proxy when connecting to destination host and port and, if it is, uses http connect method to set up a persistent tunnel.
#
# While the websocket protocol itself is unaware of proxy servers and firewalls, it features an http-compatible handshake so that http servers can share their default http and https ports (80 and 443) with a websocket gateway or server. the websocket protocol defines a ws:// and wss:// prefix to indicate a websocket and a websocket secure connection, respectively. both schemes use an http upgrade mechanism to upgrade to the websocket protocol. some proxy servers are transparent and work fine with websocket; others will prevent websocket from working correctly, causing the connection to fail. in some cases, additional proxy server configuration may be required, and certain proxy servers may need to be upgraded to support websocket.
#
# If unencrypted websocket traffic flows through an explicit or a transparent proxy server on its way to the websocket server, then, whether or not the proxy server behaves as it should, the connection is almost certainly bound to fail today (as websocket become more mainstream, proxy servers may become websocket aware). therefore, unencrypted websocket connections should be used only in the simplest topologies.
#
# If an encrypted websocket connection is used, then the use of transport layer security (tls) in the websocket secure connection ensures that an http connect command is issued when the browser is configured to use an explicit proxy server. this sets up a tunnel, which provides low-level end-to-end tcp communication through the http proxy, between the websocket secure client and the websocket server. in the case of transparent proxy servers, the browser is unaware of the proxy server, so no http connect is sent. however, since the wire traffic is encrypted, intermediate transparent proxy servers may simply allow the encrypted traffic through, so there is a much better chance that the websocket connection will succeed if websocket secure is used. using encryption is not free of resource cost, but often provides the highest success rate.
#
# A mid-2010 draft (version hixie-76) broke compatibility with reverse-proxies and gateways by including 8 bytes of key data after the headers, but not advertising that data in a content-length: 8 header. this data was not forwarded by all intermediates, which could lead to protocol failure. more recent drafts (e.g., hybi-09) put the key data in a sec-websocket-key header, solving this problem.
#
# The websocket protocol specification defines two new uri schemes, ws: and wss:,] for unencrypted and encrypted connections respectively. apart from the scheme name, the rest of the uri components are defined to use uri generic syntax.
#
# ###Sock.js
# Sock.js is a browser javascript library that provides a websocket-like object. sock.js gives us a coherent, cross-browser, javascript api which creates a low latency, full duplex, cross-domain communication channel between the browser and the web server.
#
# Under the hood sock.js tries to use native websockets first. if that fails it can use a variety of browser-specific transport protocols and presents them through websocket-like abstractions.
#
# Sock.js is intended to work for all modern browsers and in environments which don't support websocket protocol, for example behind restrictive corporate proxies.
#
# Sock.js-client does require a server counterpart. sock.js-node is a sock.js server for node.js.
#
# ###Philosophy:
#
#- The api should follow html5 websockets api as closely as possible.
#- All the transports must support cross domain connections out of the box. it's possible and recommended to host sock.js server on different server than your main web site.
#- There is a support for at least one streaming protocol for every major browser.
#- Streaming transports should work cross-domain and should support cookies (for cookie-based sticky sessions).
#- Polling transports are be used as a fallback for old browsers and hosts behind restrictive proxies.
#- Connection establishment should be fast and lightweight.
#- No flash inside (no need to open port 843 - which doesn't work through proxies, no need to host '- in.xml', no need to wait for 3 seconds in order to detect problems)
#
#
# Connecting to sock.js without the client
# although the main point of sock.js it to enable browser-to-server connectivity, it is possible to connect to sock.js from an external application. any sock.js server complying with 0.3 protocol does support a raw websocket url. the raw websocket url for the test server looks like:
#
#```
#ws://localhost:8081/echo/websocket
#```
#
# We can connect any websocket rfc 6455 compliant websocket client to this url. this can be a command line client, external application, third party code or even a browser.
