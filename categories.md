---
layout: default
published: true
title: "Categories"
description: A list of Textpattern documentation sorted by category tag.
search_omit: true
sitemap: false
---

# Categories

A list of Textpattern documentation sorted by category tag.

<ul>
    {% for page in site.pages %}
        {% if page.tags contains 'Article tags' %}
            <li>
                <h3>{{page.title}}</h3>
                <p>{{page.description}}</p>  
            </li>
        {% endif %}
    {% endfor %}
</ul>
