---
layout: collection
category: FAQs
published: true
title: "Category: Acquisition and installation FAQs"
description: A list of Textpattern documentation within the category 'Acquisition and installation FAQs'.
search_omit: true
---

# Category: Acquisition and installation FAQs

Textpattern documentation within the category 'Acquisition and installation FAQs':

<ol class="list--no-bullets">
    {% for page in site.pages %}
        {% if page.tags contains 'Acquisition and installation FAQs' %}
            {% include article-listing.html %}
        {% endif %}
    {% endfor %}
</ol>
