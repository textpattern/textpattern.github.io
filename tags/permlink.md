---
layout: document
category: Tags
published: true
title: Permlink
description: The permlink can be used as a single tag or a container tag to return the permanent URL of the article being displayed.
tags:
  - Article tags
  - Navigation tags
---

# Permlink

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:permlink>
~~~

The **permlink** can be used as a *single* tag or a *container* tag to return the permanent URL of the article being displayed.

If used as a container tag, the HTML required to output a hyperlink is returned; if used as a single tag, only the URL itself is returned.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`context="list"`
: Specifies Textpattern parameters that must be "inherited" by the article URL. For example, when used in a list article form on a category page `index.php?c=somecat`, `<txp:permlink />` without `context` attribute will produce canonical `.../title` links, while `<txp:permlink context />` produces `.../title?c=somecat` links. Useful jointly with [link_to_next/prev](/tags/link_to_next) tags in individual article forms when one needs to restrain navigation to the current article category (author, month, ...).
: **Default:** unset.

`id="integer"`
: Specifies the article `id`, assigned at creation of the article, to link. Can be found on the Articles panel.
: **Default:** unset (current article).

`style="style rule"`
: Inline CSS `style` rule. It's recommended that you assign CSS rules via the `class` attribute instead.
: **Default:** unset.

`title="text"`
: HTML `title` attribute.
: **Default:** unset.

{% include atts-global.html %}

## Examples

### Example 1: Single tag

~~~ html
<txp:permlink />
~~~

This would result in something like:

bc. https://example.com/index.php?id=2

### Example 2: Container tag

~~~ html
<txp:permlink>
    <txp:title />
</txp:permlink>
~~~

This would result in the following:

~~~ html
<a rel="bookmark" href="https://example.com/index.php?id=2">Article title</a>
~~~

Other tags used: [title](/tags/title).

### Example 3: Customising permanent links

~~~ html
<txp:permlink class="awesome-article">
    <txp:title />
</txp:permlink>
~~~

By default `<txp:permlink />` returns only a very basic link, which doesn't allow for customising the link title, or adding a CSS class, etc. Using the tag in its single tag capacity opens up a lot more possibilities.

For example, to give the permanent link an HTML `title` attribute of the article's title, and also apply a `class` to it:

~~~ html
<a class="awesome-article" href="<txp:permlink />">
    <txp:title />
</a>
~~~

Other tags used: [title](/tags/title).

## Genealogy

### Version 4.7.2

`context` attribute added.
