---
layout: document
category: tags
published: true
title: "Comment email input"
tags:
  - Comment tags
---

# Comment email input

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:comment_email_input />
```

The *comment_email_input* tag is a __single__ tag which is used to display a text entry field to accept the commenter's email address. Used in the comment input form template.

## Attributes

Tag will accept the following attributes (*case-sensitive*):

* @size="integer"@
HTML @size@ attribute to be applied to the HTML form text @input@ field.
Default: @25@.

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

Other tags used: "comments_help":comments-help, "comment_message_input":comment-message-input, "comment_name_input":comment-name-input, "comment_preview":comment-preview, "comment_remember":comment-remember, "comment_submit":comment-submit, "comment_web_input":comment-web-input.

## Genealogy

### Version 4.6.0

@size@ attribute added (replaces functionality of deprecated @isize@ attribute in "comments_form":comments-form tag).
