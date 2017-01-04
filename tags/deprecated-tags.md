---
layout: document
category: Tags
published: true
title: "Category: Deprecated tags"
description: A list of Textpattern documentation within the category 'Deprecated tags'.
search_omit: true
---

# Category: Deprecated tags

Textpattern documentation within the category 'Deprecated tags':

<div>
    {% for page in site.pages %}
        {% if page.tags contains 'Deprecated tags' %}
            {% include article-listing.html %}
        {% endif %}
    {% endfor %}
</div>
