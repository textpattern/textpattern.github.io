---
layout: document
category: tags
published: true
title: "Newer"
tags:
  - Navigation tags
---

# Newer

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:newer />
~~~

The **newer** tag is both a *single* tag and a *container* tag. The tag should be used in a page after an article tag.

Textpattern will replace this tag with a link to the next list of articles in the sort order. The container tags wrap the text or tag assigned to the link. As a single tag it outputs the URL for the next list page.

An article list consists of the assigned number of articles set by the article tag. If there are no articles available having 'Newer' status (articles ranked higher, or newer, in the present sort criteria than the present top of page article) `<txp:newer />` will not display unless the `showalways` attribute is set to `1`. It is normally seen used in tandem with [older](older).

Given a `<txp:article limit="5" />` tag on the page in question, `<txp:newer />` will page down five articles at a time from the most oldest post forward in time to the most recently posted article.

Note: This tag is context-sensitive, meaning it will only fetch content from the section or category being viewed.
{: .alert-block .information}

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"`
: Escape HTML entities such as `<`, `>` and `&`.
: Values: `html` or unset.
: Default: `html`.

`showalways="boolean"`
: Show wrapped value even when no older page exists.
: Values: `0` (no) or `1` (yes).
: Default: `0`.

`title="text"`
: [HTML title attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes#title) to be applied to link.
: Default: unset.

## Examples

### Example 1: Container tag - link with text

~~~ html
<txp:newer>Newer</txp:newer>
~~~

### Example 2: Single tag - link with image

~~~ html
<a href="<txp:newer />">
    <txp:image name="right-arrow.gif" />
</a>
~~~

Other tags used: [image](image).

### Example 3: Container tag - link with image

~~~ html
<txp:newer>
    <txp:image name="right-arrow.gif" />
</txp:newer>
~~~

The difference between examples 2 and 3 is that the tags in example 2 will display the image even if there are no newer articles, those used in example 3 won't.

Other tags used: [image](image).

## Genealogy

### Version 4.3.0

`title` attribute reintroduced after being accidentally removed. \\
`escape` attribute added.
