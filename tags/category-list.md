---
layout: document
category: tags
published: true
title: "Category list"
description: The category_list tag can be used as either a single tag or container tag which is used to produce a list of linked categories.
tags:
  - List tags
  - Navigation tags
  - Structural tags
---

# Category list

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:category_list />
```

The *category_list* tag can be used as either a __single__ tag or __container__ tag which is used to produce a list of linked categories.

## Attributes

Tag will accept the following attributes (*case-sensitive*):

* @active_class="class name"@
HTML @class@ attribute to be applied to the @active@ or current link in a list. Only works in the __single__ tag without the @form@ attribute.
Default: unset.
* @categories="category name(s)"@
Comma-separated list of categories to include, displayed in the order specified (unless overridden by @sort@ attribute). Use category names *not* titles here - note that Textpattern automatically converts the names to lowercase and converts spaces to hyphens when they are created.
Default: unset (all categories).
* @children="boolean"@
Can limit the list depth to one level below the parent category.
Values: @0@ (no children, i.e.,only show one level below the parent) or @1@ (show all nested categories).
Default: @1@.
* @exclude="category name(s)"@
List of category names which will be excluded from the list. @categories@ takes precendence over @exclude@.
Default: unset.
* @form="form name"@
Use specified form to process each included category.
Default: unset.
* @html_id="id"@
The HTML @id@ attribute applied to the @wraptag@, if set.
Default: unset.
* @limit="integer"@
The number of articles to display.
Default: @0@ (no limit).
* @offset="integer"@
The number of articles to skip.
Default: @0@.
* @parent="category name"@
Return only specified category and its children categories. Accepts comma-separated list of values.
Default: unset.
* @section="section name"@
Restrict to articles from specified section(s).
Values: (comma separated list of) section name(s).
Default: unset, retrieves from all sections.
* @sort="sort value(s)"@
How to sort the resulting list.
Values:
@id@.
@name@.
@parent@.
@rand()@ ("random":http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html#function_rand).
@title@.
@type@.
Default: @name asc@.
* @this_section="boolean"@
Link to currently active section (overrides @section@ attribute).
Values: @0@ (no) or @1@ (yes).
Default: @0@.
* @type="category type"@
Values: @article@, @image@, @link@, @file@.
Default: @article@.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

* @break="value"@
Where value is an HTML element, specified without brackets (e.g. @break="li"@) or some string to separate list items.
Default: @br@ (but see @@break cross-reference@@ for exceptions).
* @class="class name"@
HTML @class@ to apply to the @wraptag@ attribute value.
Default: tag name or unset (see @@class cross-reference@@).
* @label="text"@
Label prepended to item.
Default: unset (but see @@label cross-reference@@ for exceptions).
* @labeltag="element"@
HTML element to wrap (markup) label, specified without brackets (e.g. labeltag="h3").
Default: unset.
* @wraptag="element"@
HTML element to wrap (markup) list block, specified without brackets (e.g. @wraptag="ul"@).
Default: unset (but see @@wraptag cross-reference@@ for exceptions).

## Examples

### Example 1: Labelled category list

```html
<txp:category_list label="Categories" wraptag="p" break="br" />
```

### Example 2: As an unordered list

```html
<txp:category_list break="li" wraptag="ul" />
```

### Example 3: Set active class using the container tag

```html
<txp:category_list wraptag="ul" break="">
    <li<txp:if_category name="<txp:category />"> class="active"</txp:if_category>>
        <txp:category title="1" link="1" />
    </li>
</txp:category_list>
```

This code will add @class="active"@ to the @<li>@ element around the current viewed category in the list, allowing your to style it with CSS as desired.

Other tags used: "category":category, "if_category":if-category.

## Genealogy

### Version 4.6.0

@html_id@, @limit@ and @offset@ attributes added.

### Version 4.0.7

Can be used as a container tag.
@form@ and @children@ attributes added.

### Version 4.0.4

@active_class@, @categories@, @exclude@, @section@ and @this_section@ attributes added.
