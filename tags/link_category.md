---
layout: document
category: Tags
published: true
title: Link category
description: The link_category tag is a single tag which returns the link category as text.
tags:
  - Link tags
---

# Link category

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:link_category />
~~~

The **link_category** tag is a *single* tag which returns the link category as text. This tag is used in Textpattern 'link' type [Form templates](/themes/form-templates-explained) or inside the [linklist](/tags/linklist) container tag to return information about the current link in a list of links.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`title="boolean"`
: Whether to display the category name or its title.
: **Values:** `0` (name), or `1` (title).
: **Default:** `0`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`label="text"`
: Label prepended to item.
: **Default:** unset (but see [label cross-reference](/tags/tag-attributes-cross-reference#label) for exceptions).

`labeltag="element"`
: HTML element to wrap (markup) label, specified without brackets (e.g. `labeltag="h3"`).
: **Default:** unset.

`wraptag="element"`
: HTML tag to wrap around category text, specified without brackets (e.g. `wraptag="p"`).
: **Default:** unset.

## Examples

### Example 1: Display a link with class attribute

~~~ html
<a href="<txp:link_url />">
    <txp:link_name escape="html" />
</a> | <txp:link_category title="1" />
~~~

Other tags used: [link_url](/tags/link_url), [link_name](/tags/link_name).
