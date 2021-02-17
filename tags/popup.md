---
layout: document
category: Tags
published: true
title: Popup
description: Textpattern will replace this tag with a selector for browsing by section or category.
tags:
  - Navigation tags
---

# Popup

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:popup />
~~~

The **popup** tag is a *single* tag. Textpattern will replace this tag with a select list for browsing by section or category, wrapped in an HTML `<form>`. Selecting an entry will automatically submit the form unless scripting is disabled, in which case a 'submit' button will be displayed too.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`section="section_name"`
: Filter the selected category by the named section, instead of listing all articles that match the category. Only of use if `type="category"`.
: **Default:** unset.

`this_section="boolean"`
: Filter the selected category by the currently active section, instead of listing all articles that match the category. Only of use if `type="category"`.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`type="type"`
: **Values:** `section`, `category`.
: **Default:** `category`.

## Examples

### Example 1: Browse by category popup selector

~~~ html
<txp:popup type="category" wraptag="div" />
~~~

### Example 2: Browse by section popup selector

~~~ html
<txp:popup type="section" wraptag="div" class="site_browse" />
~~~

### Example 3: Popup selector with custom label that filters by current section

~~~ html
<txp:popup label="Browse by category" type="category" this_section />
~~~

## Genealogy

### Version 4.6.0

`type` attribute also accepts full string name instead of just `s` and `c`.

### Version 4.3.0

`class` attribute added.
