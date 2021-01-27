---
layout: document
category: Tags
published: true
title: Popup
description: Textpattern will replace this tag with a popup selector for browsing by section or category.
tags:
  - Navigation tags
---

# Popup

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:popup />
~~~

The **popup** tag is a *single* tag. Textpattern will replace this tag with a popup selector for browsing by section or category.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`section="section_name"`
: Jump to the selected category for the named section.
: **Default:** unset.

`this_section="boolean"`
: Jump to the selected category for the currently active section.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`type="type"`
: **Values:** `section`, `category`.
: **Default:** `category`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"` <span class="footnote warning">v4.3.0+</span>
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** tag name or unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`label="text"`
: Label prepended to item.
: **Default:** unset (but see [label cross-reference](/tags/tag-attributes-cross-reference#label) for exceptions).

`wraptag="element"`
: HTML element to wrap (markup) list block, specified without brackets (e.g. `wraptag="ul"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Browse by category popup selector

~~~ html
<txp:popup type="category" wraptag="p" />
~~~

### Example 2: Popup selector with custom label

~~~ html
<txp:popup label="Browse this site" type="category" wraptag="p" />
~~~

## Genealogy

### Version 4.6.0

`type` attribute also accepts full string name instead of just `s` and `c`.

### Version 4.3.0

`class` attribute added.
