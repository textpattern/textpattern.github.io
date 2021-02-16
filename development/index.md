---
layout: landing
category: Development
published: true
title: Developing Textpattern plugins
description: Everything you need to know to develop or fix Textpattern plugins.
---

# Developing plugins

This information is for those who are thinking about developing Textpattern plugins; that is to say, extend the functionality of Textpattern beyond its core abilities. As the years have passed and the software has matured, growing ever more capable out-of-the-box, the need for plugins has diminished, or at the very least has evolved to where new plugins have become light-weight specializations. This offers exciting, if challenging, opportunities for new plugin developers. What can you bring to the table that is both irrefutably useful and not already possible with core?

**Contents**

* Table of contents
{:toc}

## Disclaimer

Before you embark on this journey, understand that core developers put a lot of effort into maintaining backwards compatibility within the development branch of Textpattern itself, but that does not guarantee your plugins will continue to work as intended after new versions of Textpattern are released. Sometimes new development directions - like what might come as we head to the next Textpattern version and later - require making changes that affect backwards compatibility. As a plugin developer, it is your responsibility to ensure your plugins work against core code at point of every future Textpattern release.

## Developer rules of the road

More like four strong recommendations, to help ensure you're producing plugins that people will use. And that's the whole point, right?

### 1. Avoid reinventing the wheel

While reinventing the wheel is a good way to learn, it's not so good for making useful or popular plugins. If your plugin does what another plugin already does, few users will take the time to install and try it unless it's *extremely* innovative in some way. We recommend that before you start developing, spend some time researching what plugins exist, what functionality they provide, and how well they're working for people (often indicated by how popular they are).

Here's the visible approach to plugin conception that can help you make a good choice…

When plugin ideas aren't conceived quietly in the minds of individuals and built to fruition without a lot of fanfare (a path usually taken when a developer needs the functionality regardless of whether the community does or not), they often begin as a core [feature idea](https://forum.textpattern.com/viewforum.php?id=2) ([a shunned one](/development/plugin-vs-core)), or [plugin discussion](https://forum.textpattern.com/viewforum.php?id=13). Bouncing plugin ideas off the community first is a good way to gauge whether a plugin idea has merit - the more interest and constructive feedback you get, the more likely the plugin is worth building.

If you do throw caution to the wind and reinvent the wheel anyway, make sure you are ready to raise the bar. Somebody has to eventually.

### 2. Do it the Textpattern way

Do it "the Textpattern way" from the start by using Textpattern functions (talked about later), because they already work efficiently. Your goal should be to emulate Textpattern as you expand its capabilities, otherwise you run the risk of your plugin feeling foreign or out of place, and perhaps not working well with other plugins. Further, some functions are in place to assist with keeping Textpattern secure and working regardless of host server settings, and you don't want to interfere with that kind of thing.

### 3. Use the templates

Templates come from the trials and errors of those who came before you. Thus using templates helps you do things easier, with better results. There are two templates to employ: the plugin development template, and the plugin user-help guidelines and template.

**Plugin development template:**

* [Plugin template](https://github.com/textpattern/textpattern-plugin-template)
* [Plugin template helper](/development/plugin-template-help)

**Plugin user-help guidelines:**

* [Plugin user-help guidelines](/development/plugin-user-help-guidelines) (and template)

### 4. Write clear and concise plugin help

Yes, we're emphasizing this. Don't be one of *those* developers that assumes everyone knows what you know - the opposite is true. People won't use your plugin (innovative or not) if you don't explain how it works. You can avoid fielding a lot of unnecessary questions in the support forum and empower users by producing good plugin user instructions to begin with. Use the template to ensure your plugin instructions are consistently structured and properly formatted.

If you include screenshots in your plugin help, keep them updated with UI changes. Nothing looks worse or is more confusing than outdated screenshots that don't match the help copy.

## What is a plugin?

This documentation focuses on the technological aspects of plugins, but you should also understand the [philosophy of core development](/development/plugin-vs-core), as it relates to why few of the functional capabilities provided by plugins are ever integrated into core code.

In general, a 'plugin' is a container for any kind of PHP code. The code can be a few lines of PHP, or `function` and `class` definitions.[^1] Defining functions in the plugin is a common and easy way to start out, as they can be called from templates. But more advanced ways exist for plugins to influence Textpattern behaviour.

### Functional categories

Plugins can be categorized in three functional ways:

1. 'On demand' (providing tags for Page templates and Form templates)
2. 'Up front' (intercepting page requests; either all or those having special characteristics)
3. 'In between' (using Textpattern hooks to automatically change or add behaviour)

The most practical (and most popular) plugins fall into more than one category, because a plugin is really nothing more than a container for code. If it provides functionality in multiple ways, it's likely providing more benefit to the user.

Plugins can also be public-side or admin-side, or be one of several types that correspond to all of the above (see [How plugins are loaded](#how-plugins-are-loaded)).

### Front-end plugins

Public-side (aka 'client-side' or 'front-side') plugins are those that enable content output on the front-side of a website, often through specialized tags, which a website designer can use interchangeably with Textpattern's core tags and HTML. These kinds of plugins don't have much in the way of requirements, thus are great plugins to try building when getting started with Textpattern plugin development.

* [Public-side plugin tutorial](/development/public-side-plugin-tutorial) - A basic tutorial to learn the ropes of the easiest kind of plugin to build.

### Back-end plugins

Admin-side plugins provide site administrators and designers the ability to alter the [administration](/administration/) UI and/or functionality in some way.

Admin-side plugins often make use of the [Extensions administration region](/administration/extensions-region). In other words, if an admin-side plugin is designed to provide a user with special preferences, search mechanisms, functional controls, and so forth, they would be made available on their own sub-panel under the **Extensions** region.

* [Admin-side plugin tutorial](/development/admin-side-plugin-tutorial) - A basic tutorial to get acquainted with the tricker kinds of plugins to build.

## Register your plugin developer prefix

All hopeful plugin developers must [register an ‘author’ prefix](/brand/author-prefixes-and-registration), and use it in the appropriate locations.

## How plugins are loaded

Plugins are loaded very early during script execution. It happens in `textpattern/publish.php` (public-side) and in `textpattern/index.php` (admin-side). Look out for `load_plugins` to see where it is happening.

Type value | Type name | What it means
---|---|---
0 |`public` |Will only load on the public-facing (front-end) site.
1 |`admin + public` |Will load on the front- *and* back-end sides. May **not** make asynchronous calls.
2 |`library` |Will not automatically load, rather it loads when included/required by other plugins.
3 |`admin-only` |Will only load on the back-end, and may **not** make asynchronous calls.
4 |`admin + Ajax` |Will only load on the back-end, and may make asynchronous calls.
5 |`admin + public + Ajax` |Will load on the front- and back-end, and may make asynchronous calls.

The code of the plugin is then included within that `load_plugins()` function, *not* in the global scope. This means if you need to use global variables, you have to explicitly set them to be global. Functions and classes are always in the “global scope”, so there is no problem with that.

Understanding how plugins are loaded, also shows how you can write “on demand” and “up front” plugins, which were mentioned earlier. Defining a function and registering it will make it available as a tag in Textpattern Page templates and Form templates. Any code that is outside of any function/class definition will be executed right away. You can check for Request-Variables and initiate some action and `exit;` the execution of the script (for example to serve images or other binary data from within a plugin).

## Callbacks

A callback is essentially an instruction (written as a function) that your plugin follows to execute some *events* (and *steps*) - either `$event` by itself or combined with a `$step`. You hook into these known points to choose where and when your plugins run.

The [Core callbacks reference](/development/core-callbacks-reference) provides complete details for all callback actions used in Textpattern, organized by public-side, admin-side, plugin, and function- and tag-based callbacks.[^2]

### Function: register_callback()

There are many [functions used in Textpattern](http://phpcrossref.com/xref/textpattern/_functions/) that may be relevant to your plugin development aims.[^3] In particular, the `register_callback()` function is important for writing [callbacks](#callbacks) (especially admin-side callbacks).[^4] This is the full function definition:

~~~ php
function register_callback($func, $event, $step, $pre=0)
~~~

**The arguments (or parameters) are:**

Argument 1
: **Parameter:** `$func`
: Name of your function that will be executed when the callback is raised.

Argument 2
: **Parameter:** `$event`
: Name of the core *event* you wish to hook into. For the administration side, this is usually the `?event` name found in the URL.

Argument 3
: **Parameter:** `$step` (admin-side only)
: Name of the associated core step, or action (such as `save`, `create`, `copy`, `duplicate`, etc). Not always required.

Argument 4
: **Parameter:** `$pre=` (admin-side only)
: Designates when `$func` is called. Values are `0` (default, after the core action has completed) or `1` (before the core action does its job). Not always required, and not all callbacks have both.

**Argument \#3:** In admin-side situations, the `$event` (argument \#2) is (disjunctively) divided into *steps*, with each `$step` pinpointing a particular action or DOM location (e.g. a panel widget or one of its controls).

**Argument \#4:** In admin-side situations, this argument determines when the function is called, with implications for what you can do:

-   If `$pre=0` (default), the function is called *after* the main part of the page is executed and rendered, allowing your function to add things below it, or to manipulate the DOM.
-   If `$pre=1`, the function is called *before* any part of the page is rendered or executed, allowing you to replace existing panels on the admin-side or manipulate variables or content before core code does its part.

Let's look a few `register_callback()` examples.

### Adding your own administration panel elements

Elements can be added to admin-side panels in two ways: as *new* elements, or as modifications to existing elements. Each panel has its
own set of core callback parameters to work with, which are detailed in the [Admin-side user-interface
callbacks](/development/core-callbacks-reference#admin-side-callbacks) section of the [Core callbacks reference](/development/core-callbacks-reference).

#### Adding new elements (without altering existing markup)

In this example, we use the `register_callback` function to add some text - "Textpattern rocks!" - in the **Write**
panel, before the **Recent articles** block. The text is added directly there, in the place where the `extend_col_1` step happens to output its markup:

~~~ php
register_callback('abc_add_text', 'article_ui', 'extend_col_1');

function abc_add_text($event, $step, $data, $rs) {
    return 'Textpattern rocks!';
}
~~~

From the `register_callback` definition provided earlier, we see the first line is giving these arguments:

* `$func` = `abc_add_text`
* `$event` = `article_ui`
* `$step` = `extend_col_1`

So `abc_add_text` is the named custom function in this case, and `article_ui` and `extend_col_1` are the actual *event* and *step* in
core that define the callback action. The event value (`article_ui`) makes clear the callback action is made to the *include/txp_article.php* file, which is where all **Write** panel UI modification callbacks are made.

The next line of code is the actual callback function, namely `abc_add_text()`. The particular `$event`/`$step` combination passed to
the function only outputs new content (we're not modifying anything), so `$data` and `$rs` are ignored and the content is returned (output) as defined.

#### Adding new elements to existing panel markup

Another way to add elements is to existing markup. For example, to add the `url_title` below the article's **Title** field, you could do this:

~~~ php
register_callback('abc_append_item', 'article_ui', 'title');

function abc_append_item($event, $step, $data, $rs) {
    $urlttl = isset($rs['url_title']) ? '<br/>'.$rs['url_title'] : '';

    return $data.$urlttl;
}
~~~

Here we return the default markup (`$data`) and tack on our own markup which we read from the record set (`$rs`) that was passed to our
function.

### Altering admin-side panel elements

Most of the UI elements in the admin-side panels can be altered or removed, depending on how you write your functions. In this example, let's alter something by looking in the default markup for particular items to change. This is the least robust mechanism but it can be very useful at times.

Consider this example, which adds a radio button to the existing button series in the **Write** panel's **Status** widget:

~~~ php
register_callback('abc_altered_status', 'article_ui', 'status');

function abc_altered_status($event, $step, $data, $rs) {
    $stat = isset($rs['Status']) ? $rs['Status'] : '';
    $new_status = n.t.'<li>'.radio('Status', 6, ($stat == 6) ? 1 : 0, 'status-6').
    '<label for="status-6">Velcro</label></li>';
    $data = str_replace('</ul>', $new_status.'</ul>', $data);

   return $data;
}
~~~

Again we've used `register_callback()` to define our callback function, and in this case we've employed the `$event`/`$step` combination for targeting the **Status** widget in the **Write** panel. The function then pulls the default record set, defines a new status button option for inclusion, and returns (outputs) the resulting altered list.

### Removing admin-side panel elements

In this case, let's say you wanted to remove the **Keywords** field.[^5] You could hook into the `keywords` step and return a single space character:

~~~ php
register_callback('abc_remove_keywords', 'article_ui', 'keywords');

function abc_remove_keywords($event, $step, $data, $rs) {
    return ' ';
}
~~~

That's it! The returned space character (`return ' '`) replaces the keywords field, effectively removing it.

## Plugin lifecycle management and preferences

Plugins can opt into receiving `plugin_prefs` and `plugin_lifecycle` events. The opt-in is signalled to core by flagging your intention using `$plugin['flags']`.

`PLUGIN_LIFECYCLE_NOTIFY` and `PLUGIN_HAS_PREFS` are defined bit masks (human-readable) that you can use in any appropriate combination
(`PLUGIN_LIFECYCLE_NOTIFY | PLUGIN_HAS_PREFS`, etc).

Once you flag your intention to use the events, `register_callback()` can define where the event fires:

~~~ php
register_callback('abc_plugin_my_prefs_panel', 'plugin_prefs.abc_plugin');
~~~

Or:

~~~ php
register_callback('my_install_routine',
    'plugin_lifecycle.abc_plugin', 'installed');

register_callback('my_delete_routine',
    'plugin_lifecycle.abc_plugin', 'deleted');

register_callback('my_enable_routine',
    'plugin_lifecycle.abc_plugin', 'enabled');;

register_callback('my_disable_routine',
    'plugin_lifecycle.abc_plugin', 'disabled');
~~~

Textpattern reserves the lower twelve bits of `$plugin['flags']` for its own use, plugin developers may take advantage of the remaining four (`~PLUGIN_RESERVED_FLAGS`). These might come in handy to trigger some one-time actions, as these bits are copied into the *txp_plugin* table row for any particular plugin whenever it is uploaded.

## Variables, classes and constants

These resources are hosted at **phpcrossref.com**:

-   [Variables
    list](http://phpcrossref.com/xref/textpattern/_variables/)
-   [Classes list](http://phpcrossref.com/xref/textpattern/_classes/)
-   [Constants
    list](http://phpcrossref.com/xref/textpattern/_constants/)

## Full plugin tutorials

Two basic plugin tutorials to put it all in perspective:

* [Public-side plugin tutorial](/development/public-side-plugin-tutorial)
* [Admin-side plugin tutorial](/development/admin-side-plugin-tutorial)

## Implementation resources

Now you know what plugins are, you are ready to kick plugin ass! You'll probably need some combination of these to see the job through:

**Plugin code template:**

Always use a template when one is available, and there is:

-   [Plugin
    template](https://github.com/textpattern/textpattern-plugin-template)
-   [Plugin template
    helper](/development/plugin-template-help)

**Plugin composer:**

Namely, the [ied_plugin_composer](https://github.com/Bloke/ied_plugin_composer) plugin, as mentioned before. A plugin to build plugins. Ironic, eh? Truth is, this plugin is *extremely* useful: It allows you to create, code, and document plugins, then publish them in either conventional text format, compressed text format, or exported in the standard template format for sharing with developers or using in the plugin cache directory. This plugin also lets you directly edit plugins that are in the plugin cache directory.

**Plugin user-help template and guidelines:**

One of the [Developer rules of the road](#developer-rules-of-the-road). When your plugin is done (or as you code it), it's time to write that tight and useful plugin help documentation. There's a template for that:

-   [Plugin user-help
    guidelines](/development/plugin-user-help-guidelines)

**Code repositories:**

Get your repos here; something for everyone. A few git commands included.

* [Textpattern repositories](/development/textpattern-source-code-repositories)

**Integration and waypoints:**

These may be useful depending on the kind of plugin you're building.

-   [User role types and privileges](/administration/user-roles-and-privileges) (If your plugin will interact with user accounts.)
-   [Database schema reference](/development/database-schema-reference) (If your plugin will need a database table.)
-   [**Extensions**](/administration/extensions-region) (If your admin-side plugin will provide *Publisher* controls in its own panel under **Extensions**.)

**Miscellaneous tools:**

These are
[questionable](https://github.com/textpattern/textpattern.github.io/issues/34)
until further notice.

-   [Generate a list of tags and attributes](https://forum.textpattern.com/viewtopic.php?id=12299)
-   [Command-line plugin decoder](https://forum.textpattern.com/viewtopic.php?id=4252)

## Getting help

The Textpattern CMS support forum, notably the [Plugin discussion](https://forum.textpattern.com/viewforum.php?id=13) area, is a good place to post questions too.

## External reading

Additional third-party reading you may find insightful. The information may be outdated, so use with caution. Not a long list, in any case.

* [How to build a Textpattern plugin](https://textpattern.tips/how-to-build-a-textpattern-plugin)

[^1]: You can see the code for any installed plugin by selecting its name in the table on the Plugins panel, or by installing and using [ied_plugin_composer](https://github.com/Bloke/ied_plugin_composer).

[^2]: There's also the [Admin-side events and steps](/development/admin-side-events-and-steps) listing for admin-side plugins specifically. This would correspond with the various [admin-side callbacks](/development/core-callbacks-reference#admin-side-callbacks) in the **Core callbacks reference**, but it doesn't provide the explanatory details like the callbacks reference does.

[^3]: As you learn about functions, be aware of the helper functions found in the [/lib](https://github.com/textpattern/textpattern/tree/main/textpattern/lib) folder. Some examples: The [txplib_db.php](https://github.com/textpattern/textpattern/blob/main/textpattern/lib/txplib_db.php) file for interacting with the Textpattern database; [txplib_forms.php](https://github.com/textpattern/textpattern/blob/main/textpattern/lib/txplib_forms.php) to help build different HTML form controls; [txplib_html.php](https://github.com/textpattern/textpattern/blob/main/textpattern/lib/txplib_html.php) to help build various other types of HTML elements; and [txplib_misc.php](https://github.com/textpattern/textpattern/blob/main/textpattern/lib/txplib_misc.php) to help build various 'miscellaneous' functions.

[^4]: Another function, `pluggable_ui()`, was introduced in 2009, which provides additional event/step hooks for the admin-side panels. But this is for the advanced Textpattern user and developer, not the beginner. This function is not needed 99.9% of the time. See [The pluggable_ui function](/development/the-pluggable-ui-function) page for more.

[^5]: **Attention!** Removing elements like this is a little drastic, because other plugins exist that target most UI elements, including the **Keywords** field. Such plugins would fail if they couldn't find the element you had destroyed. Hiding the element with CSS using `display: none` would be a safer/better approach. If this is a problem for you and you feel you must delete the element, you could set your plugin to run at a lower priority (i.e. greater than "5") so other plugins could render their markup *before* you remove your targeted element.
