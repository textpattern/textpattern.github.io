---
layout: document
category: Tags
published: true
title: Search result url
description: The search_result_url tag will provide a hyperlinked URL to an article as returned by the search function.
tags:
  - Search tags
---

# Search result url

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:search_result_url />
~~~

The **search_result_url** tag is a *single* tag that will provide a hyperlinked URL to an article as returned by the search function.

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

## Examples

### Example 1: Display a hyperlinked URL to an article

~~~ html
<txp:search_result_url />
~~~

Used within a search results form to allow visitors to select the link and be taken to the article that matched their search results.
