---
layout: document
category: Shortcodes
published: true
title: Video embed shortcode
description: The shortcode to create a HTML5-compliant video snippet and including Schema.org microdata.
---

# Video embed shortcode

The shortcode to create a HTML5-compliant video snippet and including [Schema.org](https://schema.org) microdata.

**Contents**

* Table of contents
{:toc}

## Form to create

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

## Short-tag to use

~~~ html
<txp::media_video width="" height="" mp4-url="" webm-url="" poster-url="" name="" description="" duration-seconds=""/>
~~~

`poster-url`, `name`, `description` and `duration-seconds` are optional, but should be provided if possible to provide valid Schema.org microdata. If not used, remove those attributes from your shortcode.

## Example usage

~~~ html
<txp::media_video width="640" height="480" mp4-url="/video/video1.mp4" webm-url="/video/video1.webm" poster-url="/video/video1-poster.png" name="Cat video" description="My great video of cats." duration-seconds="20" />
~~~
