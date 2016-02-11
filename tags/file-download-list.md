---
layout: document
category: tags
published: true
title: "File download list"
tags:
  - File tags
  - List tags
---

# File download list

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:file_download_list />
```

The *file_download_list* tag is a __single__ or a __container__ tag which is used to produce a list of download links according to the given attributes. Each file in the list is formatted by the file tags used in the given form (default is the @files@ form).

If used as a container, it must be specified as an opening and closing pair of tags, like this:

```html
<txp:file_download_list>
    ...contained statements...
</txp:file_download_list>
```

## Attributes

Tag will accept the following attributes (*case-sensitive*):

* @author="author login name"@
Restrict to files with the specified author.
Default: unset.
* @auto_detect="string context"@
List of Textpattern contexts to consider when automatically searching for files. If you wish to turn off the automatic check, set this to @auto_detect=""@.
Values: @category@ (to look in the URL for a category list) and/or @author@ (to look in the URL for an author list).
Default: @category, author@.
* @category="category name"@
Restrict to files from the specified category. Allows a comma separated list of category names. Note: category names may be different to the Title you typed when you created the category, as the names are sanitized for URL use. Check the "Categories administration panel":../administration/categories-panel to ensure you are using the correct names.
Default: unset.
* @form="form name"@
Use the specified form template to process the files.
Default: @files@.
* @id="file ID"@
Display the specific file or list of files.
Values: (comma separated list of) file ID(s).
Default: unset.
* @limit="integer"@
Number of files to display.
Default: @10@.
* @offset="integer"@
Number of files to skip.
Default: unset.
* @pageby="integer or limit"@
Number of files to jump each page. Without this attribute, you cannot navigate using the "newer":newer and "older":older tags. Usually you will want to track the @limit@ attribute. Use @pageby="limit"@ to do this, which means you will not have to amend two values if you subsequently decide to alter the @limit@.
Default: unset.
* @realname="author real name"@
Restrict to files with the specified author name.
Default: unset.
* @sort="by what and order"@
How to sort the resulting list.
Values:
@id@
@filename@
@title@
@category@
@description@
@downloads@
@created@
@modifie@
@rand()@ ("random":http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html#function_rand).
Adding a space and then one of either @asc@ or @desc@ orders by ascending or descending value, respectively.
Default: @filename asc@.
* @status="file status"@
Restrict to files with the specified status.
Values: @hidden@, @pending@, @live@.
Default: @live@.

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

### Example 1: Display a list of the ten most popular downloads, in descending order

```html
<txp:file_download_list limit="10" break="li" wraptag="ol" sort="downloads desc" />
```

## Genealogy

### Version 4.3.0

@pageby@ attribute added to enable paging via "newer":newer and "older":older.
@author@ attribute added.
@realname@ attribute added.
@auto_detect@ attribute added to allow automatic (URL-based) contextual listings.

### Version 4.2.0

@id@ attribute added.

### Version 4.0.7

Can be used as a container tag.

### Version 4.0.6

Support added for comma separated list for @category@ attribute.
