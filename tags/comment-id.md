---
layout: document
category: tags
published: true
title: "Comment id"
Description: The comment_id tag is used to display the comment's internal id as assigned by Textpattern at the time of posting.
tags:
  - Comment tags
---

# Comment id

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

~~~ html
<txp:comment_id />
~~~

The **comment_id** tag is a __single__ tag which is used to display the comment's internal id as assigned by Textpattern at the time of posting. Used in a comments display form.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Comments display form with linked comment id

~~~ html
<txp:comment_message />
<p>
    By <txp:comment_name /> at <txp:comment_time />
    <txp:comment_permlink>
        <txp:comment_id />
    </txp:comment_permlink>
</p>

<txp:comment_message />
~~~

Other tags used: [comment_message](comment-message), [comment_name](comment-name), [comment_permlink](comment-permlink), [comment_time](comment-time).
