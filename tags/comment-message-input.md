---
layout: document
category: tags
published: true
title: "Comment message input"
tags:
  - Comment tags
---

# Comment message input

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:comment_message_input />
```

The *comment_message_input tag is a __single__ tag which is used to display a text entry field to accept the commenter's message text. Used in the comment input form template.

## Attributes

Tag will accept the following attributes (*case-sensitive*):

* @cols="integer"@
HTML @cols@ attribute to be applied to HTML form @textarea@ field.
Default: @25@.
* @rows="integer"@
HTML @rows@ attribute to be applied to HTML form @textarea@ field.
Default: @5@.

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

Other tags used: "comment_email_input":comment-email-input, "comments_help":comments-help, "comment_name_input":comment-name-input, "comment_preview":comment-preview, "comment_remember":comment-remember, "comment_submit":comment-submit, "comment_web_input":comment-web-input.

### Example 2: Text area changes in preview

Using some conditional tags, the size of the comment form @textarea@ can be changed in the preview.

```html
<txp:if_comments_preview>
    <p>
        This is just a preview of your comment!<br>
        <txp:comment_message_input cols="55" rows="5" /><br>
        <txp:comments_help />
    </p>
<txp:else />
    <p>
        Message (required)<br>
        <txp:comment_message_input cols="55" rows="15" /><br>
        <txp:comments_help />
    </p>
</txp:if_comments_preview>
```

Other tags used: "comments_preview":comments-preview, "if_comments_preview":if-comments-preview, "else":else.

## Genealogy

### Version 4.6.0

@cols@ and @rows@ attributes added (replaces functionality of deprecated @msgcols@ and @msgrows@ attributes in "comments_form":comments-form tag).
