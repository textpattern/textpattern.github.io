---
layout: document
category: Tags
published: true
title: Error status
description: The error_status tag shows the error status as set by the server.
tags:
  - Error handling tags
---

# Error status

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:error_status />
~~~

The **error_status** tag is a *single* tag that Textpattern will replace with the error status as set by the server. Should be used in `error_xxx` or `error_default` Textpattern [Page templates](/themes/page-templates-explained).

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

With the tags arranged like this (as they are in the `error_default` page template), they display the error status code as a header and the relevant server message beneath it, usually to indicate to the visitor that something went wrong.

Other tags used: [error_message](/tags/error_message).
