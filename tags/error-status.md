---
layout: document
category: tags
published: true
title: "Error status"
tags:
  - Error handling tags
---

# Error status

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

```html
<txp:error_status />
```

The *error_status* tag is a __single__ tag that Textpattern will replace with the error status as set by the server. Should be used in an @error_xxx@ or @error_default@ Textpattern @@Page template@@.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Display error information

```html
<h1>
    <txp:error_status />
</h1>
<p>
    <txp:error_message />
</p>
```

With the tags arranged like this (as they are in the @error_default@ page template), they display the error status code as a header and the relevant server message beneath it, usually to indicate to the visitor that something went wrong.

Other tags used: "error_message":error-message.
