---
layout: document
category: Tags
published: true
title: "Category: Article tags"
description: A list of Textpattern documentation within the category 'Article Tags'.
search_omit: true
---

# Category: Article tags

Textpattern documentation within the category 'Article Tags':

<div>
    {% if site.tags.'Article tags'.size%}
        {% for page in site.pages %}
            {% if page.tags contains 'Article tags' %}
                <article>
                    <h3>{{page.title}}</h3>
                    <p>{{page.description}}</p>
                    <p><a href="{{page.url}}">Go to the full documentation...</a></p>
                </article>
            {% else %}
                <p class="alert-block information">No articles currently exist in this category.</p>
            {% endif %}
        {% endfor %}
    {% else %}
        <p class="alert-block information">No articles currently exist in this category.</p>
    {% endif%}
</div>
