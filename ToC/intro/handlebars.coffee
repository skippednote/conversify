# #Handlebars.js
#
# Handlebars.js is an extension to the mustache templating language created by Chris Wanstrath. Handlebars.js and Mustache are both logicless templating languages that keep the view and the code separated handlebars provides the power necessary to let us build semantic templates effectively.
#
# Mustache templates are compatible with handlebars, so we can take a mustache template, import it into handlebars, and start taking advantage of the extra handlebars features.
#
# Handlebars.js supports extended expression syntax that we call paths. Paths are made up of typical expressions and  characters. Expressions allow us to not only display data from the current context, but to display data from contexts that are descendants and ancestors of the current context.
#
# To display data from descendant contexts, we use the “ . ” character. example, if our data were structured like:
#
#```
# var data = {
#     "person": {
#         "name": "skippednote"
#     },
#     "company": {
#         "name": "fat arrow"
#     }
# };
#```
#
# We could display the person's name from the top-level context with the following expression:
#
#```
# {{person.name}}
#```
#
# We can backtrack using ../. for example, if we have already traversed into the person object we could still display the company's name with an expression like `{{../company.name}}`:
#
#```
# {{#person}}{{name}} - {{../company.name}}{{/person}}
#```
