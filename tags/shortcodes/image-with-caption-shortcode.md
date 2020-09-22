---
layout: document
category: Shortcodes
published: true
title: Image with caption shortcode
description: Using a shortcode and short-tag to add image figures with captions.
---

# Image with caption shortcode

Adding an image as a figure with caption is a common desire with web publishers. With a flexible short-tag and shortcode combination, this is easy and reusable.

**On this page**:

* Table of contents
{:toc}

## Scenario

Consider the following raw HTML example:

~~~ html
<figure class="some-class">
    <img src="https://example.org/images/130.jpg" alt="The throne of Zeus" />
    <figcaption>A view from Mount Olympus</figcaption>
</figure>
~~~

Writing that block of nested markup each time you want a figure is tedious, and a messy distraction in your article copy when editing. It’s also a pain to find and edit such markup when you need to later, notably the caption.

Let’s do better.

## Form to use

Create a new Form template (of any type), name it **figure**, paste the following code in, and save the template:

~~~ html
<figure<txp:if_yield name="class"> class="<txp:yield name="class" />"</txp:if_yield>>
    <txp:image id='<txp:yield name="id" />' />
    <txp:if_yield name="caption">
        <figcaption><txp:yield name="caption" escape="tidy,textile" /></figcaption>
    <txp:else />
        <txp:image_info id='<txp:yield name="id" />' wraptag="figcaption" escape="tidy,textile" />
    </txp:if_yield>
</figure>
~~~

Now you have a custom shortcode. By creating that code, you automatically create a corresponding short-tag too.

The Textile attribute (and values), `escape="tidy,textile"`, used in the example above is optional. It enables rendering any Textile you may want to use in your image captions (e.g. a source link). See [Escaping tags](/tags/learning/#tag-escaping) for more about this new attribute functionality, which works on every Textpattern tag.

## Short-tag to use

The corresponding short-tag reflects the name of your shortcode form: `<txp::figure />`.

See [Custom short-tags and shortcodes](/tags/shortcodes/custom-short-tags-and-shortcodes) doc for tag usage when short-tag functionality is disabled in Preferences.

## Tag attributes

This new tag, as designed, takes up to three attributes:

* `id` (mandatory) — The id of the image you wish to display.
* `class` (optional) — A CSS class to apply to the HTML `figure` element (i.e. `<figure class="">`.
* `caption` (optional) — The caption to apply to the image. If omitted, it will use the one associated with the image itself.

## Example usage

You can use the custom short-tag any way you like:

* `<txp::figure id="130" />`
* `<txp::figure id="130" class="photo" />`
* `<txp::figure id="130" class="photo" caption="The throne of Zeus at Mount Olympus." />`

Or as part of a grid of images:

~~~ html
<txp:images category="travel" wraptag="div" class="grid">
    <txp::figure id='<txp:image_info type="id" />' />
</txp:images>
~~~

See more [Shortcode examples](/tags/shortcodes/).
