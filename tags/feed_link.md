---
layout: document
category: Tags
published: true
title: Feed link
description: The feed_link tag is used to output a link to the site's 'articles' RSS feed.
tags:
  - Markup tags
---

# Feed link

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:feed_link>
~~~

The **feed_link** tag can be used as either a *single* or *container* tag and is used to output a link to the site's 'articles' RSS feed. When used as a container tag, it will turn the contents into a link to the feed, otherwise the value of `label` attribute will be used as link text. Should be used in Textpattern [Page templates](/themes/page-templates-explained).

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`category="category name"`
: Restrict to articles from specified category/categories. Note: the category names may be different to the title you typed when you created the category, as the names are sanitized for URL use. Check the [Categories panel](/administration/categories-panel) to ensure you are using the correct names.
: **Values:** (comma separated list of) category name(s).
: **Default:** current category.

`flavor="value"`
: Whether to output a link to the RSS or Atom version of the feed.
: **Values:** `rss` or `atom`.
: **Default:** `rss`.

`format="value"` <span class="footnote warning">v4.0.4+</span>
: Whether to output HTML `<a>` tag or `<link>` tag.
: **Values:** `a` or `link`.
: **Default:** `a`.

`limit="integer"`
: Number of articles to display in the feed.
: **Default:** depends upon [Preferences panel](/administration/preferences-panel) setting.

`section="section name"`
: Restrict to articles from specified section(s).
: **Values:** (comma separated list of) section name(s).
: **Default:** current section.

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
: HTML element to wrap feed link, specified without brackets (e.g. `wraptag="p"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

Note: `wraptag` is applicable only when using `format` of `a`.
{: .alert-block .information}

## Examples

### Example 1: Display an RSS feed link for specific section and category

~~~ html
<txp:feed_link flavor="rss" section="about" category="general" label="XML" wraptag="p" />
~~~

### Example 2: Container example

~~~ html
<txp:feed_link wraptag="p">
    <img src="/path/to/rss-icon.png" alt="RSS">
</txp:feed_link>
~~~

### Example 3: Site wide generic RSS feed

~~~ html
<txp:feed_link section="" category="" />
~~~

Creates a link to the site's feed for articles in all sections and categories. If you omit the `category` and `section` attributes, the feed will default to the current section/category.

## Genealogy

### Version 4.3.0

`class` attribute added.

### Version 4.0.4

`format` attribute added.
