---
layout: document
category: Tags
published: true
title: "Category: Conditional tags"
description: A list of Textpattern documentation within the category 'Conditional Tags'.
search_omit: true
---

# Category: Conditional tags

Textpattern documentation within the category 'Conditional Tags':

<div>
    {% for page in site.pages %}
        {% if page.tags contains 'Conditional tags' %}
            <article>
                <h3>{{page.title}}</h3>
                <p>{{page.description}}</p>
                <p><a href="{{page.url}}">Go to the full documentation...</a></p>
            </article>
        {% endif %}
    {% endfor %}
</div>
