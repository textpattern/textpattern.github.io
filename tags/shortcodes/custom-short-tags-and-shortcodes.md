---
layout: document
category: Shortcodes
published: true
title: Custom short-tags and shortcodes
description: Since Textpattern 4.7.0, Textpattern provides the ability to create custom tags associated with shortcodes. An extremely powerful feature that obviates the need for plugins like smd_macro and rah_beacon.
---

# Custom short-tags and shortcodes

In addition to the [core short-tags](/tags/tag-basics/core-short-tags) functionality introduced in Textpattern 4.7.0, which you should read for background, you can also generate custom short-tags by creating specific reusable Form templates, which we are dubbing “shortcodes”. A shortcode is like any other partial of code you may develop in a Textpattern Form, but it’s designed with the intention of using in relation to an associated custom short-tag. This new functionality is similar in concept to the smd_macro or rah_beacon plugins, both of which are now obsolete against this new custom short-tags/shortcode functionality.

**Contents**

* Table of contents
{:toc}

## Custom short-tags

The one difference between the [core short-tags](/tags/tag-basics/core-short-tags) and custom short-tags is in relation to the `<txp:output_form>` tag. Whenever you create a Textpattern Form intended as a shortcode form (see below), it automatically makes a custom short-tag available for use having the same name as the form.

For example, a shortcode form might be designed to output an image with caption, wrapped up nicely as an HTML `figure`. It just so happens this is explained in the [Image with caption shortcode](/tags/shortcodes/image-with-caption-shortcode) doc. You might even name the Form, _figure_, if you never needed another type of figure shortcode form. By doing that, you now have a custom short-tag available for use as:

~~~ html
<txp::figure />
~~~

If you named your shortcode Form, _image_figure_, the tag would be usable as:

~~~ html
<txp::image_figure />
~~~

And so on.

## When short-tag preference is disabled

Whether or not you opt to disable short-tag functionality in the Preferences panel, you can still use the shortcode Form. If its name is not purely alphanumeric, proceed via an `output_form` tag like this:

~~~ html
<txp:output_form form="my figure" />
~~~

## Using yield attribute

If needed, the attributes can be defined explicitly in the tag as values of the `yield=""` attribute:

~~~ html
<txp::figure yield="id, caption" />
~~~

Note that omitting the `class` and `wraptag` attributes in the following example means they will be considered as global attributes and processed accordingly:

~~~ html
<txp::figure yield="id, caption" id="123" wraptag="div" class="picture" />
~~~

## Shortcodes

You can use any Form type when creating a shortcode form. The “Miscellaneous” type is probably a logical choice, but not obligatory.

The key to creating shortcode Forms is using the Textpattern tags `yield`, `if_yield`, and in relation to the latter, `else`

The `yield` tag is used to create attributes to process inside your custom tag: `<txp:yield name="your-attribute" />` Add the default attribute to it if you want to set a default value.

The `if_yield` container tag (and the `else` tag) can be used to determine if the attribute has been supplied:

~~~ html
<txp:if_yield name="your-attribute"> … </txp:if_yield>
~~~

That’s it!

The best way to get started is look at some [Shortcode examples](/tags/shortcodes/) for more possibilities and familiarity.
