---
layout: document
category: Tags
published: true
title: Older
description: Textpattern will replace this tag with a link to the previous list of articles in the sort order.
tags:
  - Navigation tags
---

# Older

**On this page**:

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:older />
~~~

The **older** tag is both a *single* tag and a *container* tag. The tag should be used in a page after an article tag.

Textpattern will replace this tag with a link to the previous list of articles in the sort order. The container tags wrap the text or tag assigned to the link. As a single tag it outputs the URL for the previous list page.

An article list consists of the assigned number of articles set by the article tag. If there are no articles available having 'Older' status (articles ranked lower, or later, in the present sort criteria than the present bottom of page article) `<txp:older />` will not display unless the `showalways` attribute is set to `1`. It is normally seen used in tandem with [newer](/tags/newer).

Given a `<txp:article limit="5" />` tag on the page in question, `<txp:older />` will page down five articles at a time from the most recent post back in time to the oldest.

Note: This tag is context-sensitive, meaning it will only fetch content from the section or category being viewed.
{: .alert-block .information}

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"` <span class="footnote warning">v4.3.0+</span>
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&`.
: **Values:** See the [tag escaping](/tags/learning/#tag-escaping) documentation for all possible values.
: **Default:** `html`.

`rel="text"` <span class="footnote warning">v4.7.0+</span>
: [HTML rel attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes) to be applied to link.
: **Default:** unset.

`showalways="boolean"`
: Show wrapped value even when no older page exists.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`title="text"`
: [HTML title attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes#title) to be applied to link.
: **Default:** unset.

## Examples

### Example 1: Container tag - link with text

~~~ html
<txp:older rel="next">Older</txp:older>
~~~

### Example 2: Single tag - link with image

~~~ html
<a href="<txp:older />">
    <txp:image name="left-arrow.gif" />
</a>
~~~

Other tags used: [image](/tags/image).

### Example 3: Container tag - link with image

~~~ html
<txp:older>
    <txp:image name="left-arrow.gif" />
</txp:older>
~~~

The difference between examples 2 and 3 is that the tags in example 2 will display the image even if there are no older articles, those used in example 3 won't.

Other tags used: [image](/tags/image).

## Genealogy

### Version 4.7.0

`rel` attribute added.

### Version 4.3.0

`escape` attribute added.
