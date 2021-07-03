---
layout: document
category: Administration
published: true
title: Links panel
description: The Links panel provides a way of keeping track of links and lists of external resources.
---

# Links panel

The Links panel provides a way of keeping track of links and lists of resources (often external to the site) so they may be included in article content or [Form templates](/themes/form-templates-explained) in a convenient way.

On this page:

* [Why store links in this link repository?](#why-store-links-in-this-link-repository)
* [Create a new link](#create-a-new-link)
* [Editing links](#editing-links)
  * [Link details](#link-details)
  * [Link sorting rules](#link-sorting-rules)
* [Search function](#search-function)
* [List of existing links](#list-of-existing-links)
  * [Perform changes on selected links](#perform-changes-on-selected-links)
* [Pages and links listed per page](#pages-and-links-listed-per-page)

On this panel you can do two things:

1. Create a new link and edit existing ones
2. Manage your existing repository of links

So the Links panel in a way combines what for articles is divided in two panels 'Write' and 'Articles'.

## Why store links in this link repository?

While you could place links to external resources (or internal pages) directly into any article, this would mean a lot of work keeping track and maintaining links and lists of resources. Textpattern provides a better way: manage your links (and lists of links) *in a central place* and then include them in article content or Form templates with Textpattern tags. This way changes will take effect at every occurrence of a link and - for example - additions to a topic list of resource links will automatically be included wherever you placed the list.

The [linklist](/tags/linklist) tag will output links from the link repository, with filter criteria and presentation settings applied.

## Create a new link

This button will take you to the Link property editor (see below) where you can generate a new link along with its properties.

## Editing links

### Link details

Each link has various pieces of information associated with it, as described here:

**Title:** a title for the link, which can be harnessed by tags (such as [linkdesctitle](/tags/linkdesctitle)).

**Sort Value:** assigns listing priorities by number or letter to your links. See [Link sorting rules](#link-sorting-rules) below for a full explanation.

**URL:** the hyperlink value assigned to the link.

**Category:** a category for the link. [Categories](/administration/categories-panel) are used to generate lists of links.

**Description:** Text that tells something about the link, and can be harnessed by tags (such as [link_description](/tags/link_description)).

After editing, you have to **Save** your edits.

### Link sorting rules

When Textpattern sets the list sequence of links it uses the following method: Numbers are considered lower than letters, and values are sequenced lowest to highest, top to bottom.

The first character on the left is considered first and all links are sequenced. Then the second character is considered, and those link values that have the same first character are sequenced like a subcategory according to the second character. Then the third character is considered, then the fourth, etc.

Thus the sort values: `1`, `1B`, `2`, `10`, `11`, `100`, `101`, `A`, `B` would be sequenced as follows.

1. `1`
2. `10`
3. `100`
4. `101`
5. `11`
6. `1B`
7. `2`
8. `A`
9. `B`

## Search function

Because the links list can get pretty long, a search function is available at the top of the list. You can use the search function to locate a link directly by a search phrase or to filter the view on your links by particular criteria, thus reducing the number of links in the resulting list.

The Search function has two components:

1. A text field for entering the search query
2. A drop-down list to specify which area is to be searched

Text entered in the textarea will be treated as a complete phrase (see the [Articles panel](/administration/articles-panel) documentation for full details on this).

After entering your search criteria you start searching by selecting the search button. As a result you will be given a new list of links which meet the criteria.

As a default the search will find matches for all criteria. But you can do more refined searches by selecting another area to search in via the drop-down list toggle button.

## List of existing links

Beneath the 'Create link' button and search area there is the table, or list, of existing links. Each row is one link. If you select the header of a column, it will sort the list according to that column. Select again to reverse sort direction.

### Perform changes on selected links

In the first column you will find a checkbox for each link. Here you can select links you want to change in a bulk manner. You can mark links by checking the checkbox or you can use the checkbox in the head bar of the list to mark all links on that page.

In order to quickly select ranges of links select the checkbox of the first link you want to mark, press and hold the Shift key, then select the checkbox of the last link in the range. All links between will be checked too. You can add ranges to your selection by repeating these steps.

For performing changes now you go to the drop-down list 'With selected…' and choose the function you want to perform. After selecting the options you want to perform press 'Go' to start the changes.

## Pages and links listed per page

At the very bottom of the list you will find a pagination and links for next and previous pages if there are more pages. You can also change the number of links listed per page by selecting another value from the number range.

[Next: Categories panel](/administration/categories-panel)
