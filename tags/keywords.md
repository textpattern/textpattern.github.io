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

Textpattern 4.6.x claims this tag is deprecated and to use the [meta_keywords](meta_keywords) tag instead. Due to unforeseen functionality being affected, this is incorrect advice. The tag is reinstated as of Textpattern 4.7.0. Please ignore the warning.
{: .alert-block .warning}

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

~~~ html
<txp:keywords />
~~~

The **keywords** tag can be used as a *single* tag or a *container* tag that Textpattern will replace with the keywords associated with the article being displayed. For keywords metadata, see [meta_keywords](meta_keywords) tag.

## Attributes

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`break="value"`
: Where value is an HTML element, specified without brackets (e.g. `break="li"`) or some string to separate list items.
: **Default:** `br` (but see [break cross-reference](https://docs.textpattern.io/tags/tag-attributes-cross-reference#break) for exceptions).

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** tag name or unset (see [class cross-reference](https://docs.textpattern.io/tags/tag-attributes-cross-reference#class)).

`wraptag="element"`
: HTML element to wrap (markup) list block, specified without brackets (e.g. `wraptag="ul"`).
: **Default:** unset (but see [wraptag cross-reference](https://docs.textpattern.io/tags/tag-attributes-cross-reference#wraptag) for exceptions).

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

Other tags used: [if_keywords](if_keywords).

## Genealogy

### Version 4.7.0

Can be used as a container tag. \\
`break`, `class` and `wraptag` attributes added.
