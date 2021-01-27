---
layout: document
category: Tags
published: true
title: Image display (Deprecated)
description: The 'image_display' tag is deprecated - use 'image' tag instead.
tags:
  - Deprecated tags
---

# Image display

**Deprecated in Textpattern 4.7.0** (use the [image](/tags/image) tag instead)
{: .alert-block .error}

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:image_display />
~~~

The **image_display** tag is a *single* tag that is intended to be used in tandem with [image_index](/tags/image_index).

The **image_display** tag displays an image specified by the page URL which in turn is built by its tandem tag [image_index](/tags/image_index). To use this tag successfully, it has to be placed either inside an article which shares a common category with the images to display (thereby linking article and image categories), or in a location at the page template which is displayed without any special article context.

If this tag seems to display no image at all, it probably resides inside an article which is never rendered as it does not belong to the currently active category.

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

## Examples

### Example 1: Display a single image as chosen by image_index

~~~ html
<txp:image_display />
~~~

See the [image_index](/tags/image_index) tag documentation for details on how to populate this tag with content.

## Genealogy

### Version 4.7.0

Tag support removed - use [image](/tags/image) tag instead.
