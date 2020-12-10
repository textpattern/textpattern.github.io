---
layout: document
category: Tags
published: true
title: Comments help
description: The comments_help tag is used to display a markup language (textfilter) help link.
tags:
  - Comment tags
---

# Comments help

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:comments_help />
~~~

The **comments_help** tag is a *single* tag which is used to display a markup language (textfilter) help link. This tag can be used in a Textpattern page or a Textpattern form.

## Attributes

This tag has no attributes.

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

Other tags used: [comment_email_input](/tags/comment_email_input), [comments_help](/tags/comments_help), [comment_message_input](/tags/comment_message_input), [comment_name_input](/tags/comment_name_input), [comment_preview](/tags/comment_preview), [comment_remember](/tags/comment_remember), [comment_submit](/tags/comment_submit), [comment_web_input](/tags/comment_web_input).
