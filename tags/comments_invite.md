---
layout: document
category: Tags
published: true
title: Comments invite
description: The comments_invite tag is used to display a link to an article comment form.
tags:
  - Comment tags
---

# Comments invite

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:comments_invite />
~~~

The **comments_invite** tag is a *single* tag which is used to display a link to an article comment form. Text used for the link will be taken from the invitation field on the Textpattern [Write panel](/administration/write-panel).

This tag can be used in both Textpattern [Page templates](/themes/page-templates-explained) and [Form templates](/themes/form-templates-explained).

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`showalways="boolean"`
: Whether to display invite on individual article page.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`showcount="boolean"`
: Whether to display comment count.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `1`.

`textonly="boolean"`
: Whether to display invite as text, rather than a hyperlink.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** `comments_invite` (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`wraptag="tag"`
: HTML tag to wrap around invite text, specified without brackets (e.g. `wraptag="p"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Display comments invitation and comment count

~~~ html
<txp:if_comments>
    <txp:comments_invite wraptag="p" />
</txp:if_comments>
~~~

This will display the comments invitation and a comment count (but only if there are any comments associated with the current article).

Other tags used: [if_comments](/tags/if_comments).
