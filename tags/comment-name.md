---
layout: document
category: tags
published: true
title: "Comment name"
Description: The comment_name tag is used to display a link using the commenter's name as text.
tags:
  - Comment tags
---

# Comment name

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

```html
<txp:comment_name />
```

The **comment_name** tag is a __single__ tag which is used to display a link using the commenter's name as text. If an email address is supplied and allowed to be viewed, an email link is created. Otherwise, if a website is entered, the website URL is used. If neither is supplied, the name displays as plain text.

Commenter's name and/or email address can be set as a requirement. Should be used in a Textpattern 'comment' type @@Form template@@.

## Attributes

This tag will accept the following attributes (**case-sensitive**):

* `link="boolean"`
Make text a link to the author's URL/email (depending on the information given).
Values: `0` (no) or `1` (yes).
Default: `0`.

## Examples

### Example 1: Comments display form

```html
<txp:comment_message />
<p>
    <txp:comment_name />
    <txp:comment_time />
    <txp:comment_permlink>
        <txp:comment_id />
    </txp:comment_permlink>
</p>
```

Other tags used: [comment_id](comment-id), [comment_message](comment-message), [comment_permlink](comment-permlink), [comment_time](comment_time).
