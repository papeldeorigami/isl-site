# Instituto Sarah Lins Website

This is an institutional website, intended to be as simple as possible (no
big features).

## Installation

```
bundle install
cp config/app_environment_variables.rb.template config/app_environment_variables.rb
foreman start
```

IMPORTANT: edit the file config/app_environment_variables.rb and change the username/password

## Background information

It started as a set of static webpages implemented by a "static_pages" 
controller.

Some extra requirements emerged: search function, photo gallery, news, option 
to edit pages... So we noticed we should go for a CMS.

### Experiences with RefineryCMS

After some research, we decided to use RefineryCMS because it keeps things 
simple in the Rails way. It was straightforward to re-use some stylesheets 
and do some view customizations.
Also, we added the news module quite easy.
Had some trouble to set the "default_frontend_locale" because we forgot to set
the "frontend_locale" list. It took us a few days to identify this cause,
although it seems obvious now. Perhaps Refinery could help us by issuing some
warning in this case.
The next frustrating experience was to setup the layout for the first page
in order to accomodate the recent news list.
It was necessary to override the standard home view in code and put the 
content in the database. This didn't smell good.

### Experiences with Comfortable-Mexican-Sofa

This has being a real Rails-like experience.
First thing to do was upgrade to Rails 4, since we wanted to get the newest
gem. This was actually good and straightforward from Rails 3.
Then we had some trouble trying to setup links to the cms pages from views.
Actually it was just a matter of creating child pages after home and setting
nice identifiers. Our html views became actually simpler than before.
Again, all stylesheets and existing code kept working, but this time much
better integrated. This gem rocks!

### Deciding the richtext editor

A cool thing about Comfortable Mexican Sofa is that we can easily switch the richtext
editor. We've decided for tinymce because it presents some nice plugins and it is still
fast.
