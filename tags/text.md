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

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:text />
~~~

The **text** tag is a *single* tag which is used to return localized language strings from the `txp_lang` database table.

Note: only language strings designated with a type of [`common`](https://github.com/textpattern/textpacks/blob/main/lang/en.ini#L265) or [`public`](https://github.com/textpattern/textpacks/blob/main/lang/en.ini#L776) are available to use. All other language string types are reserved for use within the Textpattern back-end system itself.
{: .alert-block .information}

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`item="text"`
: Piece of text to display, preferably an item from the `name` column of the txp_lang database table. If the given item matches a key in the currently selected site language, the contents of the respective item in the `data` column will be returned. Otherwise, whatever you supply as the `item` value is returned verbatim.

## Examples

### Example 1: Display some localized text

~~~ html
<txp:older>
    <txp:text item="older" />
</txp:older>
~~~

Replaces the contents of the tag with the value assigned to the name 'older' in the current site language. It takes this information from the matching key 'older' in the txp_lang database table. So if you were using German `de` as the Textpattern site language, you would see a link with the word 'älter'.

If, however, you had used the `<txp:older>` tag tag like this:

~~~ html
<txp:older>
    Older
</txp:older>
~~~

then it would always render English text, which is undesirable if your site is changed to show content in a different language.

Other tags used: [older](/tags/older).

## Genealogy

### Version 4.6.0

Accepts L10n replacement tags as attributes. \\
`escape` attribute added.
