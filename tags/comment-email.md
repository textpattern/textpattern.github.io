---
layout: document
category: tags
published: true
title: "Comment email"
Description: The comment_email tag is used to display the commenter's email address, if entered at the time of posting.
tags:
  - Comment tags
---

# Comment email

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

```html
<txp:comment_email />
```

The **comment_email** tag is a __single__ tag which is used to display the commenter's email address, if entered at the time of posting. Should be used in a Textpattern 'comment' type @@Form template@@.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Comments display form with linked email and comment id

```html
<txp:comment_message />
<p>
    <a href="mailto:<txp:comment_email />">Email</a> |
    <txp:comment_permlink>
        <txp:comment_id />
    </txp:comment_permlink>
</p>
```

Other tags used: [comment_id](comment-id), [comment_message](comment-message), [comment_permlink](comment-permlink).
