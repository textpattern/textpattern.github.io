---
layout: document
category: tags
published: true
title: "Variable"
tags:
  - Programmer tags
---

# Variable

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

~~~ html
<txp:variable />
~~~

The **variable** tag is both a __single__ and a __container__ tag which sets or returns a user-defined global variable.

If used as a __container__ tag, the result of the contained statements are assigned to the given variable `name`, like this:

~~~ html
<txp:variable>
    ...contained statements...
</txp:variable>
~~~

Note: Avoid entering white space characters for better code readability between the opening and closing __variable__ tags, they will lead to falsified results in the [if_variable](if-variable) evaluation.
{: .alert-block .information}

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* `name="text"`
The variable name for which you wish to assign a value. Valid variable names must not contain any single or double quotes.
* `value="value"`
(Optionally) define the value to which you wish to set the variable. Without this attribute, the tag returns the current value assigned to the named variable.

## Examples

### Example 1: Store site-wide constants

Allows you to define constants at a single location (e.g. a @@Form@@ template, or even at the top of a @@Page@@ template) and use them elsewhere later on.

Somewhere at the very beginning of a template you would define names and values, just like you do on your desktop calculatorâ€™s “memory” keys:

~~~ html
<txp:if_search>
    <title>My blog search results: <txp:search_term /></title>
    <meta name="description" content="Blog article search results.">
    <meta name="robots" content="none">
<txp:else />
    <txp:if_category>
        <title>Blog category: <txp:category title="1" /></title>
        <meta name="description" content="Blog article ‘<txp:category title="1" />’ category archive.">
        <meta name="robots" content="noindex, follow, noodp, noydir">
    <txp:else />
        <title>My blog homepage</title>
        <meta name="description" content="The great homepage of my great blog.">
        <meta name="robots" content="index, follow, noodp, noydir">
        <txp:variable name="homepage" value="1" />
    </txp:if_category>
</txp:if_search>
~~~

Later down the @@Page@@ template or in a separate @@Form@@ you can read the attribute values previously set conditionals come in handy at times:

~~~ html
<txp:if_variable name="homepage" value="1">
    ...homepage content...
</txp:if_variable>
~~~

Other tags used: [else](else), [if_category](if-category), [if_search](if-search), [if_variable](if-variable), [search_term](search-term).

### Example 2: Use any tag's value as a conditional expression

There are two parts to making this work. First a variable is created that stores the output of any tag as the `value` (the `name` is arbitrary)...

~~~ html
<txp:variable name="foo" value='<txp:permlink />' />
~~~

Note: A Textpattern tag, used as an attribute (a parsed attribute), must be surrounded with single quotes.
{: .alert-block .information}

The variable 'foo' can then be used as a conditional later in the code.

~~~ html
<txp:if_variable name="foo" value="example.com/bar/baz">
    ...do this...
</txp:if_variable>
~~~

The conditional is saying if there is a variable named 'foo' having a specific value of 'example.com/bar/baz', then output what is defined, i.e. 'do this'.

Other tags used: [if_variable](if-variable).

## Genealogy

### Version 4.0.7

Tag support added.
