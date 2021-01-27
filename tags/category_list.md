---
layout: document
category: Tags
published: true
title: Category list
description: The category_list tag is a single/container tag which is used to produce a list of linked categories.
tags:
  - List tags
  - Navigation tags
  - Structural tags
---

# Category list

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:category_list />
~~~

The **category_list** tag can be used as either a *single* tag or *container* tag which is used to produce a list of linked categories.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`active_class="class name"` <span class="footnote warning">v4.0.4+</span>
: HTML `class` attribute to be applied to the `active` or current link in a list. Only works in the *single* tag without the `form` attribute.
: **Default:** unset.

`categories="category name(s)"` <span class="footnote warning">v4.0.4+</span>
: Comma-separated list of categories to include, displayed in the order specified (unless overridden by `sort` attribute - see Genealogy section for caveat). Use category names **not** titles here - note that Textpattern automatically converts the names to lowercase and converts spaces to hyphens when they are created.
: **Default:** unset (all categories).

`children="integer"` <span class="footnote warning">v4.7.0+</span>
: Can limit the list depth to defined levels below the parent category.
: **Values:** `0` (no children, i.e. only show one level below the parent) or `n` (show all nested categories and 'flatten' the list at the level `n`).
: **Default:** `1`.

`exclude="category name(s)"` <span class="footnote warning">v4.0.4+</span>
: List of category names which will be excluded from the list. `categories` takes precedence over `exclude`.
: **Default:** unset.

`form="form name"` <span class="footnote warning">v4.0.7+</span>
: Use specified form to process each included category.
: **Default:** unset.

`html_id="id"` <span class="footnote warning">v4.6.0+</span>
: The HTML `id` attribute applied to the `wraptag`, if set.
: **Default:** unset.

`limit="integer"` <span class="footnote warning">v4.6.0+</span>
: The number of articles to display.
: **Default:** `0` (no limit).

`offset="integer"` <span class="footnote warning">v4.6.0+</span>
: The number of articles to skip.
: **Default:** `0`.

`parent="category name"`
: Return only specified category and its children categories. Accepts comma-separated list of values.
: **Default:** unset.

`section="section name"` <span class="footnote warning">v4.0.4+</span>
: Restrict to articles from specified section(s).
: **Values:** (comma separated list of) section name(s).
: **Default:** unset, retrieves from all sections.

`sort="sort value(s)"`
: How to sort the resulting category list. Specify a value from the ones below, followed by a space and then add either `asc` or `desc` to sort in ascending or descending order, respectively.
: **Values:** \\
`id`. \\
`name`. \\
`parent`. \\
`rand()` ([random](https://dev.mysql.com/doc/refman/5.7/en/mathematical-functions.html#function_rand)). \\
`title`. \\
`type`.
: **Default:** `name asc`.

`this_section="boolean"` <span class="footnote warning">v4.0.4+</span>
: Link to currently active section (overrides `section` attribute).
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`type="category type"`
: **Values:** `article`, `image`, `link`, `file`.
: **Default:** `article`.

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

### Example 1: Labelled category list

~~~ html
<txp:category_list label="Categories" wraptag="p" break="br" />
~~~

### Example 2: As an unordered list

~~~ html
<txp:category_list break="li" wraptag="ul" />
~~~

### Example 3: Set active class using the container tag

~~~ html
<txp:category_list wraptag="ul" break="">
    <li<txp:if_category name="<txp:category />"> class="active"</txp:if_category>>
        <txp:category title="1" link="1" />
    </li>
</txp:category_list>
~~~

This code will add `class="active"` to the `<li>` element around the current viewed category in the list, allowing your to style it with CSS as desired.

Other tags used: [category](/tags/category), [if_category](/tags/if_category).

## Genealogy

### Version 4.8.0

`sort` attribute now respects `categories` attribute instead of requiring `sort=""` override.

### Version 4.7.2

`sort` attribute behaviour defaults to `name asc` to bypass some database server specific ordering. NOTE this introduced an unexpected backwards-compatibility bug with the `categories` attribute. When using this attribute, you *must* set `sort=""` for the list to remain in the order specified in the `categories` attribute. This has been fixed in Textpattern 4.8.0.

### Version 4.7.0

`children` attribute behaviour extended (accepts integer instead of boolean values). \\
`breakby` attribute added.

### Version 4.6.0

`html_id`, `limit` and `offset` attributes added.

### Version 4.0.7

Can be used as a container tag. \\
`children` and `form` attributes added.

### Version 4.0.4

`active_class`, `categories`, `exclude`, `section` and `this_section` attributes added.
