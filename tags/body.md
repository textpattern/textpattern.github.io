---
layout: document
category: Tags
published: true
title: Body
description: The body tag is used to return the text, or content, of the article being displayed (the article itself).
tags:
  - Article tags
---

# Body

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:body />
~~~

The **body** tag is a *single* tag which is used to return the text, or content, of the article being displayed (the article itself). The tag can be used in Textpattern 'article' type [Form templates](/themes/form-templates-explained), or within [Page templates](/themes/page-templates-explained), either wrapped within a given article tag, or directly in the template itself so long as the context is with a single article (as opposed to an article list).

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

## Examples

### Example 1: Display the article text

~~~ html
<h1>
    <txp:title />
</h1>
<p>
    <txp:author /> at <txp:posted />
</p>
<txp:body />
~~~

When used as part of your article form, this displays the article title, author and posted date, then the body text beneath that.

Other tags used: [author](/tags/author), [posted](/tags/posted), [title](/tags/title).
