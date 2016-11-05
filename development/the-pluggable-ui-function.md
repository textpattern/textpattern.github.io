------------------------------------------------------------------------

layout: document\
category: Development\
published: true\
title: "The pluggable\_ui function"\
tags:\
- development\
- php\
- functions\
- admin-side\
---

The `pluggable_ui` function
===========================

The `pluggable_ui` function was first introduced in Textpattern core
prior to March 2009. It's main purpose was to provide additional
event/step hooks to modify the administration side when admin-side web
templates were harder to work with.[^1] However, admin-side templates
have come a long way and are vastly improved, not to mention other core
features have emerged too (or will soon) that make new plugin designs
possible. Thus `pluggable_ui` has less to offer the average plugin
developer. Some say it's only value anymore is to allow other plugins to
modify your plugin's content. See example below.

On this page:

-   [Caution](#sec1)
-   [Function definition](#sec2)
-   [Examples](#sec3)
-   [Events and steps reference](#sec4)

Caution {#sec1}
-------

Though it’s possible to completely redesign the HTML markup within an
admin-side panel, you are advised not to it with a plugin. Removing and
changing admin-side panel elements can make the plugins of other
developers who target those DOM elements non-functional. If you must
rename selectors (IDs, classes), consider leaving the existing items
intact and adding your own, then setting the original's to
`display:none` via CSS.

Function definition {#sec2}
-------------------

Callbacks written with `pluggable_ui` have a different signature than
those written with other functions ([compare with
`register_callback()`](#)). They usually have 4 arguments (and sometimes
5).

notextile.

<div class="tabular-data" itemscope itemtype="http://schema.org/Table">
  Argument   Parameters   What it is/does
  ---------- ------------ ----------------------------------------------------------------------------------
  1          `$event`     Name of the core *event* for the panel you're targeting.
  2          `$step`      Name of the core *step* for the specific DOM element targeted.
  3          `$data`      The default data (content and/or markup); it's used if not modified.
  4          `$rs`        The returned 'record set' from the database.
  5          (value)      The value of a named element (e.g. preference setting), indicated by argument 4.

notextile.

</div>
**Argument \#1** is the event passed to your function, usually ends in
`_ui` (for “user interface”) and begins with the event to which it
refers. For example, on the **Write** panel the event is `article_ui`,
and on the **Files** panel the event is file\_ui. Straightforward.

**Argument \#2**, the \$step, is usually the part of the panel that
contains the widget or any of its controls you wish to change. For
example, on the Write panel, the Article image control has a \$step
called article\_image and the Custom fields widget has one called
custom\_fields, and so on.

Arguments 3, 4, and 5 are optional depending on what you're trying to
do...

**Argument \#3**, if applicable, is the default data (text, markup,
both...); it will be used if you don’t modify it. Parsing argument \#3
allows you to alter what was originally going to be displayed, and then
return it. Or you may discard this markup and return your own instead.

**Argument \#4**, if applicable, is the *record set* returned from the
database table that pertains to the named *event*.

**Argument \#5**, if applicable, is a special case (e.g. when dealing
with preference settings) where argument \#4 becomes the preference name
and argument \#5 holds its value.

Examples {#sec3}
--------

In this example we have a basic admin-side plugin called "abc\_hello".
The plugin creates a new **ABC Hello** panel under the **Extensions**
region, which is accessible to administrators and *publishers* (i.e.
privs 1,2 users):

    php
    add_privs('abc_hello', '1,2');
    register_tab('extensions', 'abc_hello', 'ABC Hello'); //parent, event, title
    register_callback('abc_hello_world', 'abc_hello'); //callback, event

    function abc_hello_world($event, $step) {
        pagetop('ABC Hello', '<strong>ABC Hello</strong> preferences');
        echo '<p>Hello, World!</p>';

So far `pluggable_ui()` is not used at all in the plugin. We've used
`register_callback()` to add the plugin's preferences panel under
**Extensions**, like we could use it to do most everything else to
admin-side panels too.

But in the rare case we might want to allow other plugins to alter the
output of abc\_hello, we could replace `echo '<p>Hello, World!</p>';`
part with:

    php
    echo pluggable_ui('abc_hello', '', '<p>Hello, World!</p>');

Now other plugins can step in with something like this:

    php
    register_callback('xyz_hello_world', 'abc_hello', '');

And that is pretty much all `pluggable_ui()` brings to the table
anymore.

Events and steps reference {#sec4}
--------------------------

-   [Core callbacks
    reference](http://docs.textpattern.io/development/core-callbacks-reference)
    -   [Admin-side user-interface
        callbacks](http://docs.textpattern.io/development/core-callbacks-reference#sec2-4)
        (for more callback options)

[^1]: In 2009, web page templates of the administration side still had
    table-based layouts, poor separation of presentation and content,
    and selectors were somewhat limited or applied in non-ideal places,
    among other things.
