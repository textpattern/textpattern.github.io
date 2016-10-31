---
layout: document
category: Tags
published: true
title: "Related articles"
tags:
  - Article tags
  - List tags
---

# Related articles

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:related_articles>
~~~

The **related_articles** tag can be used as either a *single* tag or a *container* tag, and is used to produce a list of related (by category) articles.

If used as a container, it must be specified as an opening and closing pair of tags, like this:

~~~ html
<txp:related_articles>
    ...contained statements...
</txp:related_articles>
~~~

This is equivalent to putting the contained statements into a form named 'my_form' and using `<txp:related_articles form="my_form" />`.

Related matches are selected as follows:

If a match to category 1 ([category1](category1)) or category 2 ([category2](category2)) of the individual article being displayed is found in either category 1 or category 2 of any other article in the database, it will cause that article to be listed as related.

If category 1 of the individual article being displayed is left blank and category 2 is not blank, then all other articles are selected as being related. If both categories are left blank, then no articles are selected.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`form="form name"`
: Use specified form.
: **Default:** unset. If left empty, the permlinked article title(s) will be displayed.

`limit="integer"`
: Number of articles to display.
: **Default:** `10`.

`match="match type"`
: Restrict to articles related by specified category, author, keywords and/or custom field (when matching by custom fields, match type is `exact`).
: Values (comma separated): \\
`author`. \\
`category1`. \\
`category2`. \\
`customfieldname` where `customfieldname` is the name of your custom field. \\
`keywords`.
: **Default:** `category1,category2`.

`no_widow="boolean"`
: Control [widows](http://en.wikipedia.org/wiki/Widows_and_orphans) and overrule 'widows' setting in the [Preferences administration panel](../administration/preferences-panel).
: **Values:** `0` allow the last word in the title to appear on its own line, i.e.,the title content is rendered unchanged, `1` ensure the last word is not left on its own line - Textpattern inserts an invisible code (a non-breaking space) between the last two words.
: **Default:** as set in the [Preferences administration panel](../administration/preferences-panel).

`offset="integer"`
: The number of articles to skip.
: **Default:** `0`.

`section="section name(s)"`
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

### Example 1: Labelled list of related articles

~~~ html
<txp:related_articles label="Related to this:" limit="5" />
~~~

### Example 2: Related articles as an unordered list

~~~ html
<txp:related_articles label="Related" limit="10" break="li" wraptag="ul" />
~~~

### Example 3: Used as a container tag

~~~ html
<txp:related_articles label="Related" `labeltag="h3"` limit="10" break="li" wraptag="ul">
    <txp:permlink>
        <txp:title />
    </txp:permlink>
    by
    <txp:author />
</txp:related_articles>
~~~

Other tags used: [permlink](permlink), [title](title), [author](author).

## Genealogy

### Version 4.6.0

`offset` attribute added. \\
`match` attribute allows author, keywords and custom field values.

### Version 4.0.7

Can be used as a container tag. \\
`form` and `no-widow` attributes added.

### Version 4.0.6

Support added for comma separated list for `section` attribute.
