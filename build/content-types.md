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

Articles are the lifeblood of Textpattern and contain content you wish to publish. Each article can appear in one - and only one - section of your site; visitors read it on the front-end website via whatever navigation links you expose.

There is thus a one-to-one mapping of an article to its corresponding browser URL. Examples articles include:

* "How to bake the best loaf" -> example.org/recipes/how-to-bake-the-best-loaf
* "Easy chocolate brownies" -> example.org/recipes/easy-chocolate-brownies
* "Our company history" -> example.org/about/our-company-history
* "Ode to Textpattern" -> example.org/poems/ode-to-textpattern
* "Day 59 of being a zombie" -> example.org/blog/day-59-of-being-a-zombie
* "Who's Donald Swain?" -> example.org/articles/who-s-donald-swain
{:.example}

Note the above URLs are in the default section/title format, showing that the relevant articles are in the recipes, about, poems, blog, and articles sections, respectively.

All articles written by all site authors are visible from the Content>Articles panel. Bulk operations can be performed there via the **With selected** tool or, to edit an individual article, click its title to open it in the Write panel.

You may also start a new article via the **New article** button or by visiting the Content>Write panel from the menu.

### Article structure

Every article has the following components. Some are required as indicated, many are optional.

#### Title <span class="footnote warning">(required)</span>

The title is an accurate representation of the content within your article. It will draw readers and search engines to it. The title itself will form the basis of the **URL-only title** which is the title as it will appear in the browser's URL bar.

#### Section <span class="footnote warning">(required)</span>

Location: **Sort and display** area.

An article is published in one section only. Choose the desired section from those available in the list. The default section is defined in the **Default publishing section** selector at the top of the Presentation>Sections panel.

#### Status <span class="footnote warning">(required)</span>

Location: **Sort and display** area.

Articles have a status that governs their public visibility. Draft, Hidden, and Pending articles are not visible to public site visitors, so use these indicators while an article is in development (Draft), ready for publishing review (Pending), or pulled from the site for any reason (Hidden). The remaining two status values are used to make an article Live (visible to all) or Sticky (usually used to display at the head of every page in the section, or on landing page lists). Users with sufficient privileges logged into the back-end of Textpattern can preview articles of any status.

#### Publish date <span class="footnote warning">(required)</span>

Location: **Date and time** area.

An article has a publication date. By default for articles that are being published for the first time, the **Set timestamp to now** checkbox is set. If you wish to alter the publication date for any reason (e.g. to schedule a post for future publication, or to adjust the order of articles in a date-ordered list) you may uncheck the checkbox and manually adjust the year, month, day, hour, minute and second values.

#### Url-only title <span class="footnote warning">(required)</span>

Location: **Meta** area.
The title of the article that appears in the browser location URL bar and, thus, is visible to search engine spiders. It should closely align with your article title and content for maximum search engine ranking opportunity. Each time you save an article with Draft status, the URL-only title is automatically deduced from your article title and changes to reflect it. Whenever you first publish an article, however (make it Live/Sticky) the URL-only title is set and stays that way. If you subsequently change the title, the URL-only title will *not* change, as that would invalidate any search engine results. If you wish to alter it by hand, you may do so, but it's advised to set up a redirect (via a plugin or in your server rules) so search engines can update their links.

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

