---
layout: document
category: Tags
published: true
title: Article url title
description: The article_url_title tag returns the dumbed-down 'URL title' of the article being displayed.
tags:
  - Article tags
---

# Article url title

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:article_url_title />
~~~

The **article_url_title** tag is a *single* tag which returns the dumbed-down 'URL title' of the article being displayed. This URL title may also be part of the page's address depending on the 'Article URL pattern' chosen in the [Preferences panel](/administration/preferences-panel#article-url-pattern).

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

## Examples

### Example 1: Subdomain-based AMP page link

~~~ html
<link rel="amphtml" href="https://amp.example.com/<txp:article_url_title />">
~~~

## Genealogy

### Version 4.0.5

Tag support added.
