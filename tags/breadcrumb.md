---
layout: document
category: Tags
published: true
title: Breadcrumb
description: The breadcrumb tag is a single/container tag which is used to create breadcrumb navigation.
tags:
  - Navigation tags
---

# Breadcrumb

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:breadcrumb />
~~~

The **breadcrumb** tag can be used as either a *single* or *container* tag to create [breadcrumb navigation](https://en.wikipedia.org/wiki/Breadcrumb_trail). It provides either hyperlinked navigation, or plain text positional display. Breadcrumbs are *not* displayed on the 'default' section (home page) of your site.

The main part of the breadcrumb (as obtained with `label="" section=""` attributes) is the category path of the given category. If needed, only some parts of this path (e.g. the parent) can be retrieved via `limit` and `offset` attributes.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`category="category name"` <span class="footnote warning">v4.7.0+</span>
: Category to be used as the breadcrumb base.
: **Default:** the current category.

`link="value"`
: Whether to hyperlink breadcrumbs.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `1`.

`limit="integer"` <span class="footnote warning">v4.7.0+</span>
: How many items to include in the category path.
: **Default:** unset.

`linkclass="class name"`
: HTML class attribute applied to the breadcrumb links.
: **Default:** unset.

`offset="integer"` <span class="footnote warning">v4.7.0+</span>
: The offset of the category path. A negative value offsets from the end.
: **Default:** `0` (display the whole path).

`section="string"`
: Section link to prepend to the breadcrumb.
: **Default:** the current section.

`separator="value"`
: Character to be used as the breadcrumb separator.
: **Default:** ` » `.

`title="boolean"`
: Whether to display the title or not.
: **Values:** `0` (no, display name) or `1` (yes).
: **Default:** `0`.

`type="string"` <span class="footnote warning">v4.7.0+</span>
: The type of the viewed resource.
: **Values:** `article`, `file`, `image` or `link`.
: **Default:** the current context (typically `article`).

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`label="text"`
: Label prepended to item.
: **Default:** unset (but see [label cross-reference](/tags/tag-attributes-cross-reference#label) for exceptions).

`wraptag="element"`
: HTML element to wrap breadcrumb block, specified without brackets (e.g. `wraptag="p"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

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

### Example 3: Retrieve the parent of a category

~~~ html
<txp:breadcrumb label="" section="" category="cat" limit="1" offset="-1" />
~~~

## Genealogy

### Version 4.7.0

Can be used as a container tag. \\
`category`, `limit`, `offset` and `type` attributes added.

### Version 4.5.0

Default `class="noline"` for `linkclass` attribute removed (now unset).

### Version 4.3.0

`sep` attribute deprecated and renamed `separator`.
