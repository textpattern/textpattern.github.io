---
layout: document
category: Shortcodes
published: true
title: Image with caption shortcode
description: Using a shortcode and short-tag to add image figures with captions.
---

# Image with caption shortcode

Adding an image as a figure with caption is a common desire with web publishers. With a flexible short-tag and shortcode combination, this is easy and reusable.

On this page:

* [Scenario](scenario)
* [Form to use](form-to-use)
* [Short-tag to use](short-tag-to-use)
* [Notes](notes)
* [Example usage](example-usage)

## Secenrio

Consider the following example of an image marked up as a figure with caption:

```html
<figure class="some-class">
   <img src="https://example.org/images/130.jpg" alt="The throne of Zeus" />
   <figcaption>A view from Mount Olympus</figcaption>
</figure>
```

Writing that block of nested markup each time you want a figure is tedious, and a messy distraction in your article copy when editing. It’s also a pain to find and edit such markup when you need to later.

Let’s do better.

## Form to use

Create a new Form template (of any type), name it **figure** (or “image_figure” if you want the specificity), paste the following code in, and save the template:

```html
<figure<txp:if_yield name="class"> class="<txp:yield name="class" />"</txp:if_yield>>
   <txp:image id='<txp:yield name="id" />' />
   <txp:if_yield name="caption">
      <figcaption><txp:yield name="caption" escape="tidy,textile" /></figcaption>
   <txp:else />
      <txp:image_info id='<txp:yield name="id" />' wraptag="figcaption" escape="tidy,textile" />
   </txp:if_yield>
</figure>
```

Now you have a custom shortcode. By create that code, you automatically create a corresponding short-tag too.

## Short-tag to use

In fact, you can use either of the following to output your figure:

* `<txp::figure />` (with short-tags enabled)
* `<txp:output_form yield form="figure" />` (without short-tags enabled; the `yield` is necessary to process the custom attributes)

Alternatively, the attributes can be defined explicitly in the tag: 

* `<txp:output_form yield="id, caption" form="figure" />`

In the latter case, omitting the `class` attribute means it will be considered as a global attribute and processed accordingly.

This new tag takes up to three attributes:

* `id` (mandatory) — The id of the image you wish to display.
* `class` (optional) — A CSS class to apply to the HTML `figure` element (i.e. `<figure class=“”>`.
* `caption` (optional) — The caption to apply to the image. If omitted, it will use the one associated with the image itself.

## Notes

* The `<txp:yield name="your-attribute" />` tag can be used to process attributes inside your custom tag. Add the `default` attribute to it if you want to set a default value.
* The `<txp:if_yield name="your-attribute">` container tag can be used to determine if the attribute has been supplied. Works with `<txp:else />`.
* The Textile attribute (and values), `escape="tidy,textile"`, used in the example above is optional. It enables rendering any Textile you may want to use in your image captions (e.g. a source link). See [Escaping tags](https://docs.textpattern.io/tags/tag-basics/tag-escaping) for more about this new attribute functionality, which works on every Textpattern tag.

## Example usage

You can use this custom Textpattern `figure` tag (or `image_figure` if that’s how you named it for specificity) any way you like:

* `<txp::figure id="130" />`
* `<txp::figure id="130" class="photo" />`
* `<txp::figure id="130" class="photo" caption="The throne of Zeus at Mount Olympus." />`

Or as part of a grid of images:

```html
<txp:images category="travel" wraptag="div" class="grid">
   <txp::figure id='<txp:image_info type="id" />' />
</txp:images>
```

See more [Shortcode examples](https://docs.textpattern.io/tags/tag-basics/shortcode-examples).