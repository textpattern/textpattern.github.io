---
layout: document
category: tags
published: true
title: "Comment permlink"
tags:
  - Comment tags
---

# Comment permlink

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

```html
<txp:comment_permlink>
```

The *comment_permlink* tag is a __container__ tag which is used to return the permanent link of the article comment being displayed. The container tag wraps the text assigned to the link. Should be used in a Textpattern 'comment' type @@Form template@@.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* @anchor="boolean"@
Whether to apply the comment's ID number to the hyperlink tag (as the `id` attribute), setting this comment permanent link as the comment page anchor.
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

Other tags used: "comment_id":comment-id, "comment_message":comment-message, "comment_name":comment-name, "comment_time":comment_time.
