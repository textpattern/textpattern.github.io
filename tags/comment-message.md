---
layout: document
category: tags
published: true
title: "Comment message"
tags:
  - Comment tags
---

# Comment message

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

```html
<txp:comment_message />
```

The **comment_message** tag is a __single__ tag which is used to display the message text, or comment. Used in the form that renders your comments (the default form is named 'comments').

## Attributes

This tag has no attributes.

## Examples

### Example 1: Comments display form

```html
<txp:comment_message />
<p class="footnote">
    <a href="mailto:<txp:comment_email />">Email</a> |
    <txp:comment_permlink>
        <txp:comment_id />
    </txp:comment_permlink>
</p>
```

Other tags used: [comment_email](comment-email), [comment_id](comment-id), [comment_permlink](comment-permlink).
