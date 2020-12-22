---
layout: document
category: Tags reference
published: true
title: Variable
description: The variable tag is both a single and a container tag which sets or returns a user-defined global variable.
tags:
  - Programmer tags
---

# Variable

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:variable />
~~~

The **variable** tag is both a *single* and a *container* tag which sets or returns a user-defined global variable for use on the current page.

If used as a *container* tag, the result of the contained statements are assigned to the given variable `name`, like this:

~~~ html
<txp:variable>
    …contained content…
</txp:variable>
~~~

Note: Avoid entering white space characters for better code readability between the opening and closing *variable* tags, they will lead to falsified results in the [if_variable](/tags/if_variable) evaluation. If using the tag as a container, however, you can apply the `trim` or `escape="trim"` attributes to the variable tag to remove surrounding whitespace from the tag definition.
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
: (Optionally) define the value to which you wish to set the variable. Without this attribute or some contained content, the tag outputs the current value assigned to the named variable.

## Examples

### Example 1: Store site-wide constants

Allows you to define constants at a single location (e.g. in form templates, or even at the top of page templates) and use them elsewhere later on.

Somewhere at the very beginning of a template you would define names and values, just like you do on a desktop calculator's 'memory' keys:

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
        <txp:hide>Set the homepage variable here: visitor is not on a search or category page</txp:hide>
        <txp:variable name="homepage" value="1" />
    </txp:if_category>
</txp:if_search>
~~~

Later down the Page template or in a separate Form template you can read the attribute's value and test it. Using previously set values in this manner allows you to make your own custom conditionals:

~~~ html
<txp:if_variable name="homepage" value="1">
    …render some homepage-specific content…
</txp:if_variable>
~~~

Other tags used: [else](/tags/else), [hide](/tags/hide), [if_category](/tags/if_category), [if_search](/tags/if_search), [if_variable](/tags/if_variable), [search_term](/tags/search_term).

### Example 2: Increment a counter

Say you were listing articles and wanted to find out how many of them were in a particular category. Inside an article list form/container:

~~~ html
<txp:if_article_category name="sales">
    <txp:variable name="cat_count" add="1" />
</txp:if_article_category>
~~~

Sometime later, display the counter:
~~~ html
Number of articles in the 'sales' category: <txp:variable name="cat_count" />
~~~

Other tags used: [if_article_category](/tags/if_article_category)

### Example 3: Decrement a counter

Say you were listing articles and wanted to find out how many of them were *not* in a particular category. You could use the above example with the `not` attribute:

~~~ html
<txp:if_article_category not name="sales">
    <txp:variable name="cat_count" add="1" />
</txp:if_article_category>
~~~

Or, since you know that the default `limit` is 10, you can start the counter there and subtract from this value by adding `-1` inside an article list form/container each time you encounter an article that matches:

~~~ html
<txp:variable name="cat_count" value="10" />

<txp:if_article_category name="sales">
    <txp:variable name="cat_count" add="-1" />
</txp:if_article_category>
~~~

Sometime later, display the counter:
~~~ html
Number of articles not in the 'sales' category: <txp:variable name="cat_count" />
~~~

Other tags used: [if_article_category](/tags/if_article_category)

### Example 4: Output a counter in an article list

~~~ html
<txp:article wraptag="p" break="br">
    Article <txp:variable name="counter" add="1" output />: <txp:title />
</txp:article>
~~~

Other tags used: [article](/tags/article), [title](/tags/title).

### Example 5: Use any tag's value as a conditional expression

There are two parts to making this work. First a variable is created that stores the output of any tag as the `value` (the `name` is arbitrary)…

~~~ html
<txp:variable name="foo" value='<txp:permlink />' />
~~~

Note: A Textpattern tag, used as an attribute (a parsed attribute), must be surrounded with single quotes.
{: .alert-block .information}

Alternatively, to avoid complicated quote escaping inside the `value` attribute, you can use the tag as a container:

~~~ html
<txp:variable name="foo"><txp:permlink /></txp:variable>
~~~

The variable 'foo' can then be used as a conditional later in the code:

~~~ html
<txp:if_variable name="foo" value="example.com/bar/baz">
    …do this…
<txp:else />
    …do that…
</txp:if_variable>
~~~

The conditional is saying: if there is a variable named 'foo' having a specific value of 'example.com/bar/baz', then output what is in the container, i.e. 'do this if it matches, else do that'.

Other tags used: [if_variable](/tags/if_variable).

### Example 6: Check if the list of articles is of a given pagination group

For convenience, set a variable called `page` to the value of the `pg` URL parameter:

~~~ html
<txp:variable name="page"><txp:page_url type="pg" /></txp:variable>
~~~

Later, you can check which paginated set of results the visitor is viewing. To take action if the article list is on the first page of results:

~~~ html
<txp:if_variable name="page" value="1">
    This is the first page.
<txp:else />
    This is page number <txp:variable name="page" />.
</txp:if_variable>
~~~

To take action if the article list is greater than the fifth page of results, you have a few options:

**Option 1: Use a regular expression pattern**

~~~ html
<txp:if_variable name="page" value="^([6-9]|\d\d)" match="pattern">
    This is greater than the fifth page.
</txp:if_variable>
~~~

The expression `^([6-9]|\d\d)` means: does the page value start with a 6, 7, 8, or 9, or is double digits.

**Option 2: Use <txp:evaluate>**

~~~ html
<txp:evaluate query='<txp:variable name="page" /> > 5'>
    This is greater than the fifth page.
</txp:evaluate>
~~~

Other tags used: [else](/tags/else), [evaluate]/tags/evaluate, [if_variable](/tags/if_variable), [page_url](/tags/page_url).

### Example 7: Link to the latest article in a section

~~~ html
<txp:variable name="is_latest"><txp:page_url type="most-recent" /></txp:variable>
...
<txp:if_variable name="is_latest" value="1">
    <txp:article limit="1" />
</txp:else>
    <txp:article />
</txp:if_variable>
~~~

Using the above code in a page template would permit you to use example.org/articles?latest=1 as a URL and have Textpattern capture the 'latest' parameter and take action to display just the most recent article in that section.

Other tags used: [article](/tags/article), [else](/tags/else), [if_variable](/tags/if_variable), [page_url](/tags/page_url).

## Genealogy

### Version 4.7.2

`add`, `output`, `reset` and `separator` attributes added.

### Version 4.0.7

Tag support added.
