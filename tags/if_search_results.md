---
layout: document
category: Tags
published: true
title: If search results
description: The if_search_results tag will execute the contained statements if the current article list contains a certain amount of entries matching a search.
tags:
  - Conditional tags
  - Search tags
---

# If search results

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_search_results>
~~~

The **if_search_results** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_search_results>
    …conditional statement…
</txp:if_search_results>
~~~

The tag will execute the contained statements if the current article list contains a certain amount of entries matching the search term - mostly more than zero.

A typical application of this tag is the conditional output of a "Sorry, we found no items matching your search request." message, but the `min` and `max` attributes allow for a finer grained reaction to search queries.

Note: You cannot use this tag directly inside an [if_search](/tags/if_search) tag without using an [article](/tags/article) tag first to actually perform the search! See Example 2 below for clarification.
{: .alert-block .information}

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`max="number"`
: If the search results count is no higher than `max`, the tags enclosed by this conditional tag are rendered.
: **Default:** unset (which results in no upper limit).

`min="number"`
: If the search results count is at least equal to `min`, the tags enclosed by this conditional tag are rendered.
: **Default:** `1`.

## Examples

### Example 1: More informative search result output

~~~ html
<txp:if_search_results>
    <p>These articles match your search request:</p>
<txp:else />
    <p>Sorry, we were not able to find a page matching your search request <q><txp:search_term /></q>.</p>
</txp:if_search_results>
~~~

Ensures the visitor does not see a blank page when no articles match the search request.

Other tags used: [else](/tags/else), [search_term](/tags/search_term).

### Example 2: In context within if_search

~~~ html
<txp:if_search>
    <txp:article pgonly="1" limit="10" />
    <txp:if_search_results>
        <p>These articles match your search request:</p>
        <txp:article limit="10" searchform="search_results" />
    <txp:else />
        <p>Sorry, we were not able to find a page matching your search request <q><txp:search_term /></q>.</p>
    </txp:if_search_results>
</txp:if_search>
~~~

Detects if a search is in progress, calls the [article](/tags/article) tag to perform the search but **inhibits display via the `pgonly` attribute**. Once the search has been performed (internally) and Textpattern knows how many search results there are, you can then use [if_search_results](/tags/if_search_results) to detect whether there were any or not. Why you have to do this? Because it's the only way to use the tag! Trying to use it without first calling an [article](/tags/article) tag will give unexpected results and, more often than not, a "Page template … does not contain a txp:article tag" warning.

Note: You must ensure that all attributes used in your two article tags are identical (except for any `form` attributes, which can safely be omitted when using `pgonly`). Failure to keep the tags in sync will result in strange article counts or odd behaviour.
{: .alert-block .information}

Other tags used: [if_search](/tags/if_search), [article](/tags/article), [else](/tags/else), [search_term](/tags/search_term).

### Example 3: Take action when there are too many hits

~~~ html
<txp:if_search_results max="500">
    <p>These articles match your search request:</p>
<txp:else />
    <p>Seems like you are looking for a very common search term. Try using a more specific search phrase.</p>
</txp:if_search_results>
~~~

Advises the visitor to search for something more specific in the case where their search term generated an excessive amount of hits.

Other tags used: [else](/tags/else).

## Genealogy

### Version 4.0.6

Tag support added.
