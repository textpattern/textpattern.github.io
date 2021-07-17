---
layout: document
category: Tags
published: true
title: Search result count
description: The search_result_count tag is a single tag that returns the number of articles returned by an article tag.
tags:
  - Search tags
---

# Search result count

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:search_result_count />
~~~

The **search_result_count** tag is a *single* tag that returns the number of (live) articles returned by an article tag.

* Wrap with [if_search](/tags/if_search) tags to count search results.
* Use in a regular article list page by wrapping with [if_article_list](/tags/if_article_list) to count articles in that section.
* Use on the front (default) page to count the number of articles in sections with __On default page__ set to Yes.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`text="text"`
: Text to display with the number of matches.
: **Default:** `articles found`.

## Examples

### Example 1: Display number of search matches or articles in current section

~~~ html
<txp:if_search>
    <txp:search_result_count />
<txp:else />
    <txp:if_article_list>
        <txp:search_result_count text="articles" />
    </txp:if_article_list>
</txp:if_search>

<txp:article />
~~~

If the visitor is searching for articles, it will show the number of articles that matched the search term (e.g. 5) as follows: `5 articles found`. Otherwise, if Textpattern is displaying an article list, it will display the number of articles like this: `42 articles`.

Note: The [if_search](/tags/if_search) conditional tag is required to recognize actual search results. Without it, the number of articles is returned by default.
{: .alert-block .information}

Other tags used: [article](/tags/article), [if_search](/tags/if_search), [if_article_list](/tags/if_article_list).

### Example 2: Number of matches, using custom text

~~~ html
<txp:if_search_results>
    <txp:search_result_count text="hits" />
</txp:if_search_results>
~~~

Displays the number of articles returned (e.g. 5) as follows: `5 hits`.

Other tags used: [if_search_results](/tags/if_search_results).

### Example 3: Regular (live) article count

~~~ html
<txp:if_article_list>
    <txp:search_result_count text="articles" />
    <txp:article limit="20" />
</txp:if_article_list>
~~~

Displays the number of articles in the current section, then displays them as an article listing, 20 per page.

Other tags used: [article](/tags/article), [if_article_list](/tags/if_article_list).
