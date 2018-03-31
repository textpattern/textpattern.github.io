---
layout: document
category: Shortcodes
published: true
title: Custom short-tags and shortcodes
description: Since Textpattern 4.7.0, Textpattern provides the ability to create custom tags associated with shortcodes. An extremely powerful feature that obviates the need for plugins like smd_macro and rah_beacon.
--- 

# Custom short-tags and shortcodes

In addition to the [core short-tags](https://docs.textpattern.io/tags/tag-basics/core-short-tags) functionality introduced in Textpattern 4.7.0, which you should read for background, you can also generate custom short-tags by creating specific reusable Form templates, which we are dubbing “shortcodes”. A shortcode is like any other partial of code you may develop in a Textpattern Form, but it’s designed with the intention of using in relation to an associated custom short-tag. This new functionality is similar in concept to the smd_macro or rah_beacon plugins, both of which are now obsolete against this new custom short-tags/shortcode functionality. 

On this page:

* [Custom short-tags](#custom-short-tags)
* [Shortcodes](#shortcodes)

## Custom short-tags

The one difference between the [core short-tags](https://docs.textpattern.io/tags/tag-basics/core-short-tags) and custom short-tags is in relation to the `<txp:output_form>` tag. Whenever you create a Textpattern Form intended as a shortcode form (see below), it automatically makes a custom short-tag available for use having the same name as the form.

For example, a shortcode form might be designed to output an image with caption, wrapped up nicely as an HTML `figure`. It just so happens this is explained in the [Image with caption shortcode](image-with-caption-shortcode) doc. You might even name the Form, _figure_, if you never needed another type of figure shortcode form. Buy doing that, you now have a custom short-tag available for use as:

```
<txp::figure />
```

If you named your shortcode Form, _image_figure_, the tag would be usable as:

```
<txp::image_figure />
``` 

And so on.

But, if you opt to disable short-tag functionality in the Preferences panel, you can still use the shortcode Form via an `output_form` tag like this:

```
<txp:output_form yield form="figure" />
```

In this case the `yield` is necessary to process the custom attributes. (See [Image with caption shortcode](image-with-caption-shortcode) for example of attributes used in a `figure` shortcode.)

Alternatively, the attributes can be defined explicitly in the tag: 

```
<txp:output_form yield="id, caption" form="figure" />
```

In this latter case, omitting the `class` attribute means it will be considered as a global attribute and processed accordingly.

## Shortcodes

You can use any Form type when creating a shortcode form. The “Miscellaneous” type is probably a logical choice, but not obligatory.

The key to creating shortcode Forms is using the Textpattern tags `yield`, `if_yield`, and in relation to the latter, `else`

The `yield` tag is used to create attributes to process inside  your custom tag: `<txp:yield name="your-attribute" />` Add the default attribute to it if you want to set a default value.

The `if_yield` container tag (and the `else` tag) can be used to determine if the attribute has been supplied:

```
<txp:if_yield name="your-attribute”> … </txp:if_yield>
```

That’s it!

The best way to get started is look at some [Shortcode examples](https://docs.textpattern.io/tags/shortcodes/) for more possibilities and familiarity.

