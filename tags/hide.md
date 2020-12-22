---
layout: document
category: Tags
published: true
title: Hide
description: The hide tag is used to suppress the interpretation of all enclosed contents.
tags:
  - Markup tags
---

# Hide

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:hide />
~~~

The **hide** tag is a *container* tag which is used to suppress or postpone the interpretation of all enclosed contents. Use it for comments, temporary concealment of article text parts or non-destructive form changes.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`process="integer"` <span class="footnote warning">v4.7.0+</span>
: Whether and when to process the enclosed contents. If unset, no tag processing nor output will be done. If set without a value, the contents will be processes but not output. If set to an empty value (`""` or `"0"`), the contents will be output as is without processing. Finally, a positive value `"n"` means process and output on the `n`th pass.
: **Default:** unset.

## Examples

### Example 1: Insert a useful note in a template and define a variable

~~~ html
<txp:hide process>
    This is a work-around for a bug in Internet Explorer, again
    <txp:variable name="ie_workaround" value='<txp:output_form form="ie_workaround" />' />
</txp:hide>
~~~

Other tags used: [output_form](/tags/output_form), [variable](/tags/variable).

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

Other tags used: [author](/tags/author), [body](/tags/body), [comments_invite](/tags/comments_invite), [output_form](/tags/output_form), [variable](/tags/variable).

## Genealogy

### Version 4.7.0

`process` attribute added.
