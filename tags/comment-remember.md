---
layout: document
category: tags
published: true
title: "Comment remember"
tags:
  - Comment tags
---

# Comment remember

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:comment_remember />
```

The *comment_remember* tag is a __single__ tag which is used to display a check box input field. If checked the users details are remembered by the system the next time they open a comment form. Used in the comment input form template.

## Attributes

Tag will accept the following attributes (*case-sensitive*):

* @forgetlabel="text"@
Label that appears next to the 'Forget' @checkbox@.
Default: @Forget@ (localized).
* @rememberlabel="text"@
Label that appears next to the 'Remember' @checkbox@.
Default: @Remember@ (localized).

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

Other tags used: "comment_email_input":comment-email-input, "comments_help":comments-help, "comment_message_input":comment-message-input, "comment_name_input":comment-name-input, "comment_preview":comment-preview, "comment_submit":comment-submit, "comment_web_input":comment-web-input.

## Genealogy

### Version 4.6.0

@forgetlabel@ and @rememberlabel@ attributes added (replaces functionality of deprecated @forgetlabel@ and @rememberlabel@ attributes in "comments_form":comments-form tag).
