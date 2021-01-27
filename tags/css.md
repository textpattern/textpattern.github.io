---
layout: document
category: Tags
published: true
title: Css
description: The basic css tag is used to output the URL of the stylesheet assigned in the Textpattern Sections panel.
tags:
  - Markup tags
---

# CSS

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:css />
~~~

The basic **css** tag is a *single* tag used to output the URL of the stylesheet assigned in the Textpattern Sections panel.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`format="value"` <span class="footnote warning">v4.0.4+</span>
: How to format output: either return complete [HTML link tag](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link) with necessary HTML attributes, or only the stylesheet's URL. As of Textpattern 4.7.2 you can specify using physical (flat) files.
: **Values:** `link`, `flat.link`, `url` or `flat.url`.
: **Default:** `url`.

`media="value"` <span class="footnote warning">v4.0.4+</span>
: [HTML media attribute](https://developer.mozilla.org/en-US/docs/Web/CSS/Media_Queries/Using_media_queries) to be applied to link tag (when invoked with `format="link"`).
: **Default:** `screen`.

`name="style name"`
: Link to specified style.

`rel="value"` <span class="footnote warning">v4.0.4+</span>
: [HTML rel attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Link_types) to be applied to link tag (when invoked with `format="link"`).
: **Default:** `stylesheet`.

`title="value"` <span class="footnote warning">v4.0.4+</span>
: [HTML title attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes#title) to be applied to link tag (when invoked with `format="link"`).
: **Default:** unset.

## Examples

### Example 1: Output just the stylesheet's URL

~~~ html
<head>
    <!-- …tags… -->
    <link rel="stylesheet" href="<txp:css />" media="screen, projector">
    <!-- …more tags… -->
</head>
~~~

### Example 2: Output the link to the section's default stylesheet

~~~ html
<head>
    <!-- …tags… -->
    <txp:css format="link" />
    <!-- …more tags… -->
</head>
~~~

### Example 3: Output the link to a named stylesheet

~~~ html
<head>
    <!-- …tags… -->
    <txp:css format="link" name="style_name" />
    <!-- …more tags… -->
</head>
~~~

### Example 4: Output print and alternate stylesheets

~~~ html
<head>
    <!-- …tags… -->
    <txp:css format="link" name="plain" rel="alternate" title="Plain and simple style" />
    <txp:css format="link" name="glossy" rel="alternate" title="Glossy style" />
    <txp:css format="link" name="print" media="print" />
    <!-- …more tags… -->
</head>
~~~

### Example 5: Output print and alternate stylesheets calling flat files (v4.7.2+)

~~~ html
<head>
    <!-- …tags… -->
    <txp:css name="plain" media="all" rel="alternate" title="Plain and simple style" format="flat.link" />
    <txp:css name="glossy" media="screen" rel="alternate" title="Glossy style" format="flat.link" />
    <txp:css name="print" media="print" format="flat.link" />
    <!-- …more tags… -->
</head>
~~~

## Genealogy

### Version 4.7.2

`flat.link` and `flat.url` values added to `format` attribute.

### Version 4.3.0

`n` attribute deprecated and renamed to `name`.

### Version 4.0.4

`format`, `media`, `rel` and `title` attributes added.
