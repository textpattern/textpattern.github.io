---
layout: document
category: Tag basics
published: true
title: Short tags and macros/shortcodes
description: Since Textpattern 4.7, short tags and also the shortcodes concept are supported.
---

# Short tags and macros/shortcodes

On this page:

* [Short tags](#short-tags)
* [Form templates as custom tags (a.k.a. macros or shortcodes)](#form-templates-as-custom-tags-aka-macros-or-shortcodes)
* [Shortening tag attributes](#shortening-tag-attributes)
* [Shortening tag constructs using negation](#shortening-tag-constructs-using-negation)

## Short tags

Textpattern tags take the form `<txp:tag_name attribute1="value" ... />`. It is possible to reduce the amount of typing involved by enabling a shorthand notation whereby the `txp:` may be omitted by following a few simple guidelines.

Support for short tags can be enabled/disabled from the [Preferences panel](https://docs.textpattern.io/administration/preferences-panel#enable-short-tag-support). Support is enabled by default.

Here are some examples to demonstrate the concept:

* `<txp:article_id />` becomes `<article::id />`.
* `<txp:recent_articles/>` becomes `<recent::articles />`.
* `<txp:file_download_list />` becomes `<file::download_list />`.
* `<txp:smd_if />` becomes `<smd::if />`.
* `<txp:smd_if> ... <txp:else /> ... </txp:smd_if>` becomes `<smd::if> ... <smd::else /> ... </smd::if>` (note that the plugin prefix can be used for the `else` tag).

If a tag contains an underscore `_` and you enable short tags, the basic concept is:

1. Remove the `txp:` prefix.
2. Swap the first occurrence of the underscore for `::`.

## Form templates for custom shortcode tags (a.k.a. macros)

There’s one exception to the rule above regarding the `<txp:output_form>` tag. Beginning with Textpattern 4.7.0, it is possible to use [Form templates](https://docs.textpattern.io/themes/form-templates-explained) to create custom shortcode tags (similar to macros with the smd_macro plugin, which core shortcode functionality now makes obsolete).

Consider an image figure, which is a common need in web publishing:

```html
<figure class="some-class">
   <img src="https://example.org/images/130.jpg" alt="The throne of Zeus" />
   <figcaption>A view from Mount Olympus</figcaption>
</figure>
```

Writing that block of nested markup each time you want a figure is tedious, and a messy distraction in your article copy when editing. It’s also a pain to find and edit such markup when you need to later.

Instead, using the power of the `<txp:yield>` tag, Form template shortcodes, and the new short-tags functionality, you can create the nested markup block once, output it anywhere needed, and only change the specific data attributes (namely `id`, `class`, and `caption`).

Here’s how to do figures:

Create a new Form template (of any type), name it **figure**, paste the following code in, and save the template:

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

Now you have a custom tag that can be used by either of the following constructions:

* `<txp::figure />` (with short-tags enabled)
* `<txp:output_form yield form="figure" />` (without short-tags enabled; the `yield` is necessary to process the custom attributes)

Alternatively, the attributes can be defined explicitly in the tag: 

* `<txp:output_form yield="id, caption" form="figure" />`

In the latter case, omitting the `class` attribute means it will be considered as a global attribute and processed accordingly.

This new tag takes up to three attributes:

* `id` (mandatory) — The id of the image you wish to display.
* `class` (optional) — A CSS class to apply to the HTML `figure` element (i.e. `<figure class=“”>`.
* `caption` (optional) — The caption to apply to the image. If omitted, it will use the one associated with the image itself.

Notes:

* The `<txp:yield name="your-attribute" />` tag can be used to process attributes inside your custom tag. Add the `default` attribute to it if you want to set a default value.
* The `<txp:if_yield name="your-attribute">` container tag can be used to determine if the attribute has been supplied. Works with `<txp:else />`.
* The Textile attribute (and values), `escape="tidy,textile"`, used in the example above is optional. It enables rendering any Textile you may want to use in your image captions (e.g. a source link). See [Escaping tags](https://docs.textpattern.io/tags/tag-basics/tag-escaping) for more about this new attribute functionality, which works on every Textpattern tag.

So you can use this custom Textpattern `figure` tag now any way you like:

```html
<txp::figure id="130" />
<txp::figure id="130" class="photo" />
<txp::figure id="130" class="photo" caption="The throne of Zeus at Mount Olympus." />
```

Or as part of a grid of images:

```html
<txp:images category="travel" wraptag="div" class="grid">
   <txp::figure id='<txp:image_info type="id" />' />
</txp:images>
```

For more usage examples of macros/shortcodes, please see [Macros/shortcodes examples](https://docs.textpattern.io/tags/macros-shortcodes-examples).

## Shortening tag attributes

From Textpattern 4.7.0 you can also shortcut ‘boolean’ (1 or 0) attributes just like you can in HTML. So these two tags are equivalent:

```html
<txp:section link="1" />
<txp:section link />
```

## Shortening tag constructs using negation

Also from Textpattern 4.7.0, is the ability to negate a tag using `not`.

```html
<txp:if_section not name="contact, articles">
   <!-- Do something if we're not in the contact or articles section -->
</txp:if_section>
```

This feature also extends to all plugins, natively without any need to do anything by the plugin author.
