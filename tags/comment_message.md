---
layout: document
category: Tags
published: true
title: Comment message
description: The comment_message tag is used to display the message text, or comment.
tags:
  - Comment tags
---

# Comment message

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:comment_message />
~~~

The **comment_message** tag is a *single* tag which is used to display the message text, or comment. Used in the form that renders your comments (the default form is named 'comments').

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

## Examples

### Example 1: Comments display form

~~~ html
<txp:comment_message />
<p class="footnote">
    <a href="mailto:<txp:comment_email />">Email</a> |
    <txp:comment_permlink>
        <txp:comment_id />
    </txp:comment_permlink>
</p>
~~~

Other tags used: [comment_email](/tags/comment_email), [comment_id](/tags/comment_id), [comment_permlink](/tags/comment_permlink).
