---
layout: document
category: tags
published: true
title: "Recent articles"
tags:
  - Article tags
---

# Recent articles

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:recent_articles />
~~~

The **recent_articles** tag is a *single* tag which is used to produce a list of permanent links to recent articles by title.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`category="category name"`
: Restrict to articles from specified category/categories. Note: the category names may be different to the title you typed when you created the category, as the names are sanitized for URL use. Check the [Categories administration panel](../administration/categories-panel) to ensure you are using the correct names.
: **Values:** (comma separated list of) category name(s).
: **Default:** unset, retrieves from all categories.

`limit="integer"`
: The number of articles to display.
: **Default:** `10`.

`no_widow="boolean"`
: Control [widows](http://en.wikipedia.org/wiki/Widows_and_orphans) and overrule 'widows' setting in the [Preferences administration panel](../administration/preferences-panel).
: **Values:** `0` allow the last word in the title to appear on its own line, i.e.,the title content is rendered unchanged, `1` ensure the last word is not left on its own line - Textpattern inserts an invisible code (a non-breaking space) between the last two words.
: **Default:** as set in the [Preferences administration panel](../administration/preferences-panel).

`offset="integer"`
: The number of articles to skip.
: **Default:** `0`.

`section="section name"`
: Restrict to articles from specified section(s).
: **Values:** (comma separated list of) section name(s).
: **Default:** unset, retrieves from all sections.

`sort="sort value(s)"`
: How to sort resulting list.
: **Values:** \\
`authorid` (author name). \\
`category1`. \\
`category2`. \\
`comments_count`. \\
`custom_n` where `n` is the number of your custom field - for numeric values use `(custom_n+0)`. \\
`id` (article id#). \\
`image` (article image id#). \\
`keywords`. \\
`lastmod` (date last modified). \\
`lastmodid` (author name of last modification). \\
`posted` (date posted). \\
`rand()` ([random](http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html#function_rand)). \\
`section`. \\
`status`. \\
`title`. \\
`url_title`.
: **Default:** `posted desc`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`break="value"`
: Where value is an HTML element, specified without brackets (e.g. `break="li"`) or some string to separate list items.
: **Default:** `br` (but see @@break cross-reference@@ for exceptions).

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
: HTML element to wrap (markup) list block, specified without brackets (e.g. `wraptag="ul"`).
: **Default:** unset (but see @@wraptag cross-reference@@ for exceptions).

## Examples

### Example 1: Labelled list of recent articles

~~~ html
<txp:recent_articles label="Latest and greatest" limit="5" />
~~~

Produces a list of the 5 most recent articles, along with the label 'Latest and greatest'.

### Example 2: List of recent articles by category, with a heading

~~~ html
<txp:recent_articles label="Latest" `labeltag="h3"` break="li" wraptag="ol" category="code" sort="Section desc" />
~~~

Produces a numerical list of the 5 most recent articles categorized with `code`, along with the heading 'Latest'.

### Example 3: Offsetting a recent article list

~~~ html
<txp:recent_articles label="Other recent articles" limit="5" offset="1" />
~~~

Produces a list of the 5 most recent articles *apart* from the most recent one, along with the label 'Other recent articles'.

## Genealogy

### Version 4.6.0

`offset` attribute added.

### Version 4.0.6

Added support for comma separated lists for `section` and `category` attributes.
