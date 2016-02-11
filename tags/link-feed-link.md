---
layout: document
category: tags
published: true
title: "Link feed link"
tags:
  - Link tags
---

# Link feed link

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:link_feed_link />
```

The *link_feed_link* tag is a __single__ tag. Textpattern will replace this tag with an anchor to the site's 'links' RSS feed.

## Attributes

Tag will accept the following attributes (*case-sensitive*):

* @category="category name"@
Restrict to specified category. Note: the category name may be different to the title you typed when you created the category, as the names are sanitized for URL use. Check the "Categories administration panel":../administration/categories-panel to ensure you are using the correct name.
Value: category name.
Default: current category.
* @flavor="value"@
Whether to output a link to the RSS or Atom version of the feed.
Values: @rss@ or @atom@.
Default: @rss@.
* @format="value"@
Whether to output HTML @<a>@ tag or @<link>@ tag.
Values: @a@ or @link@.
Default: @a@.
* @title="value"@
"HTML title attribute":https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes#title to be applied to link tag.
Default: depends upon @flavor@ used, either @RSS feed@ or @Atom feed@.

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

p(alert-block information). Note: @label@ and @wraptag@ attributes are applicable only when using @format@ of @a@ (@label@ used as link text).

## Examples

### Example 1: Atom feed link with custom label

```html
<txp:link_feed_link flavor="atom" label="Commerce links" />
```

## Genealogy

### Version 4.3.0

@class@ attribute added.

### Version 4.0.4

@format@ attribute added.
