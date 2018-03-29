---
layout: document
category: Tag basics
published: true
title: Short-tags and shortcodes
description: Since Textpattern 4.7, short-tags and also the shortcodes concept are supported.
---

# Short-tags and shortcodes

On this page:

* [Short tags](#short-tags)
* [Shortcode Forms](#shortcode-forms)
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

## Shortcode forms

There’s one exception to the rule above regarding the `<txp:output_form>` tag. Beginning with Textpattern 4.7.0, it is possible to use [Form templates](https://docs.textpattern.io/themes/form-templates-explained) to create custom shortcodes for use with specific short-tags. (The concept is similar to macros in the smd_macro plugin, or beacons in rah_beacon, both of which core short-tag/shortcode functionality makes obsolete).

As an introductory example to shortcode development, see [Image with caption shortcode](https://docs.textpattern.io/tags/shortcodes/image-with-caption-shortcode).

And see [Shortcode examples](https://docs.textpattern.io/tags/shortcodes/) for more possibilities.

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
