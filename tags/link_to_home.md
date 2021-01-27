---
layout: document
category: Tags
published: true
title: Link to home
description: The link_to_home tag is primarily a container tag that returns a link to the site's home page.
tags:
  - Navigation tags
---

# Link to home

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:link_to_home>
~~~

The **link_to_home** tag is primarily a *container* tag that returns a link to the site's home page. It will apply a hyperlink to whatever it wraps.

The tag can, however, be used as a *single* tag to generate a raw base URL of the site:

~~~ html
<txp:link_to_home />
~~~

In this mode it operates identically to [site_url](/tags/site_url).

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

* `class="class name"`
CSS class attribute to apply to the anchor. Will be ignored if used as a single tag.
Default: unset.

## Examples

### Example 1: Home page link with site's name

~~~ html
<txp:link_to_home>
    <txp:site_name />
</txp:link_to_home>
~~~

Other tags used: [site_name](/tags/site_name).
