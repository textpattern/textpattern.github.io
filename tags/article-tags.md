---
layout: document
category: Tags
published: true
title: "Category: Article tags"
description: A list of Textpattern documentation within category 'Article Tags'.
search_omit: true
sitemap: false
---

# Category: Article tags

A list of Textpattern documentation within category 'Article Tags'.

<div>
    {% for page in site.pages %}
        {% if page.tags contains 'Article tags' %}
            <article>
                <h3>{{page.title}}</h3>
                <p>{{page.description}}</p>
                <p><a href="{{page.url}}">Go to the full documentation...</a></p>
            </article>
        {% endif %}
    {% endfor %}
</div>
