---
layout: document
category: tags
published: true
title: "Css"
description: The basic css tag is used to output the URL of the stylesheet assigned in the Textpattern Sections administration panel.
tags:
  - Markup tags
---

# Css

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:css />
~~~

The basic **css** tag is a *single* tag used to output the URL of the stylesheet assigned in the Textpattern [Sections administration panel](../administration/sections-panel).

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`format="value"`
: How to format output: either return complete [HTML link tag](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link) with necessary HTML attributes, or only the stylesheet's URL.
: Values: `link` or `url`.
: Default: `url`.

`media="value"`
: [HTML media attribute](https://developer.mozilla.org/en-US/docs/CSS/Media_queries) to be applied to link tag (when invoked with `format="link"`).
: Default: `screen`.

`name="style name"`
: Link to specified style.

`rel="value"`
: [HTML rel attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Link_types) to be applied to link tag (when invoked with `format="link"`).
: Default: `stylesheet`.

`title="value"`
: [HTML title attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes#title) to be applied to link tag (when invoked with `format="link"`).
: Default: unset.

## Examples

### Example 1: Output just the stylesheet's URL

~~~ html
<head>
    <!-- ...tags... -->
    <link rel="stylesheet" href="<txp:css />" media="screen, projector">
    <!-- ...more tags... -->
</head>
~~~

### Example 2: Output the link to the section's default stylesheet

~~~ html
<head>
    <!-- ...tags... -->
    <txp:css format="link" />
    <!-- ...more tags... -->
</head>
~~~

### Example 3: Output the link to a named stylesheet

~~~ html
<head>
    <!-- ...tags... -->
    <txp:css format="link" name="style_name" />
    <!-- ...more tags... -->
</head>
~~~

### Example 4: Output print and alternate stylesheets

~~~ html
<head>
    <!-- ...tags... -->
    <txp:css format="link" name="plain" rel="alternate" title="Plain and simple style" />
    <txp:css format="link" name="glossy" rel="alternate" title="Glossy style" />
    <txp:css format="link" name="print" media="print" />
    <!-- ...more tags... -->
</head>
~~~

## Genealogy

### Version 4.3.0

`n` attribute deprecated and renamed to `name`.

### Version 4.0.4

`format`, `media`, `rel` and `title` attributes added.
