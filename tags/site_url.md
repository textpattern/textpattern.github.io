---
layout: document
category: Tags
published: true
title: Site url
description: The site_url tag is a single tag which returns the full URL of the site.
tags:
  - Markup tags
---

# Site url

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:site_url />
~~~

The **site_url** tag is a *single* tag which returns the full URL of the site (as defined in the Preferences panel) as text. If you maintain local development versions of your live sites and import databases between them, then this tag is extremely valuable for ensuring your domain links are never confused (and thus broken) between the two locations (see example 1, below).

For more general purpose access to URLs and their components, please see the [page_url](/tags/page_url) tag, which includes admin (back-end) site links for both regular and multi-site installations, theme links and paths, and URL parameters.

## Attributes

Tag will accept the following attribute (**case-sensitive**):

`type="admin"` <span class="footnote warning">v4.7.0+</span>
: Specify this if you wish to return the URL to the admin-side instead of the public site.
: **Default:** unset.

{% include atts-global.html break="" %}

## Examples

### Example 1: Maintain accurate domain paths

~~~ html
<nav>
    <ul>
        <li>
            <a href="<txp:site_url />articles">Articles</a>
        </li>
        <li>
            <a href="<txp:site_url />photos">Photographs</a>
        </li>
    </ul>
</nav>
~~~

A classic example is with navigation links - the idea is that you don't break URL paths after importing a database from local development to live, or vice versa. By using this tag it will automatically be relative to a given site and you'll never have to manually edit broken domain paths again.

### Example 2: HTML header paths

~~~ html
<link rel="stylesheet" href="<txp:site_url />assets/css/main.css">
~~~

In the `<head>` section of your HTML pages you might have a variety of links to locations relative to the local server, such as CSS files, JavaScript files and so forth. The relevance is similar to example 1 - you want to ensure the paths are accurate relative to the server if a database has been imported from another location.

### Example 3: Display a hyperlink to download a .ZIP file

~~~ html
<a href="<txp:site_url />download.zip">Download</a>
~~~

### Example 4: Link to the admin side

~~~ html
<a href="<txp:site_url type="admin" />">Login to Textpattern here</a>
~~~

### Example 5: Parse site URL without the trailing slash

~~~ html
<a href="<txp:site_url trim="/" />">Login to Textpattern here</a>
~~~

## Genealogy

### Version 4.7.0

`type` attribute added.
