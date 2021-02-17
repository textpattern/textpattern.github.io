---
layout: document
category: Tags
published: true
title: Link to next
description: The link_to_next tag can be used as a single tag or a container tag to return the permanent URL of the next article by posting date.
tags:
  - Navigation tags
---

# Link to next

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:link_to_next />
~~~

The **link_to_next** tag can be used as a *single* tag or a *container* tag to return the permanent URL of the next article by posting date.

If used as a container tag, the HTML required to output a hyperlink is returned; if used as a single tag, only the URL itself is returned.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`context="list"`
: Specifies Textpattern parameters that must be "inherited" by the article URL. For example, when used in a list article form on a category page `index.php?c=somecat`, `<txp:permlink />` without `context` attribute will produce canonical `.../title` links, while `<txp:permlink context />` produces `.../title?c=somecat` links. Useful jointly with the [permlink](/tags/permlink) tag in individual article forms when one needs to restrain navigation to the current article category (author, month, ...).
: **Default:** unset.

`form="form name"`
: A form to parse next article fields.
: **Default:** unset.

`link="boolean"`
: Whether the content should be hyperlinked.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `1`.

`showalways="boolean"`
: Show the wrapped value even when no next article exists.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

## Examples

### Example 1: Link to next article using the article title

~~~ html
<txp:link_to_next wraptag="div" class="nav_next">
    <txp:title />
</txp:link_to_next>
~~~

Important: The `<txp:link_to_next>` tag automatically has its container context set to *the next article*. Thus to retrieve the article title of this article, use the `<txp:title />` tag and *not* the `<txp:next_title />` tag. Using the latter tag in the `<txp:link_to_next>` container would 'skip' an article title. Compare this usage to Example 3 where the single tag is used and the `<txp:next_title />` is therefore appropriate to fetch information from the next document.
{: .alert-block .information}

Other tags used: [next_title](/tags/next_title), [title](/tags/title).

### Example 2: Link to next article

~~~ html
<txp:link_to_next showalways="1">
    Next
</txp:link_to_next>
~~~

or to display the text in the current site language:

~~~ html
<txp:link_to_next showalways="1">
    <txp:text item="next" />
</txp:link_to_next>
~~~

This will always display the text 'Next', even when there is no next article.

Note: While `showalways` will enable this tag to display what is wrapped inside it, [next_title](/tags/next_title) returns nothing if there is no next title, so nothing is displayed. Use fixed text instead in this case.
{: .alert-block .information}

### Example 3: Customising links

The container tag returns only a very basic link, which doesn't allow for customising the link title. Using the tag in its single tag capacity opens up more possibilities.

To give the link an HTML `title` attribute of the next article's title:

~~~ html
<a class="link--next" href="<txp:link_to_next />" title="<txp:next_title />">
    Next article →
</a>
~~~

Other tags used: [next_title](/tags/next_title).

## Genealogy

### Version 4.7.2

`context` attribute added.
