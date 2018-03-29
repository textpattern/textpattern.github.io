---
layout: document
category: Tag basics
published: true
title: Core short-tags
description: Since Textpattern 4.7.0, all Textpattern tags can be written and used as short-tags.
---

# Core short-tags

It is now possible to even further reduce the amount of typing involved when writing Textpattern tags, by enabling a shorthand notation.

On this page:

* [Short-tag example usage](#short-tag-examaple-usage)
* [Shortening tag attributes](#shortening-tag-attributes)
* [Shortening tag constructs using negation](#shortening-tag-constructs-using-negation)
* [Custom short-tags](#custom-short-tags)

## Short-tag example usage

Textpattern tags take the form:

```
<txp:tag_name attribute1="value" ... />
```

When short-tags are enabled in the [Preferences panel](https://docs.textpattern.io/administration/preferences-panel#enable-short-tag-support), which the are by default, the `txp:` part of the tag may be omitted by following a few simple guidelines:

* `<txp:article_id />` becomes `<article::id />`.
* `<txp:recent_articles/>` becomes `<recent::articles />`.
* `<txp:file_download_list />` becomes `<file::download_list />`.
* `<txp:smd_if />` becomes `<smd::if />`.
* `<txp:smd_if> ... <txp:else /> ... </txp:smd_if>` becomes `<smd::if> ... <smd::else /> ... </smd::if>` (note that the plugin prefix can be used for the `else` tag).

If a tag contains an underscore `_` and you enable short tags, the basic concept is:

1. Remove the `txp:` prefix.
2. Swap the first occurrence of the underscore for `::`.

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

## Custom short-tags

See [Custom short-tags and shortcodes](https://docs.textpattern.io/tags/shortcodes/custom-short-tags-and-shortcodes).