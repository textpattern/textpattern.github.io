---
layout: document
category: Tags
published: true
title: File download link
description: The file_download_link tag will replace the tag with a download link to the file being downloaded, or assign the link to the given text or tag.
tags:
  - File tags
  - Navigation tags
---

# File download link

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:file_download_link />
~~~

The **file_download_link** tag is both a *single* tag and a *container* tag. Thus it may be used as an opening and closing pair:

~~~ html
<txp:file_download_link>
    …containing statements…
</txp:file_download_link>
~~~

When used as a single tag, Textpattern will replace the tag with a download link to the file being downloaded. As a container, it will assign the link to the given text or tag, while the single tag outputs the file's plain URL.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`filename="text"`
: Specifies which file to display by its `filename` as shown on the Files panel.

`id="integer"`
: Specifies the `id`, assigned at upload of the file, to display. Can be found on the Files panel.

Note: `id` takes precedence over `filename`. If neither is defined and the tag is not used within the context of a file, nothing is returned.
{: .alert-block .information}

## Examples

### Example 1: Provide a link to download file #4

~~~ html
<txp:file_download_link id="4">
    <txp:file_download_name />
    [<txp:file_download_size format="mb" decimals="2" />]
</txp:file_download_link>
~~~

Makes a link to the given file (#4) comprising its file name and size.

Other tags used: [file_download_name](/tags/file_download_name), [file_download_size](/tags/file_download_size).
