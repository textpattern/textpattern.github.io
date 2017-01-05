---
layout: collection
category: Tags
published: true
title: "Category: Search tags"
description: A list of Textpattern documentation within the category 'Search tags'.
search_omit: true
---

# Category: Search tags

Textpattern documentation within the category 'Search tags':

<ol class="list--no-bullets">
    {% for page in site.pages %}
        {% if page.tags contains 'Search tags' %}
            {% include article-listing.html %}
        {% endif %}
    {% endfor %}
</ol>
