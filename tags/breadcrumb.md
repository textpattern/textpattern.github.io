---
layout: document
category: Tags
published: true
title: Breadcrumb
description: The breadcrumb tag is a single tag which is used to create breadcrumb navigation.
tags:
  - Navigation tags
---

# Breadcrumb

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:breadcrumb />
~~~

The **breadcrumb** tag is a *single* tag which is used to create [breadcrumb navigation](http://en.wikipedia.org/wiki/Breadcrumb_trail). It provides either hyperlinked navigation, or plain text positional display. Breadcrumbs are *not* displayed on the 'default' section (home page) of your site.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`link="value"`
: Whether to hyperlink breadcrumbs.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `1`.

`linkclass="class name"`
: HTML class attribute applied to the breadcrumb links.
: **Default:** unset.

`separator="value"`
: Character to be used as the breadcrumb separator.
: **Default:** ` » `.

`title="boolean"`
: Whether to display the title or not.
: **Values:** `0` (no, display name) or `1` (yes).
: **Default:** `0`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** unset (see [class cross-reference](https://docs.textpattern.io/tags/tag-attributes-cross-reference#class)).

`label="text"`
: Label prepended to item.
: **Default:** unset (but see [label cross-reference](https://docs.textpattern.io/tags/tag-attributes-cross-reference#label) for exceptions).

`wraptag="element"`
: HTML element to wrap breadcrumb block, specified without brackets (e.g. `wraptag="p"`).
: **Default:** unset (but see [wraptag cross-reference](https://docs.textpattern.io/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Display a hyperlinked breadcrumb trail

~~~ html
<txp:breadcrumb label="Navigation" separator="::" link="1" wraptag="p" />
~~~

Provides hyperlinks to sections or categories in a breadcrumb style, linking back to your home page.

### Example 2: Display a text only breadcrumb trail

~~~ html
<txp:breadcrumb label="Navigation" separator="/" link="0" wraptag="p" />
~~~

Provides a breadcrumb guide that reflects where a user is within the site's navigation.

## Genealogy

### Version 4.5.0

Default `class="noline"` for `linkclass` attribute removed (now unset).

### Version 4.3.0

`sep` attribute deprecated and renamed `separator`.
