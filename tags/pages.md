---
layout: document
category: Tags
published: true
title: Pages
description: TODO.
tags:
  - Navigation tags
---

# Pages

**On this page**:

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:pages />
~~~

The **pages** tag is both a *single* tag and a *container* tag.

Textpattern will replace this tag with links to the next/previous lists of articles in the sort order. The container tags wrap the text or tag assigned to the link. As a single tag it outputs the URL for the next/previous list page.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"`
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&`.
: **Values:** See the [tag escaping](/tags/tag-basics/tag-escaping) documentation for all possible values.
: **Default:** `html`.

`link="boolean"`
: Whether to enclose the output in HTML `a` tag.
: **Default:** unset.

`pg="text or valueless"`
: Used to set the name of the pagination URL parameter.
: **Default:** unset (`pg`).

`rel="text"`
: [HTML rel attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes) to be applied to link.
: **Default:** unset.

`shift="list of numbers or valueless"`
: Used to indicate the offset of the desired pages relatively to the current page.
: **Default:** unset.

`showalways="boolean"`
: Show wrapped value even when no older page exists.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`title="text"`
: [HTML title attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes#title) to be applied to link.
: **Default:** unset.

`total="number or valueless"`
: Used to set the number of pages to take in consideration or to output its current value.
: **Default:** unset.

### Common presentational attributes

`break`, `limit`.

## Examples

TODO.

## Genealogy

### Version 4.8.0

Tag support added.
