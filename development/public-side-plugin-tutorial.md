---
layout: document
category: Development
published: true
title: Public-side plugin tutorial
description: This tutorial will walk you through the basics of creating a simple public-side plugin.
---

# Public-side plugin tutorial

This tutorial will walk you through the basics of creating a simple public-side plugin; not to be used, exactly, but so you understand what's involved.

You might also like to see the [Admin-side plugin tutorial](/development/admin-side-plugin-tutorial).

**Contents**

* Table of contents
{:toc}

## Overview

This tutorial assumes you have a working knowledge of [PHP](https://php.net), a Textpattern website ready for use, and the [ied_plugin_composer](https://github.com/Bloke/ied_plugin_composer) plugin installed.

The plugin in this tutorial will:

1.  Create and register a Textpattern tag
2.  Read some optional attributes
3.  Output some text when that tag is called
4.  Use Textpattern's [else](/tags/else) tag

Since all plugins must use a [three-character alphanumeric prefix](/brand/author-prefixes-and-registration), we're going to use **abc** in this tutorial, which is reserved for documentation purposes.

## Your first plugin and tag

Log into Textpattern's back-end, and open [ied_plugin_composer](https://github.com/Bloke/ied_plugin_composer).

Create a new plugin called **abc_hello_world** and put this code in:

~~~ php
// Register the new tag with Textpattern.
\Txp::get('\Textpattern\Tag\Registry')
   ->register('abc_hello_world');

/**
 * Tag to output hello world.
 */
function abc_hello_world($atts, $thing = null)
{
    return 'Hello Textpattern world!';
}
~~~

Save the code and enable the plugin. There you go, your first plugin tag.

Your new Textpattern tag is now ready for use. Give it a try. Add `<txp:abc_hello_world />` in a Textpattern *page*, *form*, or even in an *article*. If you have enabled [short-tags](/tags/tag-basics/core-short-tags) you can use the shorthand `<abc::hello_world />` instead.

Cool, but not very useful yet, admittedly.

## Adding plugin attributes

After registering the tag, in the function signature itself, you'll see reference to two variables: `$atts` and `$thing`. These are Textpattern conventions:

-   `$atts` will hold any attributes that have been used inside your tag.
-   `$thing` holds the contents of any container if your tag can be used that way.

Notice that `$thing` is set to `null` by default. This is good practice.

As it stands our plugin does not have any attributes. Let's change that:

~~~ php
function abc_hello_world($atts, $thing = null)
{
    extract(lAtts(array(
        'name' => '',
        'text' => 'Pleased to meet you.',
    ), $atts));

    return 'Hello '.$name.'! '.$text;
}
~~~

The `lAtts()` function is a Textpattern function that helps you deal with tag attributes easily. It takes care of all the drudgery of making sure that users are not trying to use badly named or incorrect attribute names. It takes an array as its only argument, containing a list of all your attributes and any default values.

In this example, we have defined two attributes: `name` (which has no default value) and `text`, which has some default content.

If you refresh your site's page you'll now see:

~~~
Hello ! Pleased to meet you.
~~~

Change your tag to read `<txp:abc_hello_world name="Fred" />` and notice the difference. Textpattern has read your attribute and used it; the `extract()` function takes care of making the variable available in your code simply as `$name`.

You can also use the `text` attribute. If you do, notice the default value you set up is replaced with whatever is used in the plugin's tag.

## Creating conditional output

To finish off this little tutorial, we'll alter the plugin to work as a conditional tag and take action based on the name given.

Consider this code:

~~~ php
function abc_hello_world($atts, $thing = null)
{
    extract(lAtts(array(
        'name' => '',
    ), $atts));

    $result = ($name == 'Admin') ? 1 : 0;

    return parse($thing, $result);
}
~~~

It's a stupid example, but change your Textpattern tag to the following:

~~~ html
<txp:abc_hello_world name="Fred">
    <p>Welcome admin</p>
<txp:else />
    <p>Welcome normal user person</p>
</txp:abc_hello_world>
~~~

What we're doing here is checking if the tag's `name` attribute is equal to "**Admin**". If it is, the conditional branch will execute. If not, the [else](/tags/else) branch will run.

The Textpattern function `parse()` (which calls the tag parser) does the magic for us by fetching and parsing the relevant part of `$thing` (the container) depending on whether the value of `$result` is true or false.
