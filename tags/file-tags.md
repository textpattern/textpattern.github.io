---
layout: collection
category: Tags
published: true
title: "Category: File tags"
description: A list of Textpattern documentation within the category 'File tags'.
search_omit: true
---

# Category: File tags

Textpattern documentation within the category 'File tags':

<ol class="list--no-bullets">
    {% for page in site.pages %}
        {% if page.tags contains 'File tags' %}
            {% include article-listing.html %}
        {% endif %}
    {% endfor %}
</ol>
