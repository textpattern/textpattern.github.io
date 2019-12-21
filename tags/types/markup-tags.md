---
layout: collection
category: Tags
published: true
title: "Category: Markup tags"
description: A list of Textpattern documentation within the category 'Markup tags'.
search_omit: true
---

# Category: Markup tags

Textpattern documentation within the category 'Markup tags':

<ol class="list--no-bullets">
    {% for page in site.pages %}
        {% if page.tags contains 'Markup tags' %}
            {% include article-listing.html %}
        {% endif %}
    {% endfor %}
</ol>
