---
layout: document
category: Tags
published: true
title: Comments preview
description: The comments_preview tag is used to display a preview of a visitor's comment.
tags:
  - Comment tags
---

# Comments preview

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:comments_preview />
~~~

The **comments_preview** tag can be used as a *single* tag or a *container* tag and is used to display a preview of a visitor's comment.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`form="form name"`
: Use specified form template to process each comment.
: **Default:** `comments`.

`label="text"` <span class="footnote warning">v4.6.0+</span>
: Label that appears on the 'Preview' button.
: **Default:** `Preview` (localized).

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** `comments_preview` (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`wraptag="tag"`
: HTML tag to wrap around the list, specified without brackets (e.g. `wraptag="div"`).
: **Default:** depends upon 'Present Comments as a Numbered List?' preference setting - either `ol` or unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Show comment preview appended to end of current comments list

~~~ html
<txp:comments wraptag="ol" break="li" />
<txp:if_comments_preview>
    <li>
        <p>This is a preview of what your comment will look like. Please don't forget to scroll down and actually press the 'submit' button!</p>
        <txp:comments_preview wraptag="" />
    </li>
</txp:if_comments_preview>
~~~

Other tags used: [comments](/tags/comments), [if_comments_preview](/tags/if_comments_preview).

## Genealogy

### Version 4.6.0

Can be used as a container tag. \\
`label` attribute added (replaces functionality of deprecated `previewlabel` attribute in [comments_form](/tags/comments_form) tag).

### Version 4.0.4

Use is necessary in comments display form (`<comments_display />`, by default).

### Version 4.0.3

Tag support added.
