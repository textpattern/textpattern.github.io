------------------------------------------------------------------------

layout: document\
category: Development\
published: true\
title: "Admin-side events and steps"\
---

Admin-side events and steps
===========================

These are the main events and steps that Textpattern uses as you
interact with the admin-side interface. Although they are not direct
[callbacks](http://docs.textpattern.io/development/core-callbacks-reference),
you may hook into these events and steps from a plugin to perform an
action.

h2(\#sec1) `admin` event

The associated steps are:

-   admin\_change\_pageby
-   admin\_multi\_edit
-   author\_edit
-   author\_list
-   author\_save
-   author\_save\_new
-   change\_email
-   change\_email\_form
-   change\_pass
-   new\_pass\_form

`article` event {#sec2}
---------------

The associated steps are:

-   create
-   edit
-   publish
-   save
-   save\_pane\_state

`category` event {#sec3}
----------------

The associated steps are:

-   cat\_article\_create
-   cat\_article\_edit
-   cat\_article\_save
-   cat\_category\_list
-   cat\_category\_multiedit
-   cat\_file\_create
-   cat\_file\_edit
-   cat\_file\_save
-   cat\_image\_create
-   cat\_image\_edit
-   cat\_image\_save
-   cat\_link\_create
-   cat\_link\_edit
-   cat\_link\_save

`css` event {#sec4}
-----------

The associated steps are:

-   css\_copy
-   css\_edit
-   css\_edit\_raw
-   css\_delete
-   css\_save
-   pour

`discuss` event {#sec5}
---------------

The associated steps are:

-   discuss\_change\_pageby
-   discuss\_delete
-   discuss\_edit
-   discuss\_list
-   discuss\_multi\_edit
-   discuss\_save
-   ipban\_add
-   ipban\_list
-   ipban\_unban

`file` event {#sec6}
------------

The associated steps are:

-   file\_change\_pageby
-   file\_create
-   file\_edit
-   file\_insert
-   file\_list
-   file\_multi\_edit
-   file\_replace
-   file\_save

`form` event {#sec7}
------------

The associated steps are:

-   form\_create
-   form\_edit
-   form\_delete
-   form\_list
-   form\_multi\_edit
-   form\_save
-   save\_pane\_state

`image` event {#sec8}
-------------

The associated steps are:

-   image\_edit
-   image\_change\_pageby
-   image\_insert
-   image\_list
-   image\_multi\_edit
-   image\_replace
-   image\_save
-   thumbnail\_create
-   thumbnail\_delete
-   thumbnail\_insert

`import` event {#sec9}
--------------

The associated steps are:

-   start\_import
-   switch\_tool

`link` event {#sec10}
------------

The associated steps are:

-   link\_change\_pageby
-   link\_edit
-   link\_list
-   link\_multi\_edit
-   link\_save

`list` event {#sec11}
------------

The associated steps are:

-   list\_change\_pageby
-   list\_list
-   list\_multi\_edit

`log` event {#sec12}
-----------

The associated steps are:

-   log\_change\_pageby
-   log\_list
-   log\_multi\_edit

`page` event {#sec13}
------------

The associated steps are:

-   page\_edit
-   page\_delete
-   page\_new
-   page\_save
-   page\_list

`plugin` event {#sec14}
--------------

For information purposes only. Third party plugins do not run on this
panel.

The associated steps are:

-   plugin\_edit
-   plugin\_help
-   plugin\_install
-   plugin\_list
-   plugin\_multi\_edit
-   plugin\_save
-   plugin\_verify
-   switch\_status

`prefs` event {#sec15}
-------------

The associated steps are:

-   advanced\_prefs
-   advanced\_prefs\_save
-   get\_language
-   get\_textpack
-   list\_languages
-   prefs\_list
-   prefs\_save
-   remove\_language

`section` event {#sec16}
---------------

The associated steps are:

-   section\_change\_pageby
-   sec\_section\_list
-   section\_delete
-   section\_edit
-   section\_multi\_edit
-   section\_save
-   section\_set\_default
-   section\_toggle\_option

`tag` event {#sec17}
-----------

The associated steps are:

-   build

