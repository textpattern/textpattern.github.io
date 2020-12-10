---
layout: document
category: Tags reference
published: true
title: Yield
description: The yield tag is a single/container tag which is used to return the inner content of the enclosing output_form tag.
tags:
  - Structural tags
---

# Yield

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:yield />
~~~

The **yield** tag can be used as either a *single* tag or a *container* tag to return the inner content of the enclosing `<txp:output_form />` tag.

The tag works in unison with the [output_form](/tags/output_form) tag; You place a `<txp:yield />` tag in a form and then wherever you use that form the content wrapped inside the **output_form** tag gets placed where the **yield** tag was. Essentially, the value of this is that you can use forms as flexible building blocks - each building block has a common structure, but individualized content.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`default="string"` <span class="footnote warning">v4.7.0+</span>
: The default value (see examples below). If unset, the enclosed content (if any) will be used.
: **Default:** unset.

`name="string"` <span class="footnote warning">v4.7.0+</span>
: The name (see examples below).
: **Default:** unset.

## Examples

### Example 1: Inner content and custom attributes

Given the following form named `example_form`:

~~~ html
<div>
    This content is static and will be the same every time this form is <txp:yield name="verb" default="invoked" />.
    <txp:yield />
</div>
~~~

We can invoke it twice (either in long or short form) with different inner content and attributes each time:

~~~ html
<txp:output_form form="example_form">
    Invoking 'example_form' with some inner content.
</txp:output_form>
<txp::example_form verb="called">
    Invoking 'example_form' again, this time with different inner content.
</txp::example_form>
~~~

And the result will be:

~~~ html
<div>
    This content is static and will be the same every time this form is invoked.
    Invoking 'example_form' with some inner content.
</div>
<div>
    This content is static and will be the same every time this form is called.
    Invoking 'example_form' again, this time with different inner content.
</div>
~~~

Other tags used: [output_form](/tags/output_form).

## Genealogy

### Version 4.7.0

`default` and `name` attributes added.

### Version 4.2.0

Tag support added.
