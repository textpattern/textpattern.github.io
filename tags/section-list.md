---
layout: document
category: tags
published: true
title: "Section list"
tags:
  - List tags
  - Navigation tags
  - Structural tags
---

# Section list

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:section_list />
```

The **section_list** tag is a __single__ or __container__ tag which is used to produce a list of linked sections. When used as a container tag, it is used as an opening and closing pair, like this:

```html
<txp:section_list>
    ...contained statements...
</txp:section_list>
```

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* `active_class="class name"` (only works in the __single__ tag without the `form` attribute)
HTML `class` to apply to the 'active' or current link in a list.
Default: unset
* `default_title="text"`
Text used as a title for the 'default' section when `include_default` is set to `1`.
Default: site name.
* `exclude="section name(s)"`
Comma-separated list of section names to exclude from the list. `sections` takes precedence over `exclude`.
Default: unset (none).
* `form="form name"`
Use specified form template to process each included section.
Default: unset.
* `html_id="id"`
The HTML `id` attribute applied to the `wraptag`, if set.
* `include_default="boolean"`
Whether to include 'default' section in section list.
Values: `0` (no) or `1` (yes).
Default: `0`.
* `limit="integer"`
The number of articles to display.
Default: `0` (no limit).
* `offset="integer"`
The number of articles to skip.
Default: `0`.
* `sections="section name(s)"`
Comma-separated list of section names to include in the list, displayed in specified order (unless overridden by the `sort` attribute).
Default: unset (all sections).
* `sort="sort value(s)"`
How to sort resulting list.
Values:
`css`.
`in_rss`.
`is_default`.
`name`.
`on_frontpage`.
`page`.
`rand()` ([random](http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html#function_rand)).
`searchable`.
`title`.
Each field in the `textpattern` database table can be used as a sort key.
When viewing a search results list, `score` (how well the search terms match the article) is available as an additional value.
Default: `name asc`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

* `break="value"`
Where value is an HTML element, specified without brackets (e.g. `break="li"`) or some string to separate list items.
Default: `br` (but see @@break cross-reference@@ for exceptions).
* `class="class name"`
HTML `class` to apply to the `wraptag` attribute value.
Default: tag name or unset (see @@class cross-reference@@).
* `label="text"`
Label prepended to item.
Default: unset (but see @@label cross-reference@@ for exceptions).
* `labeltag="element"`
HTML element to wrap (markup) label, specified without brackets (e.g. `labeltag="h3"`).
Default: unset.
* `wraptag="element"`
HTML element to wrap (markup) list block, specified without brackets (e.g. `wraptag="ul"`).
Default: unset (but see @@wraptag cross-reference@@ for exceptions).

## Examples

### Example 1: Display a linked section list

```html
<txp:section_list label="Sections" wraptag="p" break="br" />
```

Adds the label 'Sections' and wraps the output in a paragraph with each section on its own line.

### Example 2: Display a styled section list

```html
<txp:section_list wraptag="ul" break="li" />
```

### Example 3: Set active class using the container tag

```html
<txp:section_list wraptag="ul" break="">
    <li<txp:if_section name='<txp:section />'> class="active"></txp:if_section>>
        <txp:section title="1" link="1" />
    </li>
</txp:section_list>
```

This code will add `class="active"` to the `<li>` element around the currently viewed section in the list.

Other tags used: [if_section](if-section), [section](section).

## Genealogy

### Version 4.6.0

`html_id`, `limit` and `offset` attributes added.

### Version 4.0.7

Can be used as a container tag.
`form` attribute added.
