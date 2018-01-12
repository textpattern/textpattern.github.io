---
layout: document
category: Tags
published: true
title: Output form
description: Textpattern will replace this tag with the content resulting from the form template called by the tag.
tags:
  - Structural tags
---

# Output form

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:output_form />
~~~

The **output_form** tag can be used as a *single* or a *container* tag. Textpattern will replace this tag with the content resulting from the form template called by the tag.

The basic function of **output_form** is to take a particular form that defines a given set of scripting or HTML functions and output that set of functions anywhere in a particular web page. Think about your pages; many of them will use different article or link forms to display content unique to the particular page, but they'll also have a lot of things in common, like the opening `DOCTYPE` declaration, calls to CSS, navigation menus, etc. Using **output_form** it's possible to write these page elements once and use them anywhere.

From Textpattern CMS version 4.7.0 onwards, `<txp:output_form form="my_form" />` can be invoked as 'shortcode' `<txp::my_form />`.

For the container tag and/or shortcode usage, see the [yield](yield) tag.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`form="form name"`
: Use specified form.
: **Default:** unset (no output).

`yield="boolean or list of names"` <span class="footnote warning">v4.7.0+</span>
: Populate `<txp:yield />` tags inside the form with the corresponding attributes.
: **Default:** unset in the standard form, `1` if used as shortcode.

## Examples

### Example 1: Manage small pieces of static text

~~~ html
<txp:output_form form="copyright" />
~~~

You can use this tag in combination with a form to create small pieces of text that would not otherwise be managed as a regular article. For example you might define the copyright conditions of content on your site in a form and add that to one or more places via the output_form tag. Name the form `copyright`, save it as type `misc` and call the form using the tag structure.

Note: Staff Writers and Freelancers can not edit the contents of forms.
{: .alert-block .information}

### Example 2: Manage header for all pages

Suppose you want to manage the `<head>` section of your page template as a single-sourced block of content. You can create a form called `head` and save it as type `misc`. The content of the form might look like this for example:

~~~ html
<head>
    <meta charset="utf-8">
    <title>
        <txp:page_title />
    </title>
    <txp:css format="link" media="" />
    <meta name="generator" content="Textpattern CMS">
    <meta name="robots" content="index, follow, noodp, noydir">
    <txp:feed_link flavor="rss" format="link" label="RSS" />
</head>
~~~

Then in each of your pages, you insert the header using...

~~~ html
<txp:output_form form="head" />
~~~

...which will add this `<head>` to all the pages automatically.

The advantage of this is that when you edit your page header, you can do so once in the form template and it will update all instances of use in your different pages at the same time.

Other tags used: [css](css), [feed_link](feed_link), [page_title](page_title).

### Example 3: Shortcode to create HTML5 video code

Create a 'misc' type form template with the name `media_video`:

~~~ html
<div itemprop="video" itemscope itemtype="https://schema.org/VideoObject">
    <video controls width="<txp:yield name="width" default="640" />" height="<txp:yield name="height" default="480" />"<txp:if_yield name="poster-url"> poster="<txp:yield name="poster-url" />"</txp:if_yield>>
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

This can now be called from within an article using the shortcode format:

~~~ html
<txp::media_video width="" height="" mp4-url="" webm-url="" poster-url="" name="" description="" duration-seconds="" />
~~~

`poster-url`, `name`, `description` and `duration-seconds` are optional for users, but if provided display valid Schema.org microdata.

For example:

~~~ html
<txp::media_video width="720" mp4-url="/video/example.mp4" webm-url="/video/example.webm" poster-url="/video/example.png" name="Cat video" description="My great video of cats." duration-seconds="20" />
~~~

Other tags used: [if_yield](if_yield), [posted](posted), [yield](yield).

### Example 4: Using yield attribute

Suppose that the form of Example 3 is called `media video`. Then it can not be called using the shortcode format:

~~~ html
<txp::media video width="" height="" ... />
~~~

because the parser will see it as `<txp:output_form form="media" />`. And if you call

~~~ html
<txp:output_form form="media video" width="" height="" ... />
~~~

the parser will complain (mainly for backward compatibility reasons) about unknown attributes `width`, `height` etc.

The solution consists to call `<txp:output_form />` with `yield` attribute:

~~~ html
<txp:output_form yield form="media video" width="" height="" ... />
~~~

## Genealogy

### Version 4.7.0

Can be used as shortcode. \\
`yield` attribute added.

### Version 4.2.0

Can be used as a container tag.
