---
layout: document
category: tags
published: true
title: "Link description"
tags:
  - Link tags
---

# Link description

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:link_description />
~~~

The **link_description** tag is a *single* tag which is used to return the text from the 'Description' field as defined within the [Links administration panel](../administration/links-panel). This tag is used in a 'links' type form or inside a [linklist](linklist) container tag to display information about the current link.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"`
: Escape HTML entities such as `<`, `>` and `&`.
: **Values:** `html` or unset.
: **Default:** `html`;

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** tag name or unset (see @@class cross-reference@@).

`label="text"`
: Label prepended to item.
: **Default:** unset (but see @@label cross-reference@@ for exceptions).

`labeltag="element"`
: HTML element to wrap (markup) label, specified without brackets (e.g. `labeltag="h3"`).
: **Default:** unset.

`wraptag="element"`
: HTML element to wrap around description, specified without brackets (e.g. `wraptag="div"`).
: **Default:** unset (but see @@wraptag cross-reference@@ for exceptions).

## Examples

### Example 1: Display a link and its description field contents

~~~ html
<p>
    <txp:link />
    <br />
    <txp:link_description />
</p>
~~~

Other tags used: [link](link).

## Genealogy

### Version 4.0.7

Default value for `escape` attribute changed from unset to `html`.
