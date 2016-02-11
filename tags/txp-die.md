---
layout: document
category: tags
published: true
title: "Txp die"
tags:
  - Error handling tags
  - Programmer tags
---

# Txp die

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:txp_die />
```

The *txp_die* tag is a __single__ tag that will terminate normal page rendition and return the given status to the user agent (browser, search engine crawler, feed aggregator). An error page will also be returned to the user agent.

The status can be displayed by the "error_status":http://docs.textpattern.io/tags/error-status tag. A textual message can be associated with the error status and retrieved with the "error_message":http://docs.textpattern.io/tags/error-message tag. See also: @@Custom Error Pages@@.

## Attributes

Tag will accept the following attributes (*case-sensitive*):

* @msg="message"@
Textual representation of the error condition.
* @status="number"@
Numerical representation of the error condition.
Typical values: @301@, @302@, @304@, @307@, @401@, @403@, @404@, @408@, @410@, @503@, or any other "valid status code":http://en.wikipedia.org/wiki/List_of_HTTP_status_codes.
Default: @503@.
* @url="url"@
Redirects to the specified URL. Can be used with redirection statuses @301@, @302@ and @307@.
Default: unset.

## Examples

### Example 1: Force a 404 'not found' error

```html
<txp:txp_die status="404" />
```

### Example 2: Issue a permanent redirect

```html
<txp:txp_die status="301" url="http://example.com/new/location" />
```

## Genealogy

### Version 4.5.0

@url@ attribute added.
