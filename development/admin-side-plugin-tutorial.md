---
layout: document
category: Development
published: true
title: Admin-side plugin tutorial
description: This tutorial walks you through the basics of creating and admin-side plugin.
---

# Admin-side plugin tutorial

This tutorial walks you through the basics of creating an admin-side plugin; it covers functions, callbacks, and the concept of *events* and *steps*.

You might also like to see the [Public-side plugin tutorial](https://docs.textpattern.com/development/public-side-plugin-tutorial).

On this page:

-   [Tutorial objective](#tutorial-objective)
-   [Targeting the admin side](#targeting-the-admin-side)
-   [Creating an Extensions panel](#creating-an-extensions-panel)
-   [Adding events and steps](#adding-events-and-steps)
-   [Responding to a plugin step](#responding-to-a-plugin-step)

## Tutorial objective

This tutorial assumes you have a working knowledge of [PHP](http://php.net), a Textpattern website ready for use, and the [ied_plugin_composer](https://github.com/Bloke/ied_plugin_composer) plugin installed.

The plugin in this tutorial will:

1. Register its own panel under **Extensions**
2. Output some text on that panel
3. Respond to a plugin *step*

Since all plugins must use a three-character alphanumeric [prefix](https://docs.textpattern.com/development/plugin-developer-prefixes),
we're using **abc** in this tutorial, which is reserved for documentation purposes.

## Targeting the admin side

Log into Textpattern and open the [ied_plugin_composer](https://github.com/Bloke/ied_plugin_composer) plugin. Start a new plugin, give it a name, ensure its type is set to *Admin* and open the code panel.

To begin your admin plugin, you need to target the administrative side of Textpattern. You do that by checking whether the current user is on the admin-side or not, as follows:

~~~ php
if (txpinterface === 'admin') {
}
~~~

Put that code in your plugin, double check the plugin is set to type *Admin*, and save.

Nothing will happen yet, of course, so let's create your plugin's panel under **Extensions**.[^1]

## Creating an Extensions panel

~~~ php
if (txpinterface === 'admin') {
    add_privs('abc_admin_hello_world', '1'); // Publishers only
    register_tab('extensions', 'abc_admin_hello_world', 'My plugin');
}
~~~

The `add_privs()` function is a necessary step to tell Textpattern who can see the new panel.

If you visit the **Extensions** region, you'll see your plugin panel link, **My plugin**.[^2] But if you select it nothing much will happen, or you'll probably get some un-styled default content on the screen. Time to give your plugin's panel some content.

## Adding events and steps

You've created a new **Extensions** sub-panel for your plugin, but now you need to give the plugin a function to execute when that sub-panel is selected. To understand what goes on here let's take some time out to reveal Textpattern *events* and *steps*.

For the purposes here, think of an event as a menu item under the **Extensions** region in the Textpattern admin-side UI (i.e. a
sub-panel). Every menu item has its own `event` and there are some built-in ones under each of the menus. For example, the **Content** menu item houses events 'file' and 'image'; the **Presentation** menu has events 'section' and 'page', and so on.

There are no built-in panels on the **Extensions** panel so you define them. In this case, we've told the system, using `register_tab()`, that your panel (your *event*) is known as **abc_admin_hello_world** (what users will see as **My plugin**). So when you target a particular event inside some PHP in the plugin, you tell Textpattern to execute code when someone visits your panel.

A *step* is some action that a user takes when they're in a plugin panel; i.e. some action that takes place inside the event that we are
interested in. More on steps later. For now you need to tell Textpattern what to do when your plugin's panel link is selected. For this we add `register_callback()`:

~~~ php
if (txpinterface === 'admin') {
    add_privs('abc_admin_hello_world', '1'); // Publishers only
    register_tab('extensions', 'abc_admin_hello_world', 'My plugin');
    register_callback('abc_admin_hw_gui', 'abc_admin_hello_world');
}

function abc_admin_hw_gui($evt, $stp)
{
    pagetop('My plugin panel');
    echo 'Hello Textpattern world!';
}
~~~

Now you're getting somewhere! You've just told Textpattern to call the `abc_admin_hw_gui()` function when someone visits the
abc_admin_hello_world sub-panel (what users will see labeled as "My plugin").

The `pagetop()` function is another Textpattern function that renders the primary regions (**Content**, **Presentation**, **Admin**, etc.) of the admin-side interface. The function's mandatory first argument is the name to display in the browser's `<title>` tag. After that, you can display anything you like; draw buttons, widgets, text, whatever. The trick then is to make it do something.

## Responding to a plugin step

In the code so far you have done one thing when you plugin's panel -- your event - is executed. In reality you should take any number of
actions as people interact with your panel. For example, maybe you want to allow users to save some settings (the **save** step), or **edit** something, or simply **list** some stuff.

Let's prepare your plugin to work with these three steps; **list** is going to be our default step. To do this we're going to rename your existing `abc_admin_hw_gui()` function to reflect its actual implementation; it's now going to be called `abc_admin_hw_list()`. The
original `abc_admin_hw_gui()` function is going to become a sort of ***dispatcher*** for steps. Here's the new function:

~~~ php
function abc_admin_hw_gui($evt, $stp)
{
    if (!$stp or !in_array($stp, array(
        'abc_admin_hw_save',
        'abc_admin_hw_edit',
    ))) {
        abc_admin_hw_list();
    } else {
        $stp();
    }
}
~~~

This new function essentially checks to see if there's a `$stp`, or if the name of the step is `abc_admin_hw_save` or `abc_admin_hw_edit`. If it is, it calls the function with the same name as the step. If there's no step or the step is somehow mistyped or mangled, the default step, `abc_admin_hw_list`, is run instead.

Now let's write your functions for the remaining steps:

~~~ php
function abc_admin_hw_save()
{
    echo 'Save step triggered';
    abc_admin_hw_list();
}

function abc_admin_hw_edit()
{
    echo 'Edit step triggered';
    abc_admin_hw_list();
}
~~~

And to finish it off, let's add a couple of hyperlinks to your `abc_admin_hw_list()` function that allows you to simulate the user
selecting stuff in your interface:

~~~ php
function abc_admin_hw_list()
{
    pagetop('My plugin panel');
    echo '<ul>';
    echo '<li><a href="?event=abc_admin_hello_world&step=abc_admin_hw_save">Click to Save</a></li>';
    echo '<li><a href="?event=abc_admin_hello_world&step=abc_admin_hw_edit">Click to Edit</a></li>';
    echo '</ul>';
}
~~~

When you select a link you'll see (above pagetop) that the relevant function is being called. That's how you differentiate between steps and do things. In this example, we might do something (e.g. update a database table) and then show the list again. You could use the
different steps to display completely different interface elements on your new tab. The limit is your imagination.

Here's the final code for the admin side example:

~~~ php
// Setup the panel and callback

if (txpinterface === 'admin') {
    add_privs('abc_admin_hello_world', '1'); // Publishers only
    register_tab('extensions', 'abc_admin_hello_world', 'My plugin');
    register_callback('abc_admin_hw_gui', 'abc_admin_hello_world');
}

/**
 * Step Dispatcher.
 */
function abc_admin_hw_gui($evt, $stp)
{
    if (!$stp or !in_array($stp, array(
        'abc_admin_hw_save',
        'abc_admin_hw_edit',
    ))) {
    abc_admin_hw_list();
    } else {
        $stp();
    }
}

/**
 * List of links.
 */
function abc_admin_hw_list()
{
    pagetop('My plugin panel');
    echo '<ul>';
    echo '<li><a href="?event=abc_admin_hello_world&step=abc_admin_hw_save">Click to Save</a></li>';
    echo '<li><a href="?event=abc_admin_hello_world&step=abc_admin_hw_edit">Click to Edit</a></li>';
    echo '</ul>';
}

/**
 * Save something.
 */
function abc_admin_hw_save()
{
    echo 'Save step triggered';
    abc_admin_hw_list();
}

/**
 * Edit something.
 */
function abc_admin_hw_edit()
{
    echo 'Edit step triggered';
    abc_admin_hw_list();
}
~~~

Now go and create something cool for Textpattern!

[^1]: The term "panel" here is synonymous with the term "tab" (as you'll see used in code examples later with `register_tab()`), which is an older term for the admin-side navigation links and their associated views. "Tab" comes from the concept of folder tabs, which is what the admin-side was originally designed to look like - a series of primary and secondary folders with "tab" links for navigating the admin-side. In documentation we now call these locations "panels" (moving away from the folder tabs concept), but there are still artefacts in the code. Just think of "panels" and "tabs" as the same thing.

[^2]: The Textpattern presentational style guide defines using sentence-case for all user-interface titles, headings, and labels. In other words, "My plugin" is correct, but "My Plugin" (capital-case), would be incorrect. If you don't follow this guideline, your plugin will produce UI content that's inconsistent with the rest of the UI, and won't look very professional.
