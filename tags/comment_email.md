---
layout: document
category: Tags
published: true
title: Comment email
description: The comment_email tag is used to display the commenter's email address, if entered at the time of posting.
tags:
  - Comment tags
---

# Comment email

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:comment_email />
~~~

The **comment_email** tag is a *single* tag which is used to display the commenter's email address, if entered at the time of posting. Should be used in Textpattern 'comment' type [Form templates](/themes/form-templates-explained).

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

## Examples

### Example 1: Comments display form with linked email and comment id

~~~ html
<txp:comment_message />
<p>
    <a href="mailto:<txp:comment_email />">Email</a> |
    <txp:comment_permlink>
        <txp:comment_id />
    </txp:comment_permlink>
</p>
~~~

Other tags used: [comment_id](/tags/comment_id), [comment_message](/tags/comment_message), [comment_permlink](/tags/comment_permlink).
