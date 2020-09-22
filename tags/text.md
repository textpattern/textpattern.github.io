---
layout: document
category: Tags reference
published: true
title: Text
description: The text tag is primarily used to return localized language strings from the txp_lang database table.
tags:
  - Language tags
---

# Text

**On this page**:

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:text />
~~~

The **text** tag is a *single* tag which is primarily used to return localized language strings from the `txp_lang` database table.

Note: only language strings designated with a type of [`common`](https://github.com/textpattern/textpacks/blob/master/lang/en.ini#L265) or [`public`](https://github.com/textpattern/textpacks/blob/master/lang/en.ini#L776) are available to use. All other language string types are reserved for use within the Textpattern system itself.
{: .alert-block .information}

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"` <span class="footnote warning">v4.6.0+</span>
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&` within text.
: **Values:** See the [tag escaping](/tags/learning/#tag-escaping) documentation for all possible values.
: **Default:** `html`.

`item="text"`
: Piece of text to display, preferably an item from the `name` column of the `txp_lang` database table. If the given item matches a key there, the contents of the respective item in the `data` column will be returned. Otherwise, whatever you supply as the `item` value is returned verbatim.

## Examples

### Example 1: Display some localized text

~~~ html
<txp:older>
    <txp:text item="older" />
</txp:older>
~~~

Outputs the text 'older' inside the `<txp:older />` tag, respecting the current Textpattern language, instead of using the tag like this: `<txp:older>older</txp:older>` which would always render the English text 'older', it replaces the contents with the value assigned to the name 'older' in the current language. So you would see a link with the word 'älter' if you were using German `de` as the Textpattern site language.

Other tags used: [older](/tags/older).

## Genealogy

### Version 4.6.0

Accepts L10n replacement tags as attributes. \\
`escape` attribute added.
