---
layout: document
category: Administration
published: true
title: Themes panel
description: Themes are the principle way to group pages, forms and stylesheets.
---

# Themes panel

Themes are the principle way to group pages, forms and stylesheets.

On this page:

* [How do themes apply to Textpattern?](#how-do-themes-apply-to-textpattern)
* [Creating themes](#creating-themes)
* [Importing themes](#importing-themes)
* [Editing themes](#editing-themes)
* [Search function](#search-function)
* [List of existing themes](#list-of-existing-themes)
  * [Perform changes on selected themes](#perform-changes-on-selected-themes)
* [Pages and articles listed per page](#pages-and-themes-listed-per-page)

On this panel you perform two main actions:

1. Create a new theme, import it from an uploaded folder and edit existing ones.
2. List and manage your existing themes

## How do themes apply to Textpattern?

Themes essentially provide the ability to group pages, forms and styles. A theme is in use as a soon as one of its page and stylesheet are associated with a section.

## Creating themes

This button will take you to the Theme property editor where you can generate a new theme along with its properties and essential pages, forms and styles. Read the [Editing themes](#editing-themes) part for more informations about the themes properties.

## Importing themes

Themes import is available as far as at least one valid theme as been uploaded into the dedicated directory.
This directory is defined through the _themes directory_ preference and is set to the site root related _themes_ directory by default.
To be valid and displayed in the themes import form, a theme must contains at least a _manifest.json_ file defining the `txp-type` as `textpattern-theme`.

## Editing themes

You open the Theme property editor when creating a new theme or choosing to edit an existing one. Each theme has various pieces of information associated with it, as described here:

**Theme name:** the first control in the theme editor panel is a text box where you type a new theme name and create it. A theme renaming will also rename its related directory if it exists.

**Theme title:** if empty, the theme title will be set from the theme name.

**Version:** on creation, the theme version will be set to `0.0.1` if empty, while on import, it would be set to `unknown`.

**Author:** on creation the theme author name will be set the current username if empty, while on import, it would be set to `unknown`.

**Author website:** the theme author website URL is optional and allow to display the author name as a link on the themes list page.

## Search function

A search function is available at the top of the themes list. You can use the search function to locate a theme directly by a search phrase or to filter the view on your themes by particular criteria, thus reducing the number of themes in the resulting list.

The Search function has two components:

1. A text field for entering the search query
2. A drop-down list to specify which area is to be searched

Text entered in the textarea will be treated as a complete phrase (see the [Articles panel](/administration/articles-panel) documentation for full details on this).

After entering your search criteria you start searching by selecting the search button. As a result you will be given a new list of themes which meet the criteria.

As a default the search will find matches for all criteria. But you can do more refined searches by selecting another area to search in via the drop-down list toggle button.

## List of existing themes

Beneath the 'Create theme' button and search area there is the table, or list, of existing themes. Each row is one theme. If you select the header of a column, it will sort the list according to that column. Select again to reverse sort direction.

### Perform changes on selected themes

In the first column you will find a checkbox for each theme. Here you can select themes you want to change in a bulk manner. You can mark themes by checking the checkbox or you can use the checkbox in the head bar of the list to mark all themes on that page.

In order to quickly select ranges of themes select the checkbox of the first theme you want to mark, press and hold the Shift key, then select the checkbox of the last theme in the range. All themes between will be checked too. You can add ranges to your selection by repeating these steps.

For performing changes now you go to the drop-down list 'With selected…' and choose the function you want to perform. After selecting the options you want to perform press 'Go' to start the changes.

## Pages and themes listed per page

At the very bottom of the list you will find a pagination and links for next and previous pages if there are more pages. You can also change the number of themes listed per page by selecting another value from the number range.

[Next: Sections panel](/administration/sections-panel)
