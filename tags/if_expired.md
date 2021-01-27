---
layout: document
category: Tags
published: true
title: If expired
description: The if_expired tag will execute the contained statements, if a particular article is expired.
tags:
  - Article tags
  - Conditional tags
---

# If expired

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_expired>
~~~

The **if_expired** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_expired>
    …conditional statement…
</txp:if_expired>
~~~

The tag will execute the contained statements, if a particular article is expired. Should be used in an 'article' type form.

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

## Examples

### Example 1: Show when article has (or will) expire

~~~ html
<txp:if_expired>
    This article is already expired. It expired <txp:expires />.
<txp:else />
    <txp:if_expires>
        This page isn't expired. It expires <txp:expires />.
    <txp:else />
        This page doesn't expire.
    </txp:if_expires>
</txp:if_expired>
~~~

Other tags used: [else](/tags/else), [expires](/tags/expires), [if_expires](/tags/if_expires).

## Genealogy

### Version 4.0.7

Tag support added.
