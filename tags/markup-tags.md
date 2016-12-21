---
layout: document
category: Tags
published: true
title: Category: Markup tags
description: A list of Textpattern documentation within the category 'Markup tags'.
search_omit: true
---

# Category: Markup tags

Textpattern documentation within the category 'Markup tags':

<div>
    {% for page in site.pages %}
        {% if page.tags contains 'Markup tags' %}
            <article>
                <h3>{{page.title}}</h3>
                <p>{{page.description}}</p>
                <p><a href="{{page.url}}">Go to the full documentation...</a></p>
            </article>
        {% endif %}
    {% endfor %}
</div>
