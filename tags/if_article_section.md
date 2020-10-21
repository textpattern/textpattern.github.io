---
layout: document
category: Tags
published: true
title: If article section
description: The if_article_section tag will execute the contained statements if the section name associated with a particular article matches.
tags:
  - Article tags
  - Conditional tags
---

# If article section

**On this page**:

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_article_section>
~~~

The **if_article_section** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_article_section>
    …conditional statement…
</txp:if_article_section>
~~~

The tag will execute the contained statements if the section name associated with a particular article matches the value of the `name` attribute. Should be used in an article form.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`name=""`
: One or more section names separated by a comma.
: Example : `name="section,section2,etc"`

## Examples

### Example 1: Check the article's section

~~~ html
<txp:if_article_section name="poetry">
    <p>by <txp:author /></p>
</txp:if_article_section>
~~~

Displays the author name if the current article belongs to the section named `poetry`.

Other tags used: [author](/tags/author).

### Example 2: Using the tag with else

~~~ html
<txp:if_article_section name="poetry">
    <p>Fun With poetry</p>
<txp:else />
    <p><a href="index.php">Home</a></p>
</txp:if_article_section>
~~~

Display the welcome text if the article's section matches `poetry`, or shows a default link otherwise.

Other tags used: [else](/tags/else).
