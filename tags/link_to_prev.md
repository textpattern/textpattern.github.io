---
layout: document
category: Tags
published: true
title: Link to prev
description: The link_to_prev tag can be used as a single tag or a container tag to return the permanent URL of the previous article by posting date.
tags:
  - Navigation tags
---

# Link to prev

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:link_to_prev />
~~~

The **link_to_prev** tag can be used as a *single* tag or a *container* tag to return the permanent URL of the previous article by posting date.

If used as a container tag, the HTML required to output a hyperlink is returned; if used as a single tag, only the URL itself is returned.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`context="list"`
: Specifies Textpattern parameters that must be "inherited" by the article URL. For example, when used in a list article form on a category page `index.php?c=somecat`, `<txp:permlink />` without `context` attribute will produce canonical `.../title` links, while `<txp:permlink context />` produces `.../title?c=somecat` links. Useful jointly with the [permlink](/tags/permlink) tag in individual article forms when one needs to restrain navigation to the current article category (author, month, ...).
: **Default:** unset.

`form="form name"`
: A form to parse previous article fields.
: **Default:** unset.

`link="boolean"`
: Whether the content should be hyperlinked.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `1`.

`showalways="boolean"`
: Show the wrapped value even when no previous article exists.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

## Examples

### Example 1: Link to previous article using its title

~~~ html
<txp:link_to_prev wraptag="div" class="nav_prev">
    <txp:title />
</txp:link_to_prev>
~~~

Important: The `<txp:link_to_prev>` tag automatically has its container context set to *the previous article*. Thus to retrieve the article title of this article, use the `<txp:title />` tag and *not* the `<txp:prev_title />` tag. Using the latter tag in the `<txp:link_to_prev>` container would 'skip' an article title. Compare this usage to Example 3 where the single tag is used and the `<txp:prev_title />` is therefore appropriate to fetch information from the previous document.
{: .alert-block .information}

Other tags used: [prev_title](/tags/prev_title), [title](/tags/title).

### Example 2: Link to previous article using static text

~~~ html
<txp:link_to_prev showalways="1">
    Previous
</txp:link_to_prev>
~~~

or to display the text in the current site language:

~~~ html
<txp:link_to_prev showalways="1">
    <txp:text item="prev" />
</txp:link_to_prev>
~~~

This will always display the text 'Previous', even when there is no previous article.

Note: While `showalways` will enable this tag to display what is wrapped inside it, [prev_title](/tags/prev_title) returns nothing if there is no previous title, so nothing is displayed. Use fixed text instead in this case.
{: .alert-block .information}

### Example 3: Customising links

The container tag returns only a very basic link, which doesn't allow for customising the link title. Using the tag in its single tag capacity opens up more possibilities.

To give the link an HTML `title` attribute of the previous article's title:

~~~ html
<a class="link--prev" href="<txp:link_to_prev />" title="<txp:prev_title />">
    ← Previous article
</a>
~~~

Other tags used: [prev_title](/tags/prev_title).

## Genealogy

### Version 4.7.2

`context` attribute added.
