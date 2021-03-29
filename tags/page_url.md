---
layout: document
category: Tags
published: true
title: Page url
description: The page_url tag is a single tag that is used to return a particular component of the URL from the current page being displayed.
tags:
  - Markup tags
---

# Page url

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:page_url />
~~~

The **page_url** tag is a *single* tag that is used to return a particular component of the URL from the current page being displayed.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`context="list"` <span class="footnote warning">v4.7.2+</span>
: Specifies which Textpattern URL parameters must be retained. For example, `<txp:page_url />` without `context` will produce something like `index.php?s=somesec&c=somecat&pg=2` on the corresponding page, while `<txp:page_url context="c, s" />` will result in `index.php?s=somesec&c=somecat`.
: **Default:** unset (retain everything).

`default="value"` <span class="footnote warning">v4.7.0+</span>
: The default value if no component of the current page's URL matches the `type` attribute.
: **Default:** unset.

`type="type"` <span class="footnote warning">v4.7.0+</span>
: Specifies which component of the current page's URL will be returned.
: **Values:** \\
`admin_root`: current site's admin URL. \\
`author`: current page's author on article lists filtered by author. \\
`c`: current page's category. \\
`css`: current style sheet name. \\
`id`: current article's id on a single article page. \\
`images_root`: images directory URL. \\
`month`: current page's month on time based article lists. \\
`page`: current page template name. \\
`pg`: current page number in article list mode. \\
`q`: search query string. \\
`request_uri`: current article's URL-title including any query string. \\
`s`: current page's section. \\
`status`: HTTP error response (200, 404). \\
`theme`: current theme name. \\
`theme_path`: current theme directory URL. \\
`themes_root`: themes directory URL.
: **Default:** `request_uri`.

Any other `type` value will return the matching URL parameter or the `default` value that will always be **sanitized**. <span class="footnote warning">v4.7.0+</span>

## Examples

### Example 1: Show the current article's ID, HTTP status and section

~~~ html
<p>
    Article ID:
    <txp:page_url type="id" />,
    From section:
    <txp:page_url type="s" />
    (Result: <txp:page_url type="status" />)
</p>
~~~

This would result in the following, for example:

~~~ html
<p>
    Article ID:
    88,
    From section:
    Tasty pea recipes
    (Result: 200)
</p>
~~~

### Example 2: Show the current theme's name and path

~~~ html
<p>
    Using theme '<txp:page_url type="theme" />' located in <code><txp:page_url type="theme_path" /></code>
</p>
~~~

This would result in the following, for example:

~~~ html
<p>
    Using theme 'four-point-seven' located in <code>https://example.com/themes/four-point-seven</code>
</p>
~~~

### Example 3: Show the website's image and themes directories

~~~ html
<p>
    Site images are located in <code><txp:page_url type="images_root" /></code> and themes are located in <code><txp:page_url type="themes_root" /></code>.
</p>
~~~

This would result in the following, for example:

~~~ html
<p>
    Site images are located in <code>https://example.com/images</code> and themes are located in <code>https://example.com/themes/</code>.
</p>
~~~

### Example 4: Link to a theme's file assets directly

~~~ html
<link rel="stylesheet" href="<txp:page_url type="theme_path" />/styles/default.css">
<script async src="<txp:page_url type="theme_path" />/scripts/main.js"></script>
~~~

### Example 5: Return the sanitized value of some URL query parameter

~~~ html
<txp:page_url type="lang" default="en" />
~~~

### Example 6: Link to the latest article in a section

~~~ html
<txp:variable name="is_latest"><txp:page_url type="latest" /></txp:variable>
...
<txp:if_variable name="is_latest" value="1">
    <txp:article limit="1" />
</txp:else>
    <txp:article />
</txp:if_variable>
~~~

Using the above code in a page template would permit you to use example.org/articles?latest=1 as a URL and have Textpattern capture the 'latest' parameter and take action to display just the most recent article in that section.

Other tags used: [article](/tags/article), [else](/tags/else), [if_variable](/tags/if_variable), [variable](/tags/variable).

As an alternative, in the Advanced options of the Preferences panel, create a custom form type 'html' of type `mediatype="text/html"`. Then in the Forms panel, create a new form called 'latest' of this new 'html' type and make the following its contents:

``` html
<txp:article limit="1">
    <txp:header name="Location" value='<txp:permlink />' />
</txp:article>
```

Now each hit of /any-section/?f=latest will 302-redirect the visitor to the latest article in that section.

## Genealogy

### Version 4.7.2

`context` attribute added.

### Version 4.7.0

`type` attribute behaviour changes (value will always be sanitized). \\
`images_root`, `theme`, `theme_path` and `themes_root` values allowed for `type` attribute. \\
`default` attribute added.
