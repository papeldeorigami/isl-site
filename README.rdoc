== Instituto Sarah Lins Website

This is an institutional website, intended to be as simple as possible (no
big features).

== Installation

```
bundle install

foreman start
```

== Background information

It started as a set of static webpages implemented by a "static_pages" 
controller.

Some extra requirements emerged: search function, photo gallery, news, option 
to edit pages... So we noticed we should go for a CMS.
After some research, we decided to use RefineryCMS because it keeps things 
simple in the Rails way. It was straightforward to re-use some stylesheets 
and do some view customizations.

