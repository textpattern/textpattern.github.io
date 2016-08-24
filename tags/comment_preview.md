---
layout: document
category: tags
published: true
title: "Comment preview"
Description: The comment_preview tag is used to display a 'Preview' button the user can use to preview the comment text.
tags:
  - Comment tags
---

# Comment preview

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)

## Syntax

~~~ html
<txp:comment_preview />
~~~

The **comment_preview** tag is a *single* tag which is used to display a 'Preview' button the user can use to preview the comment text. Used in the comment input form template.

## Attributes

This tag has no attributes.

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

Other tags used: [comment_email_input](comment-email-input), [comments_help](comments-help), [comment_message_input](comment-message-input), [comment_name_input](comment-name-input), [comment_remember](comment-remember), [comment_submit](comment-submit), [comment_web_input](comment-web-input).
