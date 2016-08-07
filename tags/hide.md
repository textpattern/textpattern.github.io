---
layout: document
category: tags
published: true
title: "Hide"
Description: The hide tag is used to suppress the interpretation of all enclosed contents.
tags:
  - Markup tags
---

# Hide

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)

## Syntax

~~~ html
<txp:hide />
~~~

The **hide** tag is a *container* tag which is used to suppress the interpretation of all enclosed contents. Use it for comments, temporary concealment of article text parts or non-destructive form changes.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Insert a useful note in a template

~~~ html
<txp:hide>This is a work-around for a bug in Internet Explorer, again</txp:hide>
~~~

### Example 2: Comment out part of a form for testing

If you want to try something out to see how it affects the layout without actually deleting the content, wrap it in **hide** tags:

~~~ html
<div class="entry-content">
    <txp:body />
</div>
<txp:hide>
    <address class="vcard author">
        <span class="fn">
            <txp:author />
        </span>
    </address>
    <txp:comments_invite wraptag="p" />
</txp:hide>
~~~

Renders the body text inside the `<div class="entry-content">` but skips the `<address>` and `<txp:comments_invite />` tags.

Other tags used: [body](body), [author](author), [comments_invite](comments-invite).
