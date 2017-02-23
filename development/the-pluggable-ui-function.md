---
layout: document
category: Development
published: true
title: The pluggable_ui function
description: The pluggable_ui function's main purpose was to provide additional event/step hooks to modify the administration side.
---

# The pluggable_ui function TODO

The main purpose of the `pluggable_ui` function is to provide additional event/step hooks to modify or extend the administration side user interface. Whereas callbacks are more general hooks that allow you to intercept the entire form submission process or to rewrite an entire page using search/replace, `pluggable_ui()` is far more granular. Each callback point allows the developer or theme designer to tweak a single or block-based visual element of the user interface.

On this page:

* [Caution](#caution)
* [Function definition](#function-definition)
* [Examples](#examples)
* [Events and steps reference](#events-and-steps-reference)

## Caution

Though it’s possible to completely redesign the HTML markup within an admin-side panel, you are advised not to do it with a plugin. Removing and changing admin-side panel elements can make the plugins of other developers who target those DOM elements non-functional. If you must rename selectors (IDs, classes), consider leaving the existing items intact and adding your own, then setting the original's to `display:none` via CSS.

## Function definition

Callbacks written with `pluggable_ui` have a different signature than those written with other functions @@compare with `register_callback()`@@. They usually have 4 arguments (and sometimes 5).

<div class="tabular-data" itemscope itemtype="https://schema.org/Table">
    <table>
        <thead>
            <tr>
                <th scope="col">Argument</th>
                <th scope="col">Parameters</th>
                <th scope="col">What it is/does</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">1</th>
                <td><code>$event</code></td>
                <td>Name of the core <em>event</em> for the panel you’re targeting.</td>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td><code>$step</code></td>
                <td>Name of the core <em>step</em> for the specific DOM element targeted.</td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td><code>$data</code></td>
                <td>The default data (content and/or markup); it’s used if not modified.</td>
            </tr>
            <tr>
                <th scope="row">4</th>
                <td><code>$rs</code></td>
                <td>The returned ‘record set’ from the database.</td>
            </tr>
            <tr>
                <th scope="row">5</th>
                <td>(value)</td>
                <td>The value of a named element (e.g. preference setting), indicated by argument 4.</td>
            </tr>
        </tbody>
    </table>
</div>

Argument #1
: `_ui` (for 'user interface') and begins with the event to which it refers. For example, on the Write administration panel the event is `article_ui`, and on the Files administration panel the event is `file_ui`. Straightforward.

Argument #2
: The `$step`, is usually the part of the panel that contains the widget or any of its controls you wish to change. For example, on the Write administration panel, the Article image control has a `$step` called `article_image` and the Custom fields widget has one called `custom_fields`, and so on.

Arguments 3, 4, and 5 are optional depending on what you're trying to do...

Argument #3
: If applicable, is the default data (text, markup, both...); it will be used if you don’t modify it. Parsing argument #3 allows you to alter what was originally going to be displayed, and then return it. Or you may discard this markup and return your own instead.

Argument #4
: If applicable, is the *record set* returned from the database table that pertains to the named *event*.

Argument #5
: If applicable, is a special case (e.g. when dealing with preference settings) where argument #4 becomes the preference name and argument #5 holds its value.

## Examples

In this example we have a basic admin-side plugin called "abc_hello". The plugin creates a new **ABC Hello** panel under the [Extensions administration region](https://docs.textpattern.io/administration/extensions-region), which is accessible to administrators and publishers (i.e. privs 1 and 2 users):

~~~ php
add_privs('abc_hello', '1,2');
register_tab('extensions', 'abc_hello', 'ABC Hello'); // parent, event, title
register_callback('abc_hello_world', 'abc_hello'); // callback, event

function abc_hello_world($event, $step) {
    pagetop('ABC Hello', '<strong>ABC Hello</strong> preferences');
    echo '<p>Hello, World!</p>';
~~~

So far `pluggable_ui()` is not used at all in the plugin. Instead, `register_callback()` has been used to add the plugin's preferences under the [Extensions administration region](https://docs.textpattern.io/administration/extensions-region), like we could use it to do most everything else to admin-side panels too.

But if you wished to allow other plugins to alter the output of abc_hello, you could replace `echo '<p>Hello, World!</p>';` part with:

~~~ php
echo pluggable_ui('abc_hello', '', '<p>Hello, World!</p>');
~~~

Now other plugins can step in with something like this:

~~~ php
register_callback('xyz_hello_world', 'abc_hello', '');
~~~

If no other plugin overrides the content by registering a callback on the `abc_hello` event, `<p>Hello, World!</p>` is rendered.

## Events and steps reference

The admin side has many places where plugins and themes can inject or replace content on a block-by-block basis. These are all listed here.

### Header block

`admin_side > header`
: **When it occurs:** When the theme's navigation bar is rendered.
: **What it allows:** Alteration of the main panel navigation area. Theme authors do this by writing a `header()` function in their theme's PHP file.

`admin_side > theme_name`
: **When it occurs:** When the theme's name is set.
: **What it allows:** Alteration of the theme's name.

### Footer block

`admin_side > footer`
: **When it occurs:** When the theme's footer bar is rendered.
: **What it allows:** Alteration of the footer area of each panel. Theme authors do this by writing a `footer()` function in their theme's PHP file. 

### Widgets

`{event}_ui > inputlabel.{name}`
: **When it occurs:** Whenever a label plus its associated input control are rendered together. The `{event}` is the panel on which the widget appears. The `{name}` is the control's `name` attribute.
: **What it allows:** Alteration of any label and input control, such as those found on the Preferences administration panel or the File Edit panel.
: **Argument \#3:** The default markup.
: **Argument \#4:** The values passed in as arguments to the function: `name`, `input`, `label`, `help`, `atts`, `wraptag_val`.

`{event}_ui > upload_form`
: **When it occurs:** Whenever an HTML upload form  is rendered. The `{event}` is the panel on which the form control appears.
: **What it allows:** Alteration of an upload form, such as those found on the Files and Images administration panels.
: **Argument \#3:** The default markup.
: **Argument \#4:** The values passed in as arguments to the function.

`admin_help > {help_topic}`
: **When it occurs:** Whenever an 'information' symbol is rendered that explains a particular UI feature. The `{help_topic}` is the name of the item to which the topic applies.
: **What it allows:** Alteration of any 'i' link, primarily to redirect visitors to a resource other than a core topic.
: **Argument \#3:** The default markup.
: **Argument \#4:** The values passed in as arguments to the function: `help_var`, `width`, `height`, `class`.

`admin_help_field > {string}`
: **When it occurs:** Whenever inline help is rendered that explains a particular UI feature. The `{string}` is the key of the `gTxt()` translation string to fetch that describes the UI feature.
: **What it allows:** Addition of content below an input control to further explain its role. For example, the 'Title' element on the Write administration panel might give information about what constitutes a good, concise title for your articles.
: **Argument \#3:** The default markup.
: **Argument \#4:** The value of `help_var` passed into the function.

