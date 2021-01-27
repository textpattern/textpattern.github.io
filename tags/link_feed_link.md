---
layout: document
category: Tags
published: true
title: Link feed link
description: Textpattern will replace this tag with an anchor to the site's 'links' RSS feed.
tags:
  - Link tags
---

# Link feed link

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:link_feed_link />
~~~

The **link_feed_link** tag is a *single* tag. Textpattern will replace this tag with an anchor to the site's 'links' RSS feed.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`category="category name"`
: Restrict to specified category. Note: the category name may be different to the title you typed when you created the category, as the names are sanitized for URL use. Check the Categories panel to ensure you are using the correct name.
: **Values:** category name.
: **Default:** current category.

`flavor="value"`
: Whether to output a link to the RSS or Atom version of the feed.
: **Values:** `rss` or `atom`.
: **Default:** `rss`.

`format="value"` <span class="footnote warning">v4.0.4+</span>
: Whether to output HTML `<a>` tag or `<link>` tag.
: **Values:** `a` or `link`.
: **Default:** `a`.

`title="value"`
: [HTML title attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes#title) to be applied to link tag.
: **Default:** depends upon `flavor` used, either `RSS feed` or `Atom feed`.

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

Note: `label` and `wraptag` attributes are applicable only when using `format` of `a` (`label` used as link text).
{: .alert-block .information}

## Examples

### Example 1: Atom feed link with custom label

~~~ html
<txp:link_feed_link flavor="atom" label="Commerce links" />
~~~

## Genealogy

### Version 4.3.0

`class` attribute added.

### Version 4.0.4

`format` attribute added.
