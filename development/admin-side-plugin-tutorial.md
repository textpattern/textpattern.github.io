---
layout: document
category: Development
published: true
title: Admin-side plugin tutorial
description: This tutorial walks you through the basics of creating and admin-side plugin.
---

# Admin-side plugin tutorial

This tutorial walks you through the basics of creating an admin-side plugin; it covers functions, callbacks, and the concept of *events* and *steps*.

You might also like to see the [Public-side plugin tutorial](/development/public-side-plugin-tutorial).

**Contents**

* Table of contents
{:toc}

## Tutorial objective

This tutorial assumes you have a working knowledge of [PHP](https://php.net), a Textpattern website ready for use, and the [ied_plugin_composer](https://github.com/Bloke/ied_plugin_composer) plugin installed.

The plugin in this tutorial will:

1. Register its own panel under **Extensions**
2. Output some text on that panel
3. Respond to a plugin *step*

Since all plugins must use a three-character alphanumeric [prefix](/brand/author-prefixes-and-registration),
we're using **abc** in this tutorial, which is reserved for documentation purposes.

## Targeting the admin side

Log into Textpattern and open the [ied_plugin_composer](https://github.com/Bloke/ied_plugin_composer) plugin. Start a new plugin, give it a name, ensure its type is set to *Admin* and open the code panel.

We'll be using a Class to keep the admin-side of your plugin encapsulated and not pollute PHP's global space with too many functions, which requires a little scaffolding to be set up first in the form of a Class and a constructor. You call this class to run your plugin when users perform any admin-side action.

To begin your admin plugin, you need to target the back-end of Textpattern - the 'admin' side (as opposed to the 'public' site). You do that by checking the `txpinterface` constant to see whether the current user is on the admin-side or not, then instantiate your class if they are:

~~~ php
if (txpinterface === 'admin') {
    new abc_admin_hello_world();
}

/**
 * Admin-side plugin to say hello.
 */
class abc_admin_hello_world
{
    /**
     * The plugin's event as registered in Textpattern.
     *
     * @var string
     */
    protected $event = __CLASS__;

    /**
     * Constructor to set up callbacks and environment.
     */
    public function __construct()
    {
    }
}
~~~

Put that code in your plugin, double check the plugin is set to type *Admin*, and save.

Nothing will happen yet, of course, so let's create your plugin's panel under **Extensions**.[^1]

## Creating an Extensions panel

Inside your constructor, add the following:

~~~ php
    add_privs($this->event, '1'); // Publishers only
    register_tab('extensions', $this->event, 'My hello plugin');
~~~

The `add_privs()` function is a necessary step to tell Textpattern who can see the new panel. Consult [User Roles and Privileges](/administration/user-roles-and-privileges) for details.

If you visit the **Extensions** region, you'll see your plugin panel link, **My hello plugin**.[^2] But if you select it nothing much will happen, or you'll probably get some un-styled default content on the screen. Time to give your plugin's panel some content.

## Adding events and steps

You've created a new **Extensions** sub-panel for your plugin, but now you need to give the plugin a function to execute when that sub-panel is selected. To understand what goes on here let's take some time out to reveal Textpattern *events* and *steps*.

For the purposes here, think of an event as a menu item under the **Extensions** region in the Textpattern admin-side UI (i.e. a
sub-panel). Every menu item has its own `event` and there are some built-in ones under each of the menus. For example, the **Content** menu item houses events 'article', 'file' and 'image'; the **Presentation** menu has events 'section' and 'page', and so on.

There are no built-in panels on the **Extensions** panel so you define them. In this case, we've told the system, using `register_tab()`, that your panel (your *event*) is known as **abc_admin_hello_world** (what users will see as **My hello plugin**). So when you target a particular event inside some PHP in the plugin, you tell Textpattern to execute code when someone visits your panel.

A *step* is some action that a user takes when they're in a particular panel; i.e. some action that takes place inside the event that we are interested in. More on steps later. For now you need to tell Textpattern what to do when your plugin's panel link is selected. For this we add `register_callback()` inside your constructor after the `register_tab()` line:

~~~ php
    register_callback(array($this, 'hw_panel'), $this->event);
~~~

That will call the method called `hw_panel()` inside your class when your plugin's event is active. So let's add the method beneath your constructor:

~~~ php
public function hw_panel($evt, $stp)
{
    pagetop('My plugin panel');
    echo 'Hello Textpattern world!';
}
~~~

Now you're getting somewhere! You've just told Textpattern to call the `hw_panel()` function when someone visits the abc_admin_hello_world sub-panel (what users will see labeled as "My hello plugin").

The `pagetop()` function is another Textpattern function that renders the primary navigation regions (**Content**, **Presentation**, **Admin**, etc.) of the admin-side interface. The function's mandatory first argument is the name to display in the browser's `<title>` tag. After that, you can display anything you like; draw buttons, UI elements, text, whatever. The trick then is to make it do something.

## Responding to a plugin step

In the code so far you have done one thing when your plugin's panel -- your event - is executed. In reality you should take any number of actions as people interact with your panel. For example, maybe you want to allow users to save some settings (the **save** step), or **edit** something, or simply **list** some stuff.

Let's prepare your plugin to work with these three steps; **list** is going to be our default step. To do this we're going to rename the existing `hw_panel()` function to reflect its actual implementation; it's now going to simply be renamed `list`. The original `hw_panel()` function is going to become a sort of ***dispatcher*** for steps.

Here's the new architecture, with a couple of hyperlinks in your `list()` function that allows you to simulate the user selecting things in your interface:

~~~ php
/**
 * Plugin dispatcher: handle steps.
 */
public function hw_panel($evt, $stp)
{
    // Only the following steps are valid. The 'false' just states that we are
    // not using admin-side injection defences (CSRF). Steps that commit things
    // to the database or make changes (as opposed to just displaying content)
    // should use 'true'. You must then add a tInput() or form_token() to the
    // payload or your request will be rejected.
    $available_steps = array(
        'edit' => false,
        'list' => false,
        'save' => false, // Should use 'true' in real code
    );

    // bouncer() checks CSRF tokens and if the step is permitted.
    // If not, the default 'list' step is used.
    if (!$stp or !bouncer($stp, $available_steps)) {
        $stp = 'list';
    }

    $this->$stp();
}

/**
 * Display the user interface with some hyperlink actions.
 */
public function list()
{
    pagetop('My plugin panel');
    echo '<h1>Hello Textpattern world!</h1>';
    echo '<ul>';
    echo '<li><a href="?event=abc_admin_hello_world&step=save">Click to Save</a></li>';
    echo '<li><a href="?event=abc_admin_hello_world&step=edit">Click to Edit</a></li>';
    echo '</ul>';
}
~~~

This new method essentially checks to see if there's a `$stp`, or if the name of the step is `list`, `save` or `edit`. If it is, it calls the method with the same name as the step. If there's no step or the step is somehow mistyped or mangled, the default step, `list`, is run instead.

Now let's write methods for the remaining steps:

~~~ php
/**
 * Perform a save action.
 */
public function save()
{
    echo 'Save step triggered';
    $this->list();
}

/**
 * Display user interface form elements to add/edit a record.
 */
public function edit()
{
    echo 'Edit step triggered';
    $this->list();
}
~~~

When you select a link you'll see (above pagetop) that the relevant function is being called. That's how you differentiate between steps and do things. In this example, we might do something (e.g. update a database table) when you save, and then show the list again. You could use the different steps to display completely different interface elements on your new tab. The limit is your imagination.

## Final plugin code

Here's the final code for the admin side example:

~~~ php
if (txpinterface === 'admin') {
    new abc_admin_hello_world();
}

/**
 * Admin-side plugin to say hello.
 */
class abc_admin_hello_world
{
    /**
     * The plugin's event as registered in Textpattern.
     *
     * @var string
     */
    protected $event = __CLASS__;

    /**
     * Constructor to set up callbacks and environment.
     */
    public function __construct()
    {
        add_privs($this->event, '1'); // Publishers only
        register_tab('extensions', $this->event, 'My hello plugin');
        register_callback(array($this, 'hw_panel'), $this->event);
    }

    /**
     * Plugin dispatcher: handle steps.
     */
    public function hw_panel($evt, $stp)
    {
        // Only the following steps are valid. The 'false' just states that we are
        // not using admin-side injection defences (CSRF). Steps that commit things
        // to the database or make changes (as opposed to just displaying content)
        // should use 'true'. You must then add a tInput() or form_token() to the
        // payload or your request will be rejected.
        $available_steps = array(
            'edit' => false,
            'list' => false,
            'save' => false, // Should use 'true' in real code
        );

        // bouncer() checks CSRF tokens and if the step is permitted.
        // If not, the default 'list' step is used.
        if (!$stp or !bouncer($stp, $available_steps)) {
            $stp = 'list';
        }

        $this->$stp();
    }

    /**
     * Display the user interface with some hyperlink actions.
     */
    public function list()
    {
        pagetop('My plugin panel');
        echo '<h1>Hello Textpattern world!</h1>';
        echo '<ul>';
        echo '<li><a href="?event=abc_admin_hello_world&step=save">Click to Save</a></li>';
        echo '<li><a href="?event=abc_admin_hello_world&step=edit">Click to Edit</a></li>';
        echo '</ul>';
    }

    /**
     * Perform a save action.
     */
    public function save()
    {
        echo 'Save step triggered';
        $this->list();
    }

    /**
     * Display user interface form elements to add/edit a record.
     */
    public function edit()
    {
        echo 'Edit step triggered';
        $this->list();
    }
}
~~~

Now go and create something cool for Textpattern!

[^1]: The term "panel" here is synonymous with the term "tab" (as you'll see used in code examples later with `register_tab()`), which is an older term for the admin-side navigation links and their associated views. "Tab" comes from the concept of folder tabs, which is what the admin-side was originally designed to look like - a series of primary and secondary folders with "tab" links for navigating the admin-side. In documentation we now call these locations "panels" (moving away from the folder tabs concept), but there are still artefacts in the code. Just think of "panels" and "tabs" as the same thing.

[^2]: The Textpattern presentational style guide defines using sentence-case for all user-interface titles, headings, and labels. In other words, "My hello plugin" is correct, but "My Hello Plugin" (capital-case), would be incorrect. If you don't follow this guideline, your plugin will produce UI content that's inconsistent with the rest of the UI, and won't look very professional.
