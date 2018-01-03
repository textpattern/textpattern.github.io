---
layout: document
category: Administration
published: true
title: Sections panel
description: Sections are the principle content organization mechanism in Textpattern, and the Sections panel is where you manage them.
---

# Sections panel TODO

Sections are the principle content organization mechanism in Textpattern, and the Sections panel is where you manage them.

On this page:

* [How do sections apply to Textpattern?](#how-do-sections-apply-to-textpattern)
* [Create a new section](#create-a-new-section)
* [Default publishing section](#default publishing section)
* [Editing sections](#editing-sections)
  * [Section names to avoid](#section-names-to-avoid)
* [Search function](#search-function)
* [List of existing sections](#list-of-existing-sections)
  * [Columns](#columns)
  * [Perform changes on selected sections](#perform-changes-on-selected-sections)
* [Pages and articles listed per page](#pages-and-articles-listed-per-page)

On this panel you can do two things:

1. Create a new section and edit existing sections
3. List and manage your existing sections

## How do sections apply to Textpattern?

Sections essentially provide the ability to create lateral structure in your site, thus each section has its own unique URL if the site is configured to use clean URLs in the [Preferences panel](https://docs.textpattern.io/administration/preferences-panel#article-url-pattern).

In the Sections panel, you're able to define what [Pages](https://docs.textpattern.io/administration/pages-panel) and [Styles](https://docs.textpattern.io/administration/styles-panel) will be used for the [Articles](https://docs.textpattern.io/administration/articles-panel) published in context to a given section. You can also control if articles posted in that section will be seen on the front page of the site, and whether or not the articles will be included in site searches.

Textpattern includes one sections by default: 'Articles'.

## Create a new section

This button will take you to the Section property editor (see below) where you can generate a new section along with its properties.

## Default publishing section

Here you can select what section you'd like to be the default choice when starting to write a new article. This can be overrode of course in the Write panel per article.

## Editing sections

You open the Section property editor when creating a new section or choosing to edit an existing one. Each section has various pieces of information associated with it, as described here:

**Section name:** The first control in the section editor panel is a text box where you type a new section name and create it. This name is used in URLs and by various Textpattern tags. See [Section names to avoid](#section-names-to-avoid) below for a list of unsafe names.

**Section title:** a title for the section, which can be harnessed by tags (such as [section](https://docs.textpattern.io/tags/section)).

**Uses page:** Textpattern assigns its default page template automatically (to ensure baseline publishing capabilities) but you can select differently if you have additional [Pages](https://docs.textpattern.io/administration/pages-panel) already created; You can reassign sections to pages at any time.

**Uses style:** Textpattern assigns its default style (CSS) automatically (to ensure baseline publishing capabilities) but you can select differently if you have additional [Styles](https://docs.textpattern.io/administration/styles-panel) already created; You can reassign sections to styles at any time.

**On front page?:** This is an extremely important option and should be considered with respect to the overall design of the site. Remember that section content only shows up when that section is called, except for the front page. This is the control that permits or denies content from showing up when the base `index.php` is called with no arguments.

**Syndicate articles?:** Textpattern creates RSS and Atom feeds for those who like to run news aggregators. If this selection is turned on, the feed will display article content from this section.

**Searchable?:** Textpattern provides a search function. It may be desirable to segregate some content and not make it available via the search function. This controls permits or denies the search from finding this content per section.

**Description:** The section description can be harnessed, for example, as meta data when you display an section article listing page.

### Section names to avoid

Sections can be given any arbitrary name, except for a few labels already reserved for Textpattern's special functions. Avoid the following or undesirable results will likely occur:

* `atom`
* `author` (or the equivalent in the site's set language)
* `category` (or the equivalent in the site's set language)
* `file_download`
* `rss`
* `section` (or the equivalent in the site's set language)

Section names already assigned to physical directories (and of course vice versa) will not work either.

## Search function

Because the links list can get pretty long, a search function is available at the top of the list. You can use the search function to locate a link directly by a search phrase or to filter the view on your links by particular criteria, thus reducing the number of links in the resulting list.

The Search function has two components:

1. A text field for entering the search query
2. A drop-down-list to specify which area is to be searched

Text entered in the textarea will be treated as a complete phrase (see the [Articles panel](https://docs.textpattern.io/administration/articles-panel) documentation for full details on this).

After entering your search criteria you start searching by selecting the search button. As a result you will be given a new list of links which meet the criteria.

As a default the search will find matches for all criteria. But you can do more refined searches by selecting another area to search in via the drop-down-list toggle button.

## List of existing sections

Beneath the 'Create section' button and search area there is the table, or list, of existing sections. Each row is one section.

### Columns

TODO

### Perform changes on selected links

In the first column you will find a checkbox for each section. Here you can select sections you want to change in a bulk manner. You can mark sections by checking the checkbox or you can use the checkbox in the head bar of the list to mark all sections on that page.

In order to quickly select ranges of sections select the checkbox of the first section you want to mark, press and hold the shift key, then select the checkbox of the last section in the range. All sections between will be checked too. You can add ranges to your selection by repeating these steps.

For performing changes now you go to the drop-down list 'With selected...' and choose the function you want to perform. After selecting the options you want to perform press 'Go' to start the changes.

## Pages and sections listed per page

At the very bottom of the list you will find a pagination and links for next and previous pages if there are more pages. You can also change the number of sections listed per page by selecting another value from the number range.

[Next: Pages panel](https://docs.textpattern.io/administration/pages-panel)
