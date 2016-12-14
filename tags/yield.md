---
layout: document
category: Tags
published: true
title: "Yield"
description: The yield tag is a single tag which is used to return the inner content of the enclosing output_form tag.
tags:
  - Structural tags
---

# Yield

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:yield />
~~~

The **yield** tag is a *single* tag which is used to return the inner content of the enclosing `<txp:output_form />` tag.

The tag works in unison with the [output_form](output_form) tag; You place a `<txp:yield />` tag in a form and then wherever you use that form the content wrapped inside the **output_form** tag gets placed where the **yield** tag was. Essentially, the value of this is that you can use forms as flexible building blocks - each building block has a common structure, but individualized content.

## Attributes

This tag has no attributes.

## Examples

### Example: Inner content

Given the following form named `example_form`:

~~~ html
<div>
    This content is static and will be the same every time this form is invoked.
    <txp:yield />
</div>
~~~

We can invoke it twice with different inner content each time:

~~~ html
<txp:output_form form="example_form">
    Invoking 'example_form' with some inner content.
</txp:output_form>
<txp:output_form form="example_form">
    Invoking 'example_form' again, this time with different inner content.
</txp:output_form>
~~~

And the result will be:

~~~ html
<div>
    This content is static and will be the same every time this form is invoked.
    Invoking 'example_form' with some inner content.
</div>
<div>
    This content is static and will be the same every time this form is invoked.
    Invoking 'example_form' again, this time with different inner content.
</div>
~~~

Other tags used: [output_form](output_form).

## Genealogy

### Version 4.2.0

Tag support added.
