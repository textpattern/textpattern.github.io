---
layout: document
category: Tags
published: true
title: File download downloads
description: The file_download_downloads tag will replace with the number of times the current file has been downloaded.
tags:
  - File tags
---

# File download downloads

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:file_download_downloads />
~~~

The **file_download_downloads** tag is a *single* tag that Textpattern will replace with the number of times the current file has been downloaded. Should be used in Textpattern 'file' type [Form templates](/themes/form-templates-explained).

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

## Examples

### Example 1: Display the number of downloads

~~~ html
<p>
    Downloads:
    <txp:file_download_downloads />
</p>
~~~

### Example 2: Display the number of downloads of a particular file

~~~ html
<txp:file_download_list id="1">
    <p>
        <txp:file_download_name />
        downloaded
        <txp:file_download_downloads />
        times.
    </p>
</txp:file_download_list>
~~~

Other tags used: [file_download_list](/tags/file_download_list), [file_download_name](/tags/file_download_name).
