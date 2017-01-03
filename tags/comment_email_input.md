---
layout: document
category: Tags
published: true
title: Comment email input
description: The comment_email_input tag is used to display a text entry field to accept the commenter's email address.
tags:
  - Comment tags
---

# Comment email input

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:comment_email_input />
~~~

The **comment_email_input** tag is a *single* tag which is used to display a text entry field to accept the commenter's email address. Used in the comment input form template.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`size="integer"`
: HTML `size` attribute to be applied to the HTML form text `input` field.
: **Default:** `25`.

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

Other tags used: [comments_help](comments_help), [comment_message_input](comment_message-input), [comment_name_input](comment_name_input), [comment_preview](comment_preview), [comment_remember](comment_remember), [comment_submit](comment_submit), [comment_web_input](comment_web_input).

## Genealogy

### Version 4.6.0

`size` attribute added (replaces functionality of deprecated `isize` attribute in [comments_form](comments_form) tag).
