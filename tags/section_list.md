---
layout: document
category: Tags
published: true
title: Section list
description: The section_list tag is a single or container tag which is used to produce a list of linked sections.
tags:
  - List tags
  - Navigation tags
  - Structural tags
---

# Section list

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:section_list />
~~~

The **section_list** tag is a *single* or *container* tag which is used to produce a list of linked sections. When used as a container tag, it is used as an opening and closing pair, like this:

~~~ html
<txp:section_list>
    …contained statements…
</txp:section_list>
~~~

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`active_class="class name"` (only works in the *single* tag without the `form` attribute)
: HTML `class` to apply to the 'active' or current link in a list.
: **Default:** unset

`default_title="text"`
: Text used as a title for the 'default' section when `include_default` is set to `1`.
: **Default:** site name.

`exclude="section name(s)"`
: Comma-separated list of section names to exclude from the list. `sections` takes precedence over `exclude`. Using this attribute without any value omits non-searchable sections from its output.
: **Default:** unset (none).

`form="form name"` <span class="footnote warning">v4.0.7+</span>
: Use specified form template to process each included section.
: **Default:** unset.

`html_id="id"` <span class="footnote warning">v4.6.0+</span>
: The HTML `id` attribute applied to the `wraptag`, if set.

`include_default="boolean"`
: Whether to include 'default' section in section list.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`limit="integer"` <span class="footnote warning">v4.6.0+</span>
: The number of articles to display.
: **Default:** `0` (no limit).

`offset="integer"` <span class="footnote warning">v4.6.0+</span>
: The number of articles to skip.
: **Default:** `0`.

`sections="section name(s)"`
: Comma-separated list of section names to include in the list, displayed in specified order (unless overridden by the `sort` attribute).
: **Default:** unset (all sections).

`sort="sort value(s)"`
: How to sort the resulting section list. Specify a value from the ones below, followed by a space and then add either `asc` or `desc` to sort in ascending or descending order, respectively.
: **Values:** \\
`css` (order by the Stylesheet in use by the Sections). \\
`in_rss` (order by whether the Sections are syndicatable or not). \\
`name`. \\
`on_frontpage` (order by whether the Section allows articles on the front page or not). \\
`page` (order by the Page in use by the Sections). \\
`rand()` ([random](https://dev.mysql.com/doc/refman/5.7/en/mathematical-functions.html#function_rand)). \\
`searchable` (order by whether the Sections are searchable or not). \\
`title`. \\
Each field in the `textpattern` database table can be used as a sort key. \\
When viewing a search results list, `score` (how well the search terms match the article) is available as an additional value.
: **Default:** `name asc`.

{% include atts-common.html break="" breakby="" %}

{% include atts-global.html class="tag name or unset" %}

## Examples

### Example 1: Display a linked section list

~~~ html
<txp:section_list label="Sections" wraptag="p" break="br" />
~~~

Adds the label 'Sections' and wraps the output in a paragraph with each section on its own line.

### Example 2: Display a styled section list

~~~ html
<txp:section_list wraptag="ul" break="li" />
~~~

### Example 3: Set active class using the container tag

~~~ html
<txp:section_list wraptag="ul" break="">
    <li<txp:if_section name='<txp:section />'> class="active"</txp:if_section>>
        <txp:section title="1" link="1" />
    </li>
</txp:section_list>
~~~

This code will add `class="active"` to the `<li>` element around the currently viewed section in the list.

Other tags used: [if_section](/tags/if_section), [section](/tags/section).

## Genealogy

### Version 4.8.0

Accepts valueless `exclude` attribute.

### Version 4.7.0

`breakby` attribute added.

### Version 4.6.0

`html_id`, `limit` and `offset` attributes added.

### Version 4.0.7

Can be used as a container tag. \\
`form` attribute added.
