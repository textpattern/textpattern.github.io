---
layout: document
category: Tags
published: true
title: Link author
description: Tag that Textpattern will replace with the author's name associated with the current link in a list.
tags:
  - Link tags
---

# Link author

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:link_author />
~~~

The **link_author** tag is a *single* tag that Textpattern will replace with the author's name associated with the current link in a [linklist](/tags/linklist). It can **only** be used inside `<txp:linklist />`.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`link="link type (boolean)"`
: Whether to hyperlink the author or not.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`section="section name"`
: Direct any linked author name to the nominated section instead of to the default (front) page.
: **Default:** unset.

`this_section="boolean"`
: If set to `1`, the linked author name will direct users to an author list in the current section, otherwise author list from all sections is displayed.
: **Values:** `0` (no, all sections) or `1` (yes, this section only).
: **Default:** `0`.

`title="boolean"`
: Whether to display the author's real name or login name.
: **Values:** `0` (login name) or `1` (real name).
: **Default:** `1`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`wraptag="tag"`
: HTML tag to wrap around the author name, specified without brackets (e.g. `wraptag="p"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Display a link and its author

~~~ html
<p>
    <txp:link />
    <br />
    <txp:link_author />
</p>
~~~

Other tags used: [link](/tags/link).

## Genealogy

### Version 4.3.0

Tag support added.
