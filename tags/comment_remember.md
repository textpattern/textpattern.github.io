---
layout: document
category: Tags
published: true
title: Comment remember
description: The comment_remember tag is used to display a check box input field.
tags:
  - Comment tags
---

# Comment remember

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:comment_remember />
~~~

The **comment_remember** tag is a *single* tag which is used to display a check box input field. If checked the users details are remembered by the system the next time they open a comment form. Used in the comment input form template.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`forgetlabel="text"` <span class="footnote warning">v4.6.0+</span>
: Label that appears next to the 'Forget' `checkbox`.
: **Default:** `Forget` (localized).

`rememberlabel="text"` <span class="footnote warning">v4.6.0+</span>
: Label that appears next to the 'Remember' `checkbox`.
: **Default:** `Remember` (localized).

## Examples

### Example 1: Comment form

~~~ html
<p>
    Name (required)<br>
    <txp:comment_name_input />
</p>
<p>
    Email (required)<br>
    <txp:comment_email_input />
</p>
<p>
    Website<br>
    <txp:comment_web_input />
</p>
<p>
    <txp:comment_remember />
</p>
<p>
    Message (required)<br>
    <txp:comment_message_input /><br>
    <txp:comments_help />
</p>
<p>
    <txp:comment_preview />
    <txp:comment_submit />
</p>
~~~

Other tags used: [comment_email_input](/tags/comment_email_input), [comments_help](/tags/comments_help), [comment_message_input](/tags/comment_message_input), [comment_name_input](/tags/comment_name_input), [comment_preview](/tags/comment_preview), [comment_submit](/tags/comment_submit), [comment_web_input](/tags/comment_web_input).

## Genealogy

### Version 4.6.0

`forgetlabel` and `rememberlabel` attributes added (replaces functionality of deprecated `forgetlabel` and `rememberlabel` attributes in [comments_form](/tags/comments_form) tag).
