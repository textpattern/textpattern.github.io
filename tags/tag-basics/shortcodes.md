---
layout: document
category: Tag basics
published: true
title: Short tags (shortcodes)
description: Since Textpattern 4.7, short tags (and also the shortcodes concept) are supported.
---

# Short tags (shortcodes) TODO

Textpattern tags take the form `<txp:tag_name attribute1="value" ... />`. It is possible to reduce the amount of typing involved by enabling a shorthand notation whereby the `txp:` may be omitted by following a few simple guidelines.

Support for short tags can be enabled/disabled from the [Preferences panel](https://docs.textpattern.io/administration/preferences-panel#accept-comments). Support is enabled by default.

Here are some examples to demonstrate the concept:

* `<txp:article_id />` becomes `<article::id />`.
* `<txp:recent_articles/>` becomes `<recent::articles />`.
* `<txp:file_download_list />` becomes `<file::download_list />`.
* `<txp:smd_if />` becomes `<smd::if />`.
* `<txp:smd_if> ... <txp:else /> ... </txp:smd_if>` becomes `<smd::if> ... <smd::else /> ... </smd::if>` (note that the plugin prefix can be used for the `else` tag).

If a tag contains an underscore `_` and you enable short tags, the basic concept is:

1. Remove the `txp:` prefix.
2. Swap the first occurrence of the underscore for `::`.

## The concept of shortcodes

TODO
