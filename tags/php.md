---
layout: document
category: Tags
published: true
title: Php
description: The php tag is a container tag that provides output of PHP code in Textpattern forms/pages.
tags:
  - Programmer tags
---

# Php

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:php>
~~~

Textpattern's **php** tag is a *container* tag that provides the same output abilities as `<?php //Code goes here… ?>`. Textpattern's tag version is used like this:

~~~ html
<txp:php>
    // Code goes here…
</txp:php>
~~~

Control over where this tag is allowed to appear (i.e. the privileges required to allow it to appear in pages and forms) are governed by settings in the Preferences panel.

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

## Notes on use

### Using PHP inside of an article

When inserting markup or PHP into the content boxes of a Textpattern article:

1. Don't include the usual PHP delineations: i.e. `<?php … ?>`.
2. Use PHP as you would use normal PHP, not interspersed with markuFor example, inside the PHP tags, use PHP's echo command to output HTML, rather than writing HTML directly.
3. Surround the code with both the special `<notextile>` tag and Textpattern `<txp:php>` tag to **disable Textile** parsing:

~~~ html
<notextile>
    <txp:php>
        …code goes here…
    </txp:php>
</notextile>
~~~

### Equivalent programmatic names

All Textpattern tags have equivalent programmatic names which are *exactly* the same as the tag names. For example, `<txp:recent_articles />` is `recent_articles()`.

### Arrays must be passed to all functions

You must pass an array to all tag functions, even if there are no attributes to set. For tags that require no attributes or those that you do not wish to modify the defaults, pass an empty array, e.g. `category1(array());`.

## Examples

### Example 1: Display PHP server library information

~~~ html
<txp:php>
    phpinfo();
</txp:php>
~~~

### Example 2: Show the current linked category title

~~~ html
<txp:php>
    echo "The current Textpattern category is: "
        .category(array(
            'title'   => '1',
            'link'    => '1',
            'wraptag' => 'div'
        ));
</txp:php>
~~~
