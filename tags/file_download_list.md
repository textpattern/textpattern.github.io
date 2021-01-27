---
layout: document
category: Tags
published: true
title: File download list
description: The file_download_list tag is used to produce a list of download links according to the given attributes.
tags:
  - File tags
  - List tags
---

# File download list

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:file_download_list />
~~~

The **file_download_list** tag is a *single* or a *container* tag which is used to produce a list of download links according to the given attributes. Each file in the list is formatted by the file tags used in the given form (default is the `files` form).

If used as a container, it must be specified as an opening and closing pair of tags, like this:

~~~ html
<txp:file_download_list>
    …contained statements…
</txp:file_download_list>
~~~

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`author="author name"` <span class="footnote warning">v4.3.0+</span>
: Restrict to files with the specified author login name.
: **Default:** unset.

`auto_detect="string context"` <span class="footnote warning">v4.3.0+</span>
: List of Textpattern contexts to consider when automatically searching for files. If you wish to turn off the automatic check, set this to `auto_detect=""`.
: **Values:** `category` (to look in the URL for a category list) and/or `author` (to look in the URL for an author list).
: **Default:** `category, author`.

`category="category name"`
: Restrict to files from the specified category. Allows a comma separated list of category names. Note: category names may be different to the Title you typed when you created the category, as the names are sanitized for URL use. Check the Categories panel to ensure you are using the correct names.
: **Default:** unset.

`form="form name"`
: Use the specified form template to process the files.
: **Default:** `files`.

`id="file ID"` <span class="footnote warning">v4.2.0+</span>
: Display the specific file or list of files.
: **Values:** (comma separated list of) file ID(s).
: **Default:** unset.

`limit="integer"`
: Number of files to display.
: **Default:** `10`.

`offset="integer"`
: Number of files to skip.
: **Default:** unset.

`pageby="integer or limit"` <span class="footnote warning">v4.3.0+</span>
: Number of files to jump each page. Without this attribute, you cannot navigate using the [newer](/tags/newer) and [older](/tags/older) tags. Usually you will want to track the `limit` attribute. Use `pageby="limit"` to do this, which means you will not have to amend two values if you subsequently decide to alter the `limit`.
: **Default:** unset.

`realname="author real name"` <span class="footnote warning">v4.3.0+</span>
: Restrict to files with the specified author name.
: **Default:** unset.

`sort="by what and order"`
: How to sort the resulting file list. Specify a value from the ones below, followed by a space and then add either `asc` or `desc` to sort in ascending or descending order, respectively.
: **Values:** \\
`id`. \\
`filename`. \\
`title`. \\
`category`. \\
`description`. \\
`downloads`. \\
`created`. \\
`modified`. \\
`rand()` ([random](https://dev.mysql.com/doc/refman/5.7/en/mathematical-functions.html#function_rand)).
: **Default:** `filename asc`.

`status="file status"`
: Restrict to files with the specified status.
: **Values:** `hidden`, `pending`, `live`.
: **Default:** `live`.

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

### Example 1: Display a list of the ten most popular downloads, in descending order

~~~ html
<txp:file_download_list limit="10" break="li" wraptag="ol" sort="downloads desc" />
~~~

## Genealogy

### Version 4.7.0

`breakby` attribute added.

### Version 4.3.0

`author` attribute added. \\
`auto_detect` attribute added to allow automatic (URL-based) contextual listings. \\
`pageby` attribute added to enable paging via [newer](/tags/newer) and [older](/tags/older). \\
`realname` attribute added.

### Version 4.2.0

`id` attribute added.

### Version 4.0.7

Can be used as a container tag.

### Version 4.0.6

Support added for comma separated list for `category` attribute.
