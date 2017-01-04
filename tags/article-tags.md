---
layout: document
category: Tags
published: true
title: "Category: Article tags"
description: A list of Textpattern documentation within the category 'Article tags'.
search_omit: true
---

# Category: Article tags

Textpattern documentation within the category 'Article tags':

<div>
    {% for page in site.pages %}
        {% if page.tags contains 'Article tags' %}
            {% include article-listing.html %}
        {% endif %}
    {% endfor %}
</div>
