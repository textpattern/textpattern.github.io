---
layout: document
category: Tags
published: true
title: Comment preview
description: The comment_preview tag is used to display a 'Preview' button the user can use to preview the comment text.
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

Other tags used: [comment_email_input](comment_email_input), [comments_help](comments_help), [comment_message_input](comment_message_input), [comment_name_input](comment_name_input), [comment_remember](comment_remember), [comment_submit](comment_submit), [comment_web_input](comment_web_input).
