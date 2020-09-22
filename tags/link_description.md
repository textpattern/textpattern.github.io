---
layout: document
category: Tags
published: true
title: Link description
description: The link_description tag is used to return the text from the 'Description' field as defined within the Links panel.
tags:
  - Link tags
---

# Link description

**On this page**:

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:link_description />
~~~

The **link_description** tag is a *single* tag which is used to return the text from the 'Description' field as defined within the [Links panel](/administration/links-panel). This tag is used in a 'links' type form or inside a [linklist](/tags/linklist) container tag to display information about the current link.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"`
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&`.
: **Values:** See the [tag escaping](/tags/learning/#tag-escaping) documentation for all possible values.
: **Default:** `html`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** tag name or unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`label="text"`
: Label prepended to item.
: **Default:** unset (but see [label cross-reference](/tags/tag-attributes-cross-reference#label) for exceptions).

`labeltag="element"`
: HTML element to wrap (markup) label, specified without brackets (e.g. `labeltag="h3"`).
: **Default:** unset.

`wraptag="element"`
: HTML element to wrap around description, specified without brackets (e.g. `wraptag="div"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Display a link and its description field contents

~~~ html
<p>
    <txp:link />
    <br />
    <txp:link_description />
</p>
~~~

Other tags used: [link](/tags/link).

## Genealogy

### Version 4.0.7

Default value for `escape` attribute changed from 'unset' to `html`.
