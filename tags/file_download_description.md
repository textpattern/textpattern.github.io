---
layout: document
category: Tags
published: true
title: File download description
description: The file_download_description tag will replace with the description of the file to download, as defined when the file was uploaded.
tags:
  - File tags
---

# File download description

**On this page**:

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:file_download_description />
~~~

The **file_download_description** tag is a *single* tag which Textpattern will replace with the description of the file to download, as defined when the file was uploaded. Should be used in Textpattern 'file' type [Form templates](/themes/form-templates-explained).

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"`
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&` for the file's `description` attributes.
: **Values:** See the [tag escaping](/tags/learning/#tag-escaping) documentation for all possible values.
: **Default:** `html`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`wraptag="element"`
: HTML tag to wrap around description text, specified without brackets (e.g. `wraptag="div"`).
: **Default:** unset.

## Examples

### Example 1: Display a file's description

~~~ html
<p>
    File description:
    <txp:file_download_description />
</p>
~~~

Other tags used: [text](/tags/text).

## Genealogy

### Version 4.0.7

Default value for `escape` attribute changed from 'unset' to `html`.
