---
layout: document
category: Tags
published: true
title: Error message
description: The error_message tag will show the error message text for the error status as set by the server.
tags:
  - Error handling tags
---

# Error message

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:error_message />
~~~

The **error_message** tag is a *single* tag that Textpattern will replace with the error message text for the error status as set by the server. Should be used in `error_xxx` or `error_default` Textpattern [Page templates](/themes/page-templates-explained).

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

## Examples

### Example 1: Display error information

~~~ html
<h1>
    <txp:error_status />
</h1>
<p>
    <txp:error_message />
</p>
~~~

With the tags arranged like this (as they are in the `error_default` page template), they display the error status code as a heading and the relevant server message beneath it, usually to indicate to the visitor that something went wrong.

Other tags used: [error_status](/tags/error_status).
