---
layout: collection
category: Tags
published: true
title: "Group: Article tags"
description: A list of Textpattern documentation within the category 'Article tags'.
search_omit: true
---

# Category: Article tags

Textpattern documentation within the category 'Article tags':

<ol class="list--no-bullets">
    {% for page in site.pages %}
        {% if page.tags contains 'Article tags' %}
            {% include article-listing.html %}
        {% endif %}
    {% endfor %}
</ol>
