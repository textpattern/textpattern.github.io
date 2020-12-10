---
layout: document
category: Tags
published: true
title: Search term
description: The search_term tag is a single tag which returns the expression the user searched for through the full text search form.
tags:
  - Search tags
---

# Search term

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:search_term />
~~~

The **search_term** tag is a *single* tag which returns the expression the user searched for through the full text search form.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Display the search term on the search results page

~~~ html
<txp:if_search>
    <h1>Search results</h1>
    <h3>
        You searched for:
        <txp:search_term />
    </h3>
    <txp:article />
</txp:if_search>
~~~

## Genealogy

### Version 4.5.0

`escape` attribute deprecated.

### Version 4.0.6

Tag support added.
