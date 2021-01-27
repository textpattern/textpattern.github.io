---
layout: document
category: Tags
published: true
title: Comment id
description: The comment_id tag is used to display the comment's internal id as assigned by Textpattern at the time of posting.
tags:
  - Comment tags
---

# Comment id

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:comment_id />
~~~

The **comment_id** tag is a *single* tag which is used to display the comment's internal id as assigned by Textpattern at the time of posting. Used in a comments display form.

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

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

Other tags used: [comment_message](/tags/comment_message), [comment_name](/tags/comment_name), [comment_permlink](/tags/comment_permlink), [comment_time](/tags/comment_time).
