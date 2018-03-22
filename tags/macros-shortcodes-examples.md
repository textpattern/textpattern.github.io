---
layout: document
category: Tags
published: true
title: Macros/shortcodes examples
description: Examples of ways you can utilize tag macros/shortcodes within Textpattern 4.7 onwards
---

# Macros/shortcodes examples

From Textpattern 4.7.0, it is possible to use [Form templates](https://docs.textpattern.io/themes/form-templates-explained) to build your own tags and use them as macros/shortcodes. For more information on the basic concept see [Short tags and macros/shortcodes](https://docs.textpattern.io/tags/tag-basics/short-tags-macros-shortcodes).

Below are a collection of example macros/shortcodes that you may find useful for use within your own Textpattern-powered wesbites.

On this page:

* [File download macro](#file-macro)
* [Video macro](#video-macro)

## File download macro

Macro and shortcode to create a file download snippet with optional SHA256 checksum and including [Schema.org](https://schema.org) microdata.

#### Form templates

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

#### Usage

The shortcode tag uses following syntax:

~~~ html
<txp::media_file category="" filename="" sha256="" />
~~~

`category` and `filename` are interchangeable (use one or the other, where appropriate) - if both are provided then `category` is used in preference and `filename` is ignored. `sha256` (SHA256 checksum hash) is optional, but should be provided if possible. If not used, remove this attribute from your shortcode.

#### Example

~~~ html
<txp::media_file category="current-release-zip" sha256="a868c05fc37108f2bb5e878cfbcdc61a82ce2646c4676cccb8105a6c6277be7a" />
~~~

## Video macro

Macro and shortcode to create a HTML5-compliant video snippet and including [Schema.org](https://schema.org) microdata.

#### Form template

Create a `misc` type Form template and name it `media_video`, with the following code:

~~~ html
<div itemprop="video" itemscope itemtype="https://schema.org/VideoObject">
    <video controls width="<txp:yield name="width" />" height="<txp:yield name="height" />"<txp:if_yield name="poster-url"> poster="<txp:yield name="poster-url" />"</txp:if_yield>>
        <source itemprop="contentUrl" type="video/mp4" src="<txp:yield name="mp4-url" />">
        <source itemprop="contentUrl" type="video/webm" src="<txp:yield name="webm-url" />">
    </video>
    <txp:if_yield name="name"><meta itemprop="name" content="<txp:yield name="name" />"></txp:if_yield>
    <txp:if_yield name="description"><meta itemprop="description" content="<txp:yield name="description" />"></txp:if_yield>
    <txp:if_yield name="poster-url"><meta itemprop="thumbnailUrl" content="<txp:yield name="poster-url" />"></txp:if_yield>
    <meta itemprop="uploadDate" content="<txp:posted format="iso8601" />">
    <txp:if_yield name="duration-seconds"><meta itemprop="duration" content="T<txp:yield name="duration-seconds" />S"></txp:if_yield>
</div>
~~~

#### Usage

The shortcode tag uses following syntax:

~~~ html
<txp::media_video width="" height="" mp4-url="" webm-url="" poster-url="" name="" description="" duration-seconds=""/>
~~~

`poster-url`, `name`, `description` and `duration-seconds` are optional, but should be provided if possible to provide valid Schema.org microdata. If not used, remove those attributes from your shortcode.

#### Example

~~~ html
<txp::media_video width="640" height="480" mp4-url="/video/video1.mp4" webm-url="/video/video1.webm" poster-url="/video/video1-poster.png" name="Cat video" description="My great video of cats." duration-seconds="20" />
~~~
