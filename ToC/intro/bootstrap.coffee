# # Bootstrap
# Bootstrap is a free collection of tools for creating websites and web applications. it contains html and css-based design templates for typography, forms, buttons, navigation and other interface components, as well as optional javascript extensions.
#
# It is the most popular project on github and has been used by nasa and msnbc among others.
#
# ###origin
#
# Bootstrap was developed by mark otto and jacob thornton at twitter as a framework to encourage consistency across internal tools. before bootstrap, various libraries were used for interface development, which led to inconsistencies and a high maintenance burden. according to twitter developer mark otto, in the face of those challenges:
#
# "...[a] super small group of developers and i got together to design and build a new internal tool and saw an opportunity to do something more. through that process, we saw ourselves build something much more substantial than another internal tool. months later, we ended up with an early version of bootstrap as a way to document and share common design patterns and assets within the company."
#
# The first deployment under real conditions happened during twitter's first hackweek." mark otto showed some colleagues how to accelerate their project's development with the help of the toolkit. as a result, dozens of teams have moved to the framework.
# In august, 2011 twitter released bootstrap as open source. in february 2012, it was the most popular github development project.
#
# ###features
#
# Bootstrap has relatively incomplete support for html5 and css3, but it is compatible with all major browsers. basic information of compatibility of websites or applications is available for all devices and browsers. there is a concept of partial compatibility that makes the basic information of a website available for all devices and browsers. for example, the properties introduced in css3 for rounded corners, gradients and shadows are used by bootstrap despite lack of support by older web browsers. these extend the functionality of the toolkit, but are not required for its use.
#
# Since version 2.0 it also supports responsive design. this means the layout of web pages adjusts dynamically, taking into account the characteristics of the device used (pc, tablet, mobile phone).
#
#>   Bootstrap is open source and available on github. developers are encouraged to participate in the project and make their own contributions to the platform.
#
# Recently, community members have translated bootstrap's documentation into various languages, including chinese, spanish and russian.
#
# ###structure and function
#
# bootstrap is modular and consists essentially of a series of less stylesheets that implement the various components of the toolkit. a stylesheet called bootstrap.less includes the components stylesheets. developers can adapt the bootstrap file itself, selecting the components they wish to use in their project.
#
# adjustments are possible to a limited extent through a central configuration stylesheet. more profound changes are possible by the less declarations.
#
# the use of less stylesheet language allows the use of variables, functions and operators, nested selectors, as well as so-called mixins.
#
# since version 2.0, the configuration of bootstrap also has a special "customize" option in the documentation. moreover, the developer chooses on a form the desired components and adjusts, if necessary, the values of various options to their needs. the subsequently generated package already includes the pre-built css style sheet.
#
# grid system and responsive design
# bootstrap comes standard with a 940 pixel wide, grid layout. alternatively, the developer can use a variable-width layout. for both cases, the toolkit has four variations to make use of different resolutions and types of devices: mobile phones, portrait and landscape, tablets and pcs with low and high resolution. each variation adjusts the width of the columns.
#
# understanding the css stylesheet
# bootstrap provides a set of stylesheets that provide basic style definitions for all key html components. these provide a uniform, modern appearance for formatting text, tables and form elements.
#
# re-usable components
# in addition to the regular html elements, bootstrap contains other commonly used interface elements. these include buttons with advanced features (e.g. grouping of buttons or buttons with drop-down option, make and navigation lists, horizontal and vertical tabs, navigation, breadcrumb navigation, pagination, etc.), labels, advanced typographic capabilities, thumbnails, warning messages and a progress bar.
#
# javascript components
# bootstrap comes with several javascript components in the form of jquery plugins. they provide additional user interface elements such as dialog boxes, tooltips, and carousels. they also extend the functionality of some existing interface elements, including for example an auto-complete function for input fields. in version 2.0, the following javascript plugins are supported: modal, dropdown, scrollspy, tab, tooltip, popover, alert, button, collapse, carousel and typeahead.
#
# an implementation of twitter bootstrap using the dojo toolkit is also available. it is called dojo bootstrap and is a port of the twitter bootstrap plugins. it uses 100% dojo code and has support for amd (asynchronous module definition).
#
# likewise you can also find bootstrap controls for angularjs called ui bootstrap. this is also a port that reuses the bootstrap markup.
#
# use
# to use bootstrap in an html page, the developer downloads the bootstrap css stylesheet and includes a link in the html file.
#
# A bootstrap-designed document shown in mozilla firefox 10
# (the developer can also compile css file from the downloaded less stylesheets, with a special compiler.)
#
# If the developer wants to use the javascript components, they must be referenced along with the jquery library in the html document.
#
# The following example illustrates how this works. the html code defines a simple search form and a list of results in tabular form. the page consists of html 5 elements and css information according to the bootstrap documentation. the figure shows the representation of the document in mozilla firefox 10.
#
#
#```
# <!doctype html>
# <html>
#   <head>
#     <title>example of twitter bootstrap</title>
#     <!-- include the bootstrap stylesheets -->
#     <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
#   </head>
# <body>
# ……
# </body>
# </html>
#```
#
