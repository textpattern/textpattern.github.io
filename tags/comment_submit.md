---
layout: document
category: tags
published: true
title: "Comment submit"
description: The comment_submit tag is used to display a 'Submit' button.
tags:
  - Comment tags
---

# Comment submit

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:comment_submit />
~~~

The **comment_submit** tag is a *single* tag which is used to display a 'Submit' button. Clicking the submit button writes the comment information to the database. Used in the comment input form template.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`label="text"`
: Label that appears on the 'Submit' button.
: **Default:** `Submit` (localized).

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

Other tags used: [comment_email_input](comment-email-input), [comments_help](comments-help), [comment_message_input](comment-message-input), [comment_name_input](comment-name-input), [comment_preview](comment-preview), [comment_remember](comment-remember), [comment_web_input](comment-web-input).

## Genealogy

### Version 4.6.0

`label` attribute added (replaces functionality of deprecated `submitlabel` attribute in [comments_form](comments-form) tag).
