---
layout: document
category: Tags
published: true
title: File download category
description: The file_download_category tag will replace with the category of the file to download.
tags:
  - File tags
---

# File download category

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:file_download_category />
~~~

The **file_download_category** tag is a *single* tag that Textpattern will replace with the category of the file to download. Should be used in Textpattern 'file' type [Form templates](/themes/form-templates-explained).

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`title="boolean"`
: Whether to display the category name or its title.
: **Values:** `0` (name), or `1` (title).
: **Default:** `0`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`wraptag="element"`
: HTML tag to wrap around category text, specified without brackets (e.g. `wraptag="p"`).
: **Default:** unset.

## Examples

### Example 1: Display a file category name

~~~ html
<p>
    File category:
    <txp:file_download_category />
</p>
~~~
