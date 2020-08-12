---
layout: document
category: Tags
published: true
title: Linklist
description: The linklist tag is used to produce a list of links from the predefined list created on the Links panel.
tags:
  - Link tags
  - List tags
---

# Linklist

**On this page**:

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:linklist />
~~~

The **linklist** tag is a *single* or a *container* tag which is used to produce a list of links from the predefined list created on the [Links panel](/administration/links-panel).

If used as a container, it must be specified as an opening and closing pair of tags, like this:

~~~ html
<txp:linklist>
    …contained statements…
</txp:linklist>
~~~

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`author="author name"` <span class="footnote warning">v4.3.0+</span>
: Restrict to links with the specified author login name.
: **Default:** unset.

`auto_detect="string context"` <span class="footnote warning">v4.3.0+</span>
: List of Textpattern contexts to consider when automatically searching for links. If you wish to turn off the automatic check, set this to `auto_detect="`.
: **Values:** `category` (to look in the URL for a category list) and/or `author` (to look in the URL for an author list).
: **Default:** `category, author`.

`category="category name(s)"`
: Restrict to links from specified categories.
: **Values:** (comma separated list of) category name(s). **Note:** category names may be different to the 'Title' you typed when you created the category, as the names are sanitized for URL use. Check the [Categories panel](/administration/categories-panel) to ensure you are using the correct names.
: **Default:** unset.

`form="form name"`
: Use specified form.
: **Default:** `plainlinks`.

`id="integer"` <span class="footnote warning">v4.5.0+</span>
: Filter the links by this list of `id`s assigned at link creation time. The IDs can be found on the [Links panel](/administration/links-panel).
: **Default:** unset.

`limit="integer"`
: Number of links to display.
: **Default:** `0` (no limit).

`offset="integer"`
: The number of links to skip.
: **Default:** `0`.

`pageby="integer or limit"` <span class="footnote warning">v4.3.0+</span>
: Number of links to jump each page. Without this attribute, you cannot navigate using the [newer](/tags/newer) and [older](/tags/older) tags. Usually you will want to track the `limit` attribute. Use `pageby="limit"` to do this, which means you will not have to amend two values if you subsequently decide to alter the `limit`.
: **Default:** unset

`realname="author real name"` <span class="footnote warning">v4.3.0+</span>
: Restrict to links with the specified author name.
: **Default:** unset.

`sort="sort value(s)"`
: How to sort the resulting link list. Specify a value from the ones below, followed by a space and then add either `asc` or `desc` to sort in ascending or descending order, respectively.
: **Values:** \\
`category`. \\
`date`. \\
`description`. \\
`id` (link id#). \\
`linkname`. \\
`linksort`. \\
`rand()` ([random](https://dev.mysql.com/doc/refman/5.7/en/mathematical-functions.html#function_rand)). \\
`url`.
: **Default:** `linksort asc`.

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

### Example 1: List of links from specified category

~~~ html
<txp:linklist form="Links" category="general" limit="10" sort="linksort" wraptag="p" />
~~~

### Example 2: An ordered list of links

~~~ html
<txp:if_category name="100">
    <txp:linklist label="First Floor" category="First" wraptag="ol" break="li" />
</txp:if_category>
<txp:if_category name="200">
    <txp:linklist label="Second Floor" category="Second" wraptag="ol" break="li" />
</txp:if_category>
~~~

This example uses the displayed page's category as the criterion for choosing the linklist's category.

Other tags used: [if_category](/tags/if_category).

### Example 3: Used as a container tag

~~~ html
<txp:linklist wraptag="ol" break="li">
    <txp:link /><br />
    <txp:link_description /><br />
    <txp:linkdesctitle />
</txp:linklist>
~~~

The tags within the container are repeated for each link provided by the linklist tag.

Other tags used: [link](/tags/link), [linkdesctitle](/tags/linkdesctitle), [link_description](/tags/link_description).

## Genealogy

### Version 4.7.0

`breakby` attribute added.

### Version 4.5.0

`id` attribute added.

### Version 4.3.0

`author` and `realname` attributes added. \\
`auto_detect` attribute added to allow automatic (URL-based) contextual listings. \\
`pageby` attribute added to enable paging via [newer](/tags/newer) and [older](/tags/older) tags.
