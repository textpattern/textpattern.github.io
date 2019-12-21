---
layout: collection
category: Tags
published: true
title: "Category: Structural tags"
description: A list of Textpattern documentation within the category 'Structural tags'.
search_omit: true
---

# Category: Structural tags

Textpattern documentation within the category 'Structural tags':

<ol class="list--no-bullets">
    {% for page in site.pages %}
        {% if page.tags contains 'Structural tags' %}
            {% include article-listing.html %}
        {% endif %}
    {% endfor %}
</ol>
