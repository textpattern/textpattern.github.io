---
layout: document
category: Tags
published: true
title: Evaluate
description: The evaluate tag will display contained content depending on a given numerical, logical or string expression query.
tags:
  - Programmer tags
---

# Evaluate

**On this page**:

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:evaluate />
~~~

The **evaluate** tag can be used as either a *single* or *container* tag. When used as a single tag, it will evaluate the expression given by the `query` attribute and output its value. When used as a container tag, it will first check whether the `query` expression (if set) produces an empty result and output nothing in this case. Otherwise, it will process the contained tags optionally filtered by the `test` attribute. If all of them produce empty results, nothing will be output. Otherwise, it will return the whole processed content.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`query="expression"`
: A numerical, logical or string [XPath](http://www.edankert.com/xpathfunctions.html) expression to evaluate.
: **Values:** `2 * 2`, `string-length("Textpattern") < 10`, and so on.
: **Default:** unset.

`test="tags list"`
: The (top-level) tags to test for non-emptiness.
: **Default:** unset (test all tags).

## Examples

### Example 1: Increase the value of a variable

~~~ html
<txp:variable name="counter" value="0" />

<txp:article>
    <txp:variable name="counter" value='<txp:evaluate query=''<txp:variable name="counter" /> + 1'' />' />
    …
</txp:article>
~~~

Other tags used: [article](article), [variable](variable).

### Example 2: If links exist, renders a links list

~~~ html
<txp:evaluate test="linklist">
    <section>
        <h4>Links</h4>
        <txp:linklist wraptag="ul" break="li" />
    </section>
<txp:else />
    <p>No links registered yet.</p>
</txp:evaluate>
~~~

Other tags used: [else](else), [linklist](linklist).

## Genealogy

### Version 4.7.0

Tag support added.
