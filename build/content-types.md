---
layout: document
category: Construction and Presentation
published: true
title: Content types
description: Core content types, custom content types, and designing site architectures with these kinds of content needs in mind.
---

# Content Types

Intro...

**Contents**

* Table of contents
{:toc}

## Articles

Articles are the lifeblood of Textpattern and contain content you wish to publish. Each article can appear in one - and only one - section of your site; visitors read it on the front-end website. There is thus a one-to-one mapping of an article to its corresponding browser URL. Examples articles include:

* "How to bake the best loaf" -> example.org/recipes/how-to-bake-the-best-loaf
* "Easy chocolate brownies" -> example.org/recipes/easy-chocolate-brownies
* "Our company history" -> example.org/about/our-company-history
* "Ode to Textpattern" -> example.org/poems/ode-to-textpattern
* "Day 59 of being a zombie" -> example.org/blog/day-59-of-being-a-zombie
* "Who's Donald Swain?" -> example.org/articles/who-s-donald-swain
{:.example}

Note the above URLs are in the default section/title format, showing that the relevant articles are in the recipes, about, poems, blog, and articles sections, respectively.

All articles written by all site authors are visible from the Content>Articles panel. Bulk operations can be performed there via the **With selected** tool or, to edit an individual article, click its title to open it in the Write panel.

You may also start a new article via the **New article** button or by visiting the Contet>Write panel from the menu.

### Article structure

Every article has the following components. Some are required, most are optional.

Title (required)
: The title is an accurate representation of the content within your article. It will draw readers and search engines to it. The title itself will form the basis of the **URL-only title** which is the title as it will appear in the browser's URL bar.
Section (required)
: 
Status (required)
: 
Publish date (required)
: 
Body
: 
Excerpt
: 


## Images

## Files

## Links

## Comments

## Authors

## Categories

## Custom fields

Custom fields enable you to add site-specific content to your articles that extend the scope of the core fields defined above.

### Defining custom fields

On the Preferences panel, click the **Custom fields** item to see input text boxes for defining up to ten fields that will appear on the Write panel when defined.

#### Important notes on creating custom field names

Custom field names may include letters (uppercase or lowercase), numbers, and under scores, but no spaces or other special characters should be used. For example, `custom1`, `Custom1`, `Custom_1`, `Location` and `Project_name` are all valid name constructs, while `custom 1`, `custom !` and `Project name` are not.

Also, there are certain names **reserved** by Textpattern, which should *not* be used to name custom fields. Doing so will likely cause your site to not work as expected.

**Do not use the following for custom field names**:

* annotate
* article_image
* authorid
* body
* category
* category1
* category2
* comments_count
* comments_invite
* excerpt
* form
* id
* keywords
* limit
* offset
* posted
* section
* sort
* status
* thisid
* title
* url_title
* Or any other [tag attribute](/tags/tag-attributes-cross-reference), just in case!

A symptom of a name clash is when you go to check or display the contents of a custom field in an article and receive unexpected (or no) output. In this case, make sure your custom field names are not any of the reserved names listed above.

To remove a custom field, simply clear its name and save the changes.

