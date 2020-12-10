---
layout: document
category: Tags
published: true
title: If last file
description: The if_last_file tag will execute the contained statements if the displayed file is the last in the currently displayed file download list.
tags:
  - Conditional tags
  - File tags
  - Structural tags
---

# If last file

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_last_file>
~~~

The **if_last_file** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_last_file>
    …conditional statement…
</txp:if_last_file>
~~~

The tag will execute the contained statements if the displayed file is the last in the currently displayed [file_download_list](/tags/file_download_list). The tag supports [else](/tags/else).

## Attributes

This tag has no attributes.

## Examples

### Example 1: Identify last file in a file list

~~~ html
<txp:file_download_list limit="0" break="" wraptag="ul" sort="created desc">
    <txp:if_last_file>
        <li class="earliest">
            <txp:file_download_link>
                <txp:file_download_name /> (Initial release)
            </txp:file_download_link>
        </li>
    <txp:else />
        <li>
            <txp:file_download_link>
                <txp:file_download_name />
            </txp:file_download_link>
        </li>
    </txp:if_last_file>
</txp:file_download_list>
~~~

Other tags used: [else](/tags/else), [file_download_link](/tags/file_download_link), [file_download_list](/tags/file_download_list), [file_download_name](/tags/file_download_name).

## Genealogy

### Version 4.6.0

Tag support added.
