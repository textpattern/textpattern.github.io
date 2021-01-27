---
layout: document
category: Tags
published: true
title: Comment permlink
description: The comment_permlink tag is used to return the permanent link of the article comment being displayed.
tags:
  - Comment tags
---

# Comment permlink

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:comment_permlink>
~~~

The **comment_permlink** tag is a *container* tag which is used to return the permanent link of the article comment being displayed. The container tag wraps the text assigned to the link. Should be used in Textpattern 'comment' type [Form templates](/themes/form-templates-explained).

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`anchor="boolean"`
: Whether to apply the comment's ID number to the hyperlink tag (as the `id` attribute), setting this comment permanent link as the comment page anchor.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

## Examples

### Example 1: Comments display form

~~~ html
<txp:comment_message />
<p>
    <txp:comment_name />
    <txp:comment_time />
    <txp:comment_permlink>
        <txp:comment_id />
    </txp:comment_permlink>
</p>
~~~

Other tags used: [comment_id](/tags/comment_id), [comment_message](/tags/comment_message), [comment_name](/tags/comment_name), [comment_time](/tags/comment_time).
