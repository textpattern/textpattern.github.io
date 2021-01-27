---
layout: document
category: Tags
published: true
title: File download
description: The file_download tag will replace with a Textpattern 'file' type Form template.
tags:
  - File tags
---

# File download

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:file_download />
~~~

The **file_download** tag is a *single* tag which Textpattern will replace with Textpattern 'file' type Form templates. Inside that form go the other [file tags](/tags/types/file-tags).

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`filename="name"`
: Filename of the file to link to.
: **Default:** unset (nothing is returned).

`form="form name"`
: Use specified form template to process the files.
: **Default:** `files`.

`id="integer"`
: File `id` of the file to link to.
: **Default:** unset (nothing is returned).

{% include atts-global.html %}

## Examples

### Example 1: Display a download form

~~~ html
<txp:file_download form="new-files" id="1" />
~~~

Gets file with `id` of `1` and displays results using `new-files` form.
