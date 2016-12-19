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

{% for page in site.pages %}
  {% if page.tags contains 'Article tags' %}
    <div class="item">
      <h3>{{page.title}}</h3>
      <p>{{page.description}}</p>  
    </div>
  {% endif %}
{% endfor %}
