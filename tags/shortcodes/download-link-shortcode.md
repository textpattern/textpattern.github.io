---
layout: document
category: Shortcodes
published: true
title: Download link shortcode
description: Shortcode for a file download snippet with optional SHA256 checksum and including Schema.org microdata.
---

# Download link shortcode

Shortcode for a file download snippet with optional SHA256 checksum and including Schema.org microdata.

**Contents**

* Table of contents
{:toc}

## Forms to create

Create a `file` type Form template and name it `files`, with the following code:

~~~ html
<section itemscope itemtype="https://schema.org/DataDownload">
    <h6>File download</h6>
    <p><a href="<txp:file_download_link />" itemprop="url"><span itemprop="name"><txp:file_download_name /></span></a></p>
    <footer>
        <txp:evaluate test>
            <div itemprop="description"><txp:file_download_description /></div>
        </txp:evaluate>
        File size
        <span itemprop="contentSize"><txp:file_download_size format="k" decimals="0" /></span>
        <span role="separator">|</span>
        Created
        <time datetime="<txp:file_download_created format="iso8601" />" itemprop="dateCreated"><txp:file_download_created format="%d %b %Y" /></time>
        <txp:if_yield name="sha256">
            <span role="separator">|</span>
            SHA256 checksum
            <code><txp:yield name="sha256" /></code>
        </txp:if_yield>
    </footer>
</section>
~~~

Create a `misc` type Form template and name it `media_file`, with the following code:

~~~ html
<txp:if_yield name="category">
    <txp:file_download_list category='<txp:yield name="category" />' limit="1" break="" sort="created desc" />
<txp:else />
    <txp:file_download filename='<txp:yield name="filename" />' />
</txp:if_yield>
~~~

## Short-tag to use

Add this short-tag where you want the download link to appear:

~~~ html
<txp::media_file category="" filename="" sha256="" />
~~~

`category` and `filename` are interchangeable (use one or the other, where appropriate) - if both are provided then `category` is used in preference and `filename` is ignored. `sha256` (SHA256 checksum hash) is optional, but should be provided if possible. If not used, remove this attribute from your shortcode.

## Example usage

~~~ html
<txp::media_file category="current-release-zip" sha256="a868c05fc37108f2bb5e878cfbcdc61a82ce2646c4676cccb8105a6c6277be7a" />
~~~
