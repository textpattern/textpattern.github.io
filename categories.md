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

<ul class="tags">
{% for tag in site.tags %}
  {% assign t = tag | first %}
  {% assign posts = tag | last %}
  <li>{{t | downcase | replace:" ","-" }} has {{ posts | size }} posts</li>
{% endfor %}
</ul>
