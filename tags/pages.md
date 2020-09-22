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

Depending on its attributes, the tag will either set pagination parameters or output links to the next/previous lists of articles in the sort order. The container tags wrap the text or tag assigned to the link. As a single tag it outputs the URL for the next/previous list page.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"`
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&`.
: **Values:** See the [tag escaping](/tags/learning/#tag-escaping) documentation for all possible values.
: **Default:** `html`.

`link="boolean"`
: Whether to enclose the output in HTML `a` tag.
: **Default:** unset.

`pg="text or valueless"`
: Set the name of the pagination URL parameter.
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
: Set the number of pages to take in consideration or output its current value.
: **Default:** unset.

### Common presentational attributes

`break`, `limit`.

## Examples

### Pagination bar
``` txp
<txp:pages pg showalways="2" link="" evaluate="5,2,8,4,6">
    <nav class="paginator" aria-label="List navigation">
        Pages:
        <txp:newer showalways><a rel="prev" href="<txp:yield item="url" />" title="Go to previous page" aria-label="Go to previous page">Previous</a></txp:newer>
        <ul class="pagination">
            <txp:newer shift><li><a href="<txp:yield item="url" />" title="Go to page <txp:yield item="page" />" aria-label="Go to page <txp:yield item="page" />"><txp:yield item="page" /></a></li></txp:newer>
            <txp:newer shift="-2"><li role="separator" title="More pages" aria-label="More pages">…</li></txp:newer>
            <txp:newer total shift="2"><li><a href="<txp:yield item="url" />" title="Go to page <txp:yield item="page" />" aria-label="Go to page <txp:yield item="page" />"><txp:yield item="page" /></a></li></txp:newer>
            <txp:pages><li class="current"><b title="Current page" aria-current="page"><txp:yield item="page" /></b></li></txp:pages>
            <txp:older total shift="2"><li><a href="<txp:yield item="url" />" title="Go to page <txp:yield item="page" />" aria-label="Go to page <txp:yield item="page" />"><txp:yield item="page" /></a></li></txp:older>
            <txp:older shift="-2"><li role="separator" title="More pages" aria-label="More pages">…</li></txp:older>
            <txp:older shift><li><a href="<txp:yield item="url" />" title="Go to page <txp:yield item="page" /> (last page)" aria-label="Go to page <txp:yield item="page" /> (last page)"><txp:yield item="page" /></a></li></txp:older>
        </ul>
        <txp:older showalways><a rel="next" href="<txp:yield item="url" />" title="Go to next page" aria-label="Go to next page">Next</a></txp:older>
    </nav>
</txp:pages>
```

## Genealogy

### Version 4.8.0

Tag support added.
