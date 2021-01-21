---
layout: document
category: Tags
published: true
title: Site name
description: The site_name tag is a single tag that returns the site's name as defined within the Preferences panel.
tags:
  - Markup tags
---

# Site name

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:site_name />
~~~

The **site_name** tag is a *single* tag that returns the site's name as defined within the Preferences panel.

## Attributes

This tag has no attributes of its own.

{% include atts-global.html break="" %}

## Examples

### Example 1: Display the site's name

~~~ html
<h1>
    <txp:site_name />
</h1>
~~~

### Example 2: Using global attributes to wrap and label the tag

~~~ html
<txp:site_name labeltag="h2" label="Welcome" wraptag="h3" class="heading" />
~~~

Would render this HTML:

~~~ html
<h2>Welcome</h2>
<h3 class="heading">My site</h3>
~~~

## Genealogy

### Version 4.0.6

Tag renamed from `<txp:sitename />` to `<txp:site_name />`.
