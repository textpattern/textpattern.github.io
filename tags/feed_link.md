---
layout: document
category: Tags
published: true
title: Feed link
description: The feed_link tag is used to output a link to the site's 'articles' RSS feed.
tags:
  - Markup tags
---

# Feed link

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:feed_link>
~~~

The **feed_link** tag can be used as either a *single* or *container* tag and is used to output a link to the site's 'articles' RSS feed. When used as a container tag, it will turn the contents into a link to the feed, otherwise the value of `label` attribute will be used as link text. Should be used in Textpattern [Page templates](https://docs.textpattern.io/themes/page-templates-explained).

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`category="category name"`
: Restrict to articles from specified category/categories. Note: the category names may be different to the title you typed when you created the category, as the names are sanitized for URL use. Check the [Categories administration panel](https://docs.textpattern.io/administration/categories-panel) to ensure you are using the correct names.
: **Values:** (comma separated list of) category name(s).
: **Default:** current category.

`flavor="value"`
: Whether to output a link to the RSS or Atom version of the feed.
: **Values:** `rss` or `atom`.
: **Default:** `rss`.

`format="value"`
: Whether to output HTML `<a>` tag or `<link>` tag.
: **Values:** `a` or `link`.
: **Default:** `a`.

`limit="integer"`
: Number of articles to display in the feed.
: **Default:** depends upon [Preferences administration panel](https://docs.textpattern.io/administration/preferences-panel) setting.

`section="section name"`
: Restrict to articles from specified section(s).
: **Values:** (comma separated list of) section name(s).
: **Default:** current section.

`title="value"`
: [HTML title attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes#title) to be applied to link tag.
: **Default:** depends upon `flavor` used, either `RSS feed` or `Atom feed`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** tag name or unset (see [class cross-reference](https://docs.textpattern.io/tags/tag-attributes-cross-reference#class)).

`label="text"`
: Label prepended to item.
: **Default:** unset (but see [label cross-reference](https://docs.textpattern.io/tags/tag-attributes-cross-reference#label) for exceptions).

`wraptag="element"`
: HTML element to wrap feed link, specified without brackets (e.g. `wraptag="p"`).
: **Default:** unset (but see [wraptag cross-reference](https://docs.textpattern.io/tags/tag-attributes-cross-reference#wraptag) for exceptions).

Note: `wraptag` is applicable only when using `format` of `a`.
{: .alert-block .information}

## Examples

### Example 1: Display an RSS feed link for specific section and category

~~~ html
<txp:feed_link flavor="rss" section="about" category="general" label="XML" wraptag="p" />
~~~

### Example 2: Container example

~~~ html
<txp:feed_link wraptag="p">
    <img src="/path/to/rss-icon.png" alt="RSS">
</txp:feed_link>
~~~

### Example 3: Site wide generic RSS feed

~~~ html
<txp:feed_link section="" category="" />
~~~

Creates a link to the site's feed for articles in all sections and categories. If you omit the `section` and `category` attributes, the feed will default to the current section/category.

### Example 4: With Symbolset's 'rss' glyph

If you happen to use the 'rss' glyph in the social media set of [Symbolset](https://symbolset.com), you can still use this tag. Let's say you're creating a social button bar using Symbolset glyphs in a list. The normal way to do this would be to set up your selectors on the individual anchor elements, like the first three list items show below. For the RSS glyph you need to put the selectors in the `<li>` since you can't put them in the `<a>`, as the last list item shows:

~~~ html
<ul class="socbar">
    <li>
        <a href"https://twitter.com/xxx" class="ss-icon twit">twitter</a>
    </li>
    <li>
        <a href="https://plus.google.com/xxx" class="ss-icon gplus">googleplus</a>
    </li>
    <li>
        <a href="http://www.linkedin.com/xxx" class="ss-icon in">linkedin</a>
    </li>
    <li class="ss-icon rss">
        <txp:feed_link flavor="rss" section="articles" category="" label="rss" />
    </li>
</ul>
~~~

If you're using Symbolset, then you'll know that the `label="` attribute value in the last list item above **has** to be `rss` for the glyph to work. If you try and put the two Symbolset `class` attribute values in the **feed_link** tag using its `class` attribute, it won't work, unfortunately. But putting them in the `<li>` element, like shown above, does work.

There is no `atom` trigger word in Symbolset! So while you can use `flavor="atom"` and create an Atom feed just fine, you still need to use `label="rss"` for the link label to call the Symbolset glyph. This shouldn't be a problem because the glyph replaces the link text. You can then use `title="` to provide a custom hover text, or leave it out for the default display: 'Atom feed'.

Then the CSS must be like follows to target both instances of Symbolset glyph use:

~~~ css
/** Common rules **/
a.ss-icon,
li.ss-icon a {
    /** design as you want **/
}

/** Target each one if specific hover effect is wanted **/
.twit:hover {
    /** design as you want **/
}
... etc ...
li.email a:hover {
    /** design as you want **/
}
~~~

See the [email](email) tag for a similar solution for Symbolset's 'email' glyph.

## Genealogy

### Version 4.3.0

`class` attribute added.

### Version 4.0.4

`format` attribute added.
