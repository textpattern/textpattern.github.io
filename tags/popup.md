---
layout: document
category: tags
published: true
title: "Popup"
tags:
  - Navigation tags
---

# Popup

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:popup />
```

The *popup* tag is a __single__ tag. Textpattern will replace this tag with a popup selector for browsing by section or category.

## Attributes

Tag will accept the following attributes (*case-sensitive*):

* @section="section_name"@
Jump to the selected category for the named section.
Default: unset.
* @this_section="boolean"@
Jump to the selected category for the currently active section.
Values: @0@ (no) or @1@ (yes).
Default: @0@.
* @type="type"@
Values: @s@ (section), @c@ (category).
Default: @c@.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

* @class="class name"@
HTML @class@ to apply to the @wraptag@ attribute value.
Default: tag name or unset (see @@class cross-reference@@).
* @label="text"@
Label prepended to item.
Default: unset (but see @@label cross-reference@@ for exceptions).
* @wraptag="element"@
HTML element to wrap (markup) list block, specified without brackets (e.g. @wraptag="ul"@).
Default: unset (but see @@wraptag cross-reference@@ for exceptions).

## Examples

### Example 1: Browse by category popup selector

```html
<txp:popup type="c" wraptag="p" />
```

### Example 2: Popup selector with custom label

```html
<txp:popup label="Browse this site" type="c" wraptag="p" />
```

## Genealogy

### Version 4.3.0

@class@ attribute added.
