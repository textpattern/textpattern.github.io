---
layout: document
category: Tags
published: true
title: Recent articles
description: The recent_articles tag is a single tag which is used to produce a list of permanent links to recent articles by title.
tags:
  - Article tags
---

# Recent articles

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:recent_articles />
~~~

The **recent_articles** tag is a *single* tag which is used to produce a list of permanent links to recent articles by title. If you require the additional flexibility provided by a *container* tag, you might want to use [article_custom](/tags/article_custom) instead.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`category="category name"`
: Restrict to articles from specified category/categories. Note: the category names may be different to the title you typed when you created the category, as the names are sanitized for URL use. Check the Categories panel to ensure you are using the correct names.
: **Values:** (comma separated list of) category name(s).
: **Default:** unset, retrieves from all categories.

`limit="integer"`
: The number of articles to display.
: **Default:** `10`.

`no_widow="boolean"`
: Control widows](https://en.wikipedia.org/wiki/Widows_and_orphans) and overrule 'widows' setting in the [Preferences panel.
: **Values:** `0` allow the last word in the title to appear on its own line, i.e. the title content is rendered unchanged, `1` ensure the last word is not left on its own line - Textpattern inserts an invisible code (a non-breaking space) between the last two words.
: **Default:** as set in the Preferences panel.

`offset="integer"` <span class="footnote warning">v4.6.0+</span>
: The number of articles to skip.
: **Default:** `0`.

`section="section name"`
: Restrict to articles from specified section(s).
: **Values:** (comma separated list of) section name(s).
: **Default:** unset, retrieves from all sections.

`sort="sort value(s)"`
: How to sort the resulting article list. Specify a value from the ones below, followed by a space and then add either `asc` or `desc` to sort in ascending or descending order, respectively. **Note:** values are case sensitive on some servers.
: **Values:** \\
`AuthorID` (author name). \\
`Category1`. \\
`Category2`. \\
`comments_count`. \\
`custom_n` where `n` is the number of your custom field - for numeric values use `(custom_n+0)`. \\
`ID` (article id#). \\
`Image` (article image id#). \\
`Keywords`. \\
`LastMod` (date last modified). \\
`LastModID` (author name of last modification). \\
`Posted` (date posted). \\
`rand()` ([random](https://dev.mysql.com/doc/refman/5.7/en/mathematical-functions.html#function_rand)). \\
`Section`. \\
`Status`. \\
`Title`. \\
`url_title`.
: **Default:** `Posted desc`.

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

`label="text"`
: Label prepended to item.
: **Default:** unset (but see [label cross-reference](/tags/tag-attributes-cross-reference#label) for exceptions).

`labeltag="element"`
: HTML element to wrap (markup) label, specified without brackets (e.g. `labeltag="h3"`).
: **Default:** unset.

`wraptag="element"`
: HTML element to wrap (markup) list block, specified without brackets (e.g. `wraptag="ul"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Labelled list of recent articles

~~~ html
<txp:recent_articles label="Latest and greatest" limit="5" />
~~~

Produces a list of the 5 most recent articles, along with the label 'Latest and greatest'.

### Example 2: List of recent articles by category, with a heading

~~~ html
<txp:recent_articles label="Latest" labeltag="h3" break="li" wraptag="ol" category="code" sort="Section desc" />
~~~

Produces a numerical list of the 5 most recent articles categorized with `code`, along with the heading 'Latest'.

### Example 3: Offsetting a recent article list

~~~ html
<txp:recent_articles label="Other recent articles" limit="5" offset="1" />
~~~

Produces a list of the 5 most recent articles *apart* from the most recent one, along with the label 'Other recent articles'.

## Genealogy

### Version 4.7.0

`breakby` attribute added.

### Version 4.6.0

`offset` attribute added.

### Version 4.0.6

Added support for comma separated lists for `category` and `section` attributes.
