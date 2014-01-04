# # Application Template
#
# The Appplication template is the base of our application, it gets rendered on every page and has template partials where other templates get rendered.
# We start with the `head` tags instead of `html` as Meteor will automatically add in the relavant HTML5 `doctype` and `html` tags. If other templates have the `head` tags, those will be concatenated into one. We have UTF-8 tag for correct character encoding and viewport meta tag for scaling the content as per the viewport of the device it's getting rendered on.
#
# Next we have the menubar for our application, it has the link to homepage with name of the application, Conversify as the link to homepage. We have added some classes from Bootstrap to add a bit of styling to the application. On the right end we have option to Sign-in to the Application, which is necessary as one can't use it without authentication. For authentication of users we are using Twitter OAuth. On signing in well will get an option to Sign out. We are using `{{loginButton}}` handlebars partial to replace it with the Meteor authentication interface.
#
# In the section below menubar we are rendering two more partials, one for rendering the messages list and other for the form for sending messages. These partials are wrapped in the `{{#if currentUser}}` handlebars block, this checks whether the user if authorized. If the user if signed in then it will show the messages list and message form to add new  messages else we will get a notification prompting us to login.


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
    <div class="navbar">
        <div class="navbar-inner">
            <a href="/" class="brand">Conversify</a>
              <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </a>
            <ul class="nav pull-right">
                <li>
                    {{loginButtons}}
                </li>
            </ul>
        </div>
    </div>
    <div class='row fluid'>
        <div class="container">
            {{#if currentUser}}
                {{> messageList}}
                {{> newMessage}}
            {{else}}
                <div class="well">
                    <h3 class=text-center>Sign in to start chatting</h3>
                </div>
            {{/if}}
        </div>
    </div>
</body>
