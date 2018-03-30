---
layout: document
category: Development
published: true
title: The pluggable_ui function
description: The pluggable_ui function's main purpose is to provide additional event/step hooks to modify the administration interface.
---

# The pluggable_ui function

The main purpose of the `pluggable_ui` function is to provide additional event/step hooks to modify or extend the administration side user interface. Whereas callbacks are more general hooks that allow you to intercept the entire form submission process or to rewrite an entire page using search/replace, `pluggable_ui()` is far more granular. Each callback point allows the developer or theme designer to tweak a single or block-based visual element of the user interface.

On this page:

* [Caution](#caution)
* [Function definition](#function-definition)
* [Examples](#examples)
* [Events and steps reference](#events-and-steps-reference)

## Caution

Though it's possible to completely redesign the HTML markup within an admin-side panel, you are advised not to do it with a plugin. Removing and changing admin-side panel elements can make the plugins of other developers who target those DOM elements non-functional. If you must rename selectors (IDs, classes), consider leaving the existing items intact and adding your own, then setting the original's to `display:none` via CSS.

## Function definition

Callbacks written with `pluggable_ui` have a different signature than those written with other functions such as `register_callback()`. They usually have four arguments (and sometimes five).

Argument | Parameters | What it does | Usage
---|---|---|---
1 | `$event`| Name of the core _event_ for the panel you’re targeting. | Most of the time, these begin with the event name plus the `_ui` (for 'user interface') suffix. For example, on the Write panel the event is `article_ui`, and on the Files panel the event is `file_ui`.
2 | `$step`| Name of the core _step_ for the specific DOM element targeted. | Usually the part of the panel that contains the widget or any of its controls you wish to change. For example, on the Write panel, the Article image control has a `$step` called `article_image` and the Custom fields widget has one called `custom_fields`, and so on.
3 | `$data`| The default data (content and/or markup); it's rendered as-is if not modified. | If applicable, this contains the default data (text, markup, both...). It will be used as-is if you don't modify it. Parsing this argument allows you to alter what was originally going to be displayed, and then return it. Or you may discard this markup and return your own instead.
4 | `$rs`| The returned 'record set' from the database. | If applicable, this is the *record set* returned from the database table that pertains to the named *event*.
5 | `(value)`| The value of a named element (e.g. preference setting), indicated by argument 4. | If applicable, this is a special case (e.g. when dealing with preference settings) where argument #4 becomes the preference name and argument #5 holds its value.

## Examples

In this example we have a basic admin-side plugin called "abc_hello". The plugin creates a new **ABC Hello** panel under the [Extensions administration region](https://docs.textpattern.io/administration/extensions-region), which is accessible to administrators and publishers (i.e. privs 1 and 2 users):

~~~ php
add_privs('abc_hello', '1,2');
register_tab('extensions', 'abc_hello', 'ABC Hello'); // parent, event, title
register_callback('abc_hello_world', 'abc_hello'); // callback, event

function abc_hello_world($evt, $stp) {
    pagetop('ABC Hello', '<strong>ABC Hello</strong> preferences');
    echo '<p>Hello, World!</p>';
~~~

So far `pluggable_ui()` is not used at all in the plugin. Instead, `register_callback()` has been used to add the plugin's preferences under the [Extensions administration region](https://docs.textpattern.io/administration/extensions-region), like we could use it to do most everything else to admin-side panels.

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

The admin side has many places where plugins and themes can inject or replace content on a block-by-block basis. These are all listed here as _event > step_ and are grouped by panel or functional area for convenience.

In this section:

* [Header block](#header-block)
* [Footer block](#footer block)
* [General UI widgets](#widgets)
* [Write panel](#write-panel)
* [Category panel](#category-panel)
* [Images panel](#images-panel)
* [Files panel](#files-panel)
* [Links panel](#links-panel)
* [Themes panel](#themes-panel)
* [Sections panel](#sections-panel)
* [Preferences panel](#preferences-panel)
* [Users panel](#users-panel)

### Header block

`admin_side > header`
* **When it occurs:** When the theme's navigation bar is rendered.
* **What it allows:** Alteration of the main panel navigation area. Theme authors do this by writing a `header()` function in their theme's PHP file.

`admin_side > html_title`
* **When it occurs:** Every admin-side panel.
* **What it allows:** Altering the HTML `<title>` tag contents for an admin-side page.
* **Argument \#3:** The default title markup.
* **Argument \#4:** The raw title passed in as arguments to the function: `pagetitle`.

`admin_side > theme_name`
* **When it occurs:** When the theme's name is set.
* **What it allows:** Alteration of the theme's name.

### Footer block

`admin_side > footer`
* **When it occurs:** When the theme's footer bar is rendered.
* **What it allows:** Alteration of the footer area of each panel. Theme authors do this by writing a `footer()` function in their theme's PHP file. 

### Widgets

`{event}_ui > inputlabel.{name}`
* **When it occurs:** Whenever a label plus its associated input control are rendered together. The `{event}` is the panel on which the widget appears. The `{name}` is the control's `name` attribute.
* **What it allows:** Alteration of any label and input control, such as those found on the Preferences panel or the File Edit panel.
* **Argument \#3:** The default markup.
* **Argument \#4:** The values passed in as arguments to the function: `name`, `input`, `label`, `help`, `atts`, `wraptag_val`.

`{event}_ui > upload_form`
* **When it occurs:** Whenever an HTML upload form  is rendered. The `{event}` is the panel on which the form control appears.
* **What it allows:** Alteration of an upload form, such as those found on the Files and Images panels.
* **Argument \#3:** The default markup.
* **Argument \#4:** The values passed in as arguments to the function.

`admin_help > {help_topic}`
* **When it occurs:** Whenever an 'information' symbol is rendered that explains a particular UI feature. The `{help_topic}` is the name of the item to which the topic applies.
* **What it allows:** Alteration of any 'i' link, primarily to redirect visitors to a resource other than a core topic.
* **Argument \#3:** The default markup.
* **Argument \#4:** The values passed in as arguments to the function: `help_var`, `width`, `height`, `class`.

`admin_help_field > {string}`
* **When it occurs:** Whenever inline help is rendered that explains a particular UI feature. The `{string}` is the key of the `gTxt()` translation string to fetch that describes the UI feature.
* **What it allows:** Addition of content below an input control to further explain its role. For example, the 'Title' element on the Write panel might give information about what constitutes a good, concise title for your articles.
* **Argument \#3:** The default markup.
* **Argument \#4:** The value of `help_var` passed into the function.

### Write panel

`article_ui > title`
* **When it occurs:** The _Title_ area of the Write panel.
* **What it allows:** Additions or replacements to the article title input field.
* **Argument \#3:** HTML of the `inputLabel()` title field area.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > author`
* **When it occurs:** The _Author information_ area of the Write panel, below the Title.
* **What it allows:** Additions or replacements to the article author, posted, modified and ID information.
* **Argument \#3:** HTML of the entire block just beneath the Title area.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > body`
* **When it occurs:** The _Body_ area of the Write panel.
* **What it allows:** Additions or replacements to the article body input field, including markup options.
* **Argument \#3:** HTML of the `inputLabel()` body field area.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > excerpt`
* **When it occurs:** The _Excerpt_ area of the Write panel.
* **What it allows:** Additions or replacements to the article excerpt input field, including markup options.
* **Argument \#3:** HTML of the `inputLabel()` excerpt field area.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > status`
* **When it occurs:** On the Write panel, in the _Sort & display_ area.
* **What it allows:** Additions or replacements to the Status input field.
* **Argument \#3:** HTML of the `inputLabel()` for the Status select list.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > section`
* **When it occurs:** On the Write panel, in the _Sort & display_ area.
* **What it allows:** Additions or replacements to the Section input field.
* **Argument \#3:** HTML of the `inputLabel()` for the Section select list.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > override`
* **When it occurs:** On the Write panel, in the _Sort & display_ area.
* **What it allows:** Additions or replacements to the Override form input field.
* **Argument \#3:** HTML of the `inputLabel()` for the select list.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > sort_display`
* **When it occurs:** The entire _Sort & display_ area on the Write panel.
* **What it allows:** Additions or replacements to the entire Sort and display block, comprising the Status, Section and Override form.
* **Argument \#3:** Combined HTML of the separate components in the Sort and display block.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > annotate_invite`
* **When it occurs:** The entire comments invite block on the Write panel.
* **What it allows:** Additions or replacements to the entire Comments area, including the on/off radio and comments invite message.
* **Argument \#3:** Combined HTML of the input field in the Comments block.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > timestamp`
* **When it occurs:** The _Publish date and time_ area of the Write panel.
* **What it allows:** Additions or replacements to the publish date/time input fields and 'publish now' checkbox.
* **Argument \#3:** HTML of the two `inputLabel()` calls - one for the date, one for the time - and the checkbox beneath.
* **Argument \#4:** The record row that pertains to the current article being edited, plus `sPosted` (the persistent timestamp).

`article_ui > expires`
* **When it occurs:** The _Expiry date and time_ area of the Write panel.
* **What it allows:** Additions or replacements to the article expiry date/time input fields and 'expire now' checkbox.
* **Argument \#3:** HTML of the two `inputLabel()` calls - one for the date, one for the time - and the checkbox beneath.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > categories`
* **When it occurs:** The _Categories_ area of the Write panel.
* **What it allows:** Additions or replacements to the article category selectors.
* **Argument \#3:** HTML of the two category selectors.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > url_title`
* **When it occurs:** The _URL-only title_ field on the Write panel.
* **What it allows:** Additions or replacements to the article's permalink URL input field.
* **Argument \#3:** HTML of the `inputLabel()` URL title field area.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > description`
* **When it occurs:** The _Meta description_ field on the Write panel.
* **What it allows:** Additions or replacements to the article's meta description input field.
* **Argument \#3:** HTML of the `inputLabel()` description field area.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > keywords`
* **When it occurs:** The _Keywords_ field on the Write panel.
* **What it allows:** Additions or replacements to the article's keywords input field.
* **Argument \#3:** HTML of the `inputLabel()` keywords field area.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > article_image`
* **When it occurs:** The _Article image_ field on the Write panel.
* **What it allows:** Additions or replacements to the article's image input field.
* **Argument \#3:** HTML of the `inputLabel()` image field area.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > custom_fields`
* **When it occurs:** The _Custom fields_ block on the Write panel.
* **What it allows:** Additions or replacements to the article's entire custom fields block.
* **Argument \#3:** HTML of the `inputLabel()` custom fields block.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > markup`
* **When it occurs:** The old 'Advanced options' area of the Write panel, now removed.
* **What it allows:** Additions or replacements to the area that used to house the so-called 'advanced options' before they were moved elsewhere. Only retained for backwards compatibility with plugins.
* **Argument \#3:** (not used)
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > extend_col_1`
* **When it occurs:** The area betwen the 'custom fields' and 'recent' groups of the Write panel.
* **What it allows:** Addition of entirely new blocks.
* **Argument \#3:** (not used)
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > recent_articles`
* **When it occurs:** The _Recent articles_ block of the Write panel.
* **What it allows:** Additions or replacements to the block displaying recent articles that have been edited.
* **Argument \#3:** HTML of the entire 'recent articles' block.
* **Argument \#4:** The record row that pertains to the current article being edited.

`article_ui > view`
* **When it occurs:** The _Article preview_ area of the Write panel housing the tabs that switch between edit and preview panes.
* **What it allows:** Additions or replacements to the edit/preview tabs.
* **Argument \#3:** HTML of the edit/preview tabs.
* **Argument \#4:** The record row that pertains to the current article being edited.

### Category panel

`category_ui > extend_detail_form`
* **When it occurs:**  On the Category edit panel, after the core fields have been drawn.
* **What it allows:** Addition of any fields when editing a category.
* **Argument \#3:** (not used)
* **Argument \#4:** The record row that pertains to the current category being edited.

### Images panel

`image_ui > extend_detail_form`
* **When it occurs:**  On the Image edit panel, after the core fields have been drawn.
* **What it allows:** Addition of any fields when editing image metadata.
* **Argument \#3:** (not used)
* **Argument \#4:** The record row that pertains to the current image being edited.

More...

### Files panel

`file_ui > extend_detail_form`
* **When it occurs:**  On the File edit panel, after the core fields have been drawn.
* **What it allows:** Addition of any fields when editing file metadata.
* **Argument \#3:** (not used)
* **Argument \#4:** The record row that pertains to the current file being edited.

### Links panel

`link_ui > extend_detail_form`
* **When it occurs:**  On the Link edit panel, after the core fields have been drawn.
* **What it allows:** Addition of any fields when editing a link.
* **Argument \#3:** (not used)
* **Argument \#4:** The record row that pertains to the current link being edited.

### Themes panel

`skin_ui > extend_detail_form`
* **When it occurs:**  On the Theme edit panel, after the core fields have been drawn.
* **What it allows:** Addition of any fields when editing a theme.
* **Argument \#3:** (not used)
* **Argument \#4:** The record row that pertains to the current theme being edited.

### Sections panel

`section_ui > extend_detail_form`
* **When it occurs:**  On the Section edit panel, after the core fields have been drawn.
* **What it allows:** Addition of any fields when editing a section.
* **Argument \#3:** (not used)
* **Argument \#4:** The record row that pertains to the current section being edited.

### Preferences panel

TBD

### Users panel

`author_ui > extend_detail_form`
* **When it occurs:**  On the Users edit panel, after the core fields have been drawn.
* **What it allows:** Addition of any fields when editing a user account.
* **Argument \#3:** (not used)
* **Argument \#4:** The record set that pertains to the current user account being edited.
