---
layout: document
category: Tags
published: true
title: Variable
description: The variable tag is both a single and a container tag which sets or returns a user-defined global variable.
tags:
  - Programmer tags
---

# Variable

**On this page**:

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:variable />
~~~

The **variable** tag is both a *single* and a *container* tag which sets or returns a user-defined global variable.

If used as a *container* tag, the result of the contained statements are assigned to the given variable `name`, like this:

~~~ html
<txp:variable>
    …contained statements…
</txp:variable>
~~~

Note: Avoid entering white space characters for better code readability between the opening and closing *variable* tags, they will lead to falsified results in the [if_variable](/tags/if_variable) evaluation.
{: .alert-block .information}

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`add="value"` <span class="footnote warning">v4.7.2+</span>
: Adds `value` to the current variable value. If both are numeric and `separator` is not set, the result is their sum. Otherwise, `value` is appended as a string, optionally separated by `separator` (see below).
: **Default:** unset.

`name="text"`
: The variable name for which you wish to assign a value. Valid variable names must not contain any single or double quotes.

`output="boolean"` <span class="footnote warning">v4.7.2+</span>
: Force the variable output, e.g. `<txp:variable name="name" value="value" output />`.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`reset="value"` <span class="footnote warning">v4.7.2+</span>
: A shortcut for `<txp:variable name="name" /><txp:variable name="name" value="value" />`. Outputs the old value and then assigns the new one.
: **Default:** unset.

`separator="string"` <span class="footnote warning">v4.7.2+</span>
: A symbol or a string used to separate values appended via `add` attribute (see above).
: **Default:** unset.

`value="value"`
: (Optionally) define the value to which you wish to set the variable. Without this attribute, the tag outputs the current value assigned to the named variable.

## Examples

### Example 1: Store site-wide constants

Allows you to define constants at a single location (e.g. [Form templates](/themes/form-templates-explained), or even at the top of [Page templates](/themes/page-templates-explained)) and use them elsewhere later on.

Somewhere at the very beginning of a template you would define names and values, just like you do on your desktop calculator's 'memory' keys:

~~~ html
<txp:if_search>
    <title>My blog search results: <txp:search_term /></title>
    <meta name="description" content="Blog article search results.">
    <meta name="robots" content="none">
<txp:else />
    <txp:if_category>
        <title>Blog category: <txp:category title="1" /></title>
        <meta name="description" content="Blog article ‘<txp:category title="1" />’ category archive.">
        <meta name="robots" content="noindex, follow">
    <txp:else />
        <title>My blog homepage</title>
        <meta name="description" content="The great homepage of my great blog.">
        <meta name="robots" content="index, follow">
        <txp:variable name="homepage" value="1" />
    </txp:if_category>
</txp:if_search>
~~~

Later down the Page template or in a separate Form template you can read the attribute values previously set conditionals come in handy at times:

~~~ html
<txp:if_variable name="homepage" value="1">
    …homepage content…
</txp:if_variable>
~~~

Other tags used: [else](/tags/else), [if_category](/tags/if_category), [if_search](/tags/if_search), [if_variable](/tags/if_variable), [search_term](/tags/search_term).

### Example 2: Use any tag's value as a conditional expression

There are two parts to making this work. First a variable is created that stores the output of any tag as the `value` (the `name` is arbitrary)…

~~~ html
<txp:variable name="foo" value='<txp:permlink />' />
~~~

Note: A Textpattern tag, used as an attribute (a parsed attribute), must be surrounded with single quotes.
{: .alert-block .information}

The variable 'foo' can then be used as a conditional later in the code.

~~~ html
<txp:if_variable name="foo" value="example.com/bar/baz">
    …do this…
</txp:if_variable>
~~~

The conditional is saying if there is a variable named 'foo' having a specific value of 'example.com/bar/baz', then output what is defined, i.e. 'do this'.

Other tags used: [if_variable](/tags/if_variable).

### Example 3: Check if this is the first page of a page group

~~~ html
<txp:variable name="page" value='<txp:page_url type="pg" />' />
<txp:if_variable name="page" value="1">
    This is the first page.
<txp:else />
    This is page number <txp:variable name="page" />.
</txp:if_variable>
~~~

Other tags used: [else](/tags/else), [if_variable](/tags/if_variable), [page_url](/tags/page_url).

### Example 4: Output a counter in an article list

~~~ html
<txp:article wraptag="p" break="br">
    Article <txp:variable name="counter" add="1" output />: <txp:title />
</txp:article>
~~~

Other tags used: [article](/tags/article), [title](/tags/title).

## Genealogy

### Version 4.7.2

`add`, `output`, `reset` and `separator` attributes added.

### Version 4.0.7

Tag support added.
