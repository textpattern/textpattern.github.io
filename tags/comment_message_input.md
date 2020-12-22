---
layout: document
category: Tags
published: true
title: Comment message input
description: The comment_message_input tag is used to display a text entry field to accept the commenter's message text.
tags:
  - Comment tags
---

# Comment message input

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:comment_message_input />
~~~

The **comment_message_input** tag is a *single* tag which is used to display a text entry field to accept the commenter's message text. Used in the comment input form template.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`aria_label="text"` <span class="footnote warning">v4.7.2+</span>
: HTML `aria-label` attribute to be applied to HTML form `textarea` field.
: **Default:** unset.

`cols="integer"` <span class="footnote warning">v4.6.0+</span>
: HTML `cols` attribute to be applied to HTML form `textarea` field.
: **Default:** `25`.

`placeholder="text"` <span class="footnote warning">v4.7.2+</span>
: HTML `placeholder` attribute to be applied to HTML form `textarea` field.
: **Default:** unset.

`rows="integer"` <span class="footnote warning">v4.6.0+</span>
: HTML `rows` attribute to be applied to HTML form `textarea` field.
: **Default:** `5`.

## Examples

### Example 1: Comment form

~~~ html
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
~~~

Other tags used: [comment_email_input](/tags/comment_email_input), [comments_help](/tags/comments_help), [comment_name_input](/tags/comment_name_input), [comment_preview](/tags/comment_preview), [comment_remember](/tags/comment_remember), [comment_submit](/tags/comment_submit), [comment_web_input](/tags/comment_web_input).

### Example 2: Text area changes in preview

Using some conditional tags, the size of the comment form `textarea` can be changed in the preview.

~~~ html
<txp:if_comments_preview>
    <p>
        This is just a preview of your comment!<br>
        <txp:comment_message_input cols="55" rows="5" /><br>
        <txp:comments_help />
    </p>
<txp:else />
    <p>
        Message (required)<br>
        <txp:comment_message_input cols="55" rows="15" /><br>
        <txp:comments_help />
    </p>
</txp:if_comments_preview>
~~~

Other tags used: [comments_preview](/tags/comments_preview), [if_comments_preview](/tags/if_comments_preview), [else](/tags/else).

### Example 3: Minimal comment form without labels (but still accessible)

~~~ html
<p>
    <txp:comment_name_input aria_label="Your name" placeholder="Name"/>
</p>
<p>
    <txp:comment_email_input aria_label="Your email address" placeholder="Email"/>
</p>
<p>
    <txp:comment_web_input aria_label="Your website URL" placeholder="Website (http(s)://)"/>
</p>
<p>
    <txp:comment_message_input aria_label="Your message" placeholder="Your message"/>
</p>
<p>
    <txp:comment_preview />
    <txp:comment_submit />
</p>
~~~

Other tags used: [comment_email_input](/tags/comment_email_input), [comment_name_input](/tags/comment_name_input), [comment_preview](/tags/comment_preview), [comment_submit](/tags/comment_submit), [comment_web_input](/tags/comment_web_input).

## Genealogy

### Version 4.7.2

`aria_label` and `placeholder` attributes added.

### Version 4.6.0

`cols` and `rows` attributes added (replaces functionality of deprecated `msgcols` and `msgrows` attributes in [comments_form](/tags/comments_form) tag).
