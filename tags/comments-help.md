---
layout: document
category: tags
published: true
title: "Comments help"
tags:
  - Comment tags
---

# Comments help

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

```html
<txp:comments_help />
```

The *comments_help* tag is a __single__ tag which is used to display a Textile help link. This tag can be used in a Textpattern page or a Textpattern form.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Comment form

```html
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
```

Other tags used: "comment_email_input":comment-email-input, "comments_help":comments-help, "comment_message_input":comment-message-input, "comment_name_input":comment-name-input, "comment_preview":comment-preview, "comment_remember":comment-remember, "comment_submit":comment-submit, "comment_web_input":comment-web-input.
