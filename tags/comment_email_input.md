---
layout: document
category: Tags
published: true
title: Comment email input
description: The comment_email_input tag is used to display a text entry field to accept the commenter's email address.
tags:
  - Comment tags
---

# Comment email input

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:comment_email_input />
~~~

The **comment_email_input** tag is a *single* tag which is used to display a text entry field to accept the commenter's email address. Used in the comment input form template.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`aria_label="text"` <span class="footnote warning">v4.7.2+</span>
: HTML `aria-label` attribute to be applied to HTML form text `input` field.
: **Default:** unset.

`placeholder="text"` <span class="footnote warning">v4.7.2+</span>
: HTML `placeholder` attribute to be applied to HTML form text `input` field.
: **Default:** unset.

`size="integer"` <span class="footnote warning">v4.6.0+</span>
: HTML `size` attribute to be applied to the HTML form text `input` field.
: **Default:** `25`.

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

Other tags used: [comments_help](/tags/comments_help), [comment_message_input](/tags/comment_message_input), [comment_name_input](/tags/comment_name_input), [comment_preview](/tags/comment_preview), [comment_remember](/tags/comment_remember), [comment_submit](/tags/comment_submit), [comment_web_input](/tags/comment_web_input).

### Example 2: Minimal comment form without labels (but still accessible)

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

Other tags used: [comment_message_input](/tags/comment_message_input), [comment_name_input](/tags/comment_name_input), [comment_preview](/tags/comment_preview), [comment_submit](/tags/comment_submit), [comment_web_input](/tags/comment_web_input).

## Genealogy

### Version 4.7.2

`aria_label` and `placeholder` attributes added.

### Version 4.6.0

`size` attribute added (replaces functionality of deprecated `isize` attribute in [comments_form](/tags/comments_form) tag).
