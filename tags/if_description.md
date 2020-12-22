---
layout: document
category: Tags
published: true
title: If description
description: The if_description tag will execute the contained statement if the current article/section/category's 'Description' field has an entry.
tags:
  - Article tags
  - Conditional tags
---

# If description

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_description>
~~~

The **if_description** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_description>
    …conditional statement…
</txp:if_description>
~~~

The tag will execute the contained statement if the current article/section/category's 'Description' field has an entry.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`type="context"`
: Textpattern context to check against. You can choose from the following contexts (set to empty to include all contexts): \\
`article` is this an article author list? \\
`image` is this an image author list? \\
`file` is this a file author list? \\
`link` is this a link author list?
: **Default:** `article`.

## Examples

### Example 1: Supply meta tag if description exists

~~~ html
<head>
    ….
    <txp:if_description>
        <txp:meta_description />
    <txp:else />
        <meta name="description" content="A generic description fallback, possibly about bacon." />
    </txp:if_description>
    ….
</head>
~~~

Other tags used: [else](/tags/else), [meta_description](/tags/meta_description).

## Genealogy

### Version 4.6.0

Tag support added
