---
layout: document
category: tags
published: true
title: "Site name"
tags:
  - Markup tags
---

# Site name

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

~~~ html
<txp:site_name />
~~~

The **site_name** tag is a *single* tag that returns the site's name as defined within the [Preferences administration panel](../administration/preferences-panel).

## Attributes

This tag has no attributes

## Examples

### Example 1: Display the site's name

~~~ html
<h1>
    <txp:site_name />
</h1>
