---
layout: document
category: Tags
published: true
title: "Permlink"
description: The permlink can be used as a single tag or a container tag to return the permanent URL of the article being displayed.
tags:
  - Article tags
  - Navigation tags
---

# Permlink

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)

## Syntax

~~~ html
<txp:permlink>
~~~

The **permlink** can be used as a *single* tag or a *container* tag to return the permanent URL of the article being displayed.

If used as a container tag, the HTML required to output a hyperlink is returned; if used as a single tag, only the URL itself is returned.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`id="integer"`
: Specifies the article `id`, assigned at creation of the article, to link. Can be found on the [Articles administration panel](http://docs.textpattern.io/administration/articles-panel).
: **Default:** unset (current article).

`title="text"`
: HTML `title` attribute.
: **Default:** unset.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `a` tag when used as a container tag.
: **Default:** tag name or unset (see [class cross-reference](http://docs.textpattern.io/tags/tag-attributes-cross-reference#class)).

`style="style rule"`
: Inline CSS `style` rule. It's recommended that you assign CSS rules via `class` attribute instead.
: **Default:** unset.

## Examples

### Example 1: Single tag

~~~ html
<txp:permlink />
~~~

This would result in something like:

bc. http://example.com/index.php?id=2

### Example 2: Container tag

~~~ html
<txp:permlink>
    <txp:title />
</txp:permlink>
~~~

This would result in the following:

~~~ html
<a rel="bookmark" href="http://example.com/index.php?id=2">Article title</a>
~~~

Other tags used: [title](title).

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

Other tags used: [title](title).
