---
layout: document
category: Tags
published: true
title: Authors
description: The authors tag is used to gather a list of authors designated within the Textpattern Users panel.
tags:
  - Article tags
  - List tags
---

# Authors

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:authors>
~~~

The **authors** tag is a *single* or *container* tag that Textpattern will use to gather a list of authors designated within the Textpattern Users panel.

If used as a *container* tag, it must be specified as an opening and closing pair of tags, like this:

~~~ html
<txp:authors>
    …contained statements…
</txp:authors>
~~~

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`form="form name"`
: Use specified form template to process each author.
: **Default:** unset.

`group="user group"`
: Comma-separated list of user groups (publishing roles that the authors belong to).
: **Values:** `publisher`, `managing_editor`, `copy_editor`, `staff_writer`, `freelancer`, `designer`, `privs_none` or corresponding integer(s).
: **Default:** unset, retrieves from all groups.

`limit="integer"`
: The number of authors to display.
: **Default:** `0` (no limit).

`name="author"`
: Comma-separated list of author names.
: **Default:** unset, which determines whether 'any' author listing is being viewed.

`offset="integer"`
: The number of authors to skip.
: **Default:** `0`.

`sort="sort value(s)"`
: How to sort the resulting author list. Specify a value from the ones below, followed by a space and then add either `asc` or `desc` to sort in ascending or descending order, respectively. **Note:** values are case sensitive on some servers.
: **Values:** \\
`user_id` (author id#). \\
`last_access` (most recent log in). \\
`name` (login name). \\
`RealName` (real name). \\
`privs` (user group). \\
`rand()` ([random](https://dev.mysql.com/doc/refman/5.7/en/mathematical-functions.html#function_rand)). \\
Each field in the `textpattern` database table can be used as a sort key.
: **Default:** `name asc`.

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

### Example 1: List all authors

~~~ html
<txp:authors />
~~~

### Example 2: List authors only from certain groups, with link and email

~~~ html
<txp:authors group="publisher, managing_editor" wraptag="ul" break="li">
    <txp:author link="1" />
    (<txp:author_email />)
</txp:authors>
~~~

Other tags used: [author](/tags/author), [[author_email](/tags/author_email).

### Example 3: Render a drop-down list of authors

~~~ html
<select name="author">
    <txp:authors sort="realname asc">
        <option value="<txp:author />"><txp:author /></option>
    </txp:authors>
</select>
~~~

Other tags used: [author](/tags/author).

## Genealogy

### Version 4.7.0

`breakby` attribute added.

### Version 4.6.0

Tag support added.
