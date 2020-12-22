---
layout: document
category: Tags
published: true
title: Keywords
description: Display a list af article 'keywords'.
tags:
  - Markup tags
---

# Keywords

**Contents**

* Table of contents
{:toc}

~~~ html
<txp:keywords />
~~~

The **keywords** tag can be used as a *single* tag or a *container* tag that Textpattern will replace with the keywords associated with the article being displayed. For keywords metadata, see [meta_keywords](/tags/meta_keywords) tag.

Note: Textpattern 4.6.x warns this tag is deprecated and to use the [meta_keywords](/tags/meta_keywords) tag instead. This is incorrect advice; the tag is reinstated as of Textpattern 4.7.0. Please ignore the warning.
{: .alert-block .information}

## Attributes

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`break="value"`
: Where value is an HTML element, specified without brackets (e.g. `break="li"`) or some string to separate list items.
: **Default:** `br` (but see [break cross-reference](/tags/tag-attributes-cross-reference#break) for exceptions).

`breakby="integer"` <span class="footnote warning">v4.7.0+</span>
: Used to group list items when separating by `break`. Possible values are lists of integers, like `2` (groups of 2 items) or `1,2` (alternate groups of 1 and 2 items).
: **Default:** `1` (actually unset).

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** tag name or unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`wraptag="element"`
: HTML element to wrap (markup) list block, specified without brackets (e.g. `wraptag="ul"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Show a list of keywords for an article, if they exist
	
~~~ html
<txp:if_keywords>
    <p>
        Keywords:
        <txp:keywords wraptag="ul" break="li" />,
    </p>
</txp:if_keywords>
~~~

Other tags used: [if_keywords](/tags/if_keywords).

## Genealogy

### Version 4.7.0

Can be used as a container tag. \\
`break`, `breakby`, `class` and `wraptag` attributes added.
