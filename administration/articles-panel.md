---
layout: document
category: Administration
published: true
title: Articles panel
description: The Articles panel shows a list of all your existing articles, together with some basic information on each.
---

# Articles panel

The Articles administration panel will show a list of all your existing articles together with basic information (Such as ID, Posted, Title, Author, etc.).

On this page:

* [Create a new article](#create-a-new-article)
* [Search function](#search-function)
* [List of articles](#list-of-articles)
  * [Columns](#columns)
  * [Perform changes on selected articles](#perform-changes-on-selected-articles)
* [Pages and articles listed per page](#pages-and-articles-listed-per-page)

On this panel you can do two things:

1. Open an article for editing
2. Perform batch changes on selected articles

## Create a new article

This button will take you directly to the [Write administration panel](https://docs.textpattern.io/administration/write-panel).

## Search function

Because the article list can get pretty long, a search function is available at the top of the list. You can use the search function to locate an article directly by a search phrase or to filter the view on your articles by particular criteria, thus reducing the number of articles in the resulting list.

The Search function has two components:

1. A text field for entering the search query
2. A drop-down-list to specify which area is to be searched

Query text entered in the textarea will be treated as a *complete phrase* (e.g. "time stamp" will find exactly that. Text containing only "time" or "stamp", "time, stamp" or "timestamp" will not be in the results).

You don't need to wildcard query text at the beginning or the end (e.g. "time" will find "parttime", "times", "timestamp" as well). But you can use wildcard ? within a query.

After entering your search criteria you start searching by clicking the search button. As a result you will be given a new list of articles which meet the criteria.

As a default the search will find matches for all criteria. But you can do more refined searches by selecting another area to search in via the drop-down-list toggle button.

**Examples:** You can search (or list) an article by its ID number or date posted. You can list all articles of an author, you even don't need the full author ID. Choose 'Author' and typing "adm" possibly is enough for the admin (provided no other author has "adm" in his ID). You can list all 'Drafts' (choose 'Status' and type "dr").

## List of articles

Okay, back to the list of articles! Each row is one article.

To explain the *columns* going across the top: If you click the header of a column, it will sort the list of articles according to that column. Click again to reverse sort direction.

### Columns

The default view shows these columns:

**ID:** a unique ID number is automatically assigned to each article. This is what identifies it and calls it on the live site.

**Posted:** this is the date/time that the article was (or will be) published. If it shows on the live site depends on your forms. Articles to be published in the future (where you entered a timestamp manually) are shown gray instead of black.

**Title:** the title of the article. Click this to edit the article.

**Section:** the section that the article belongs to.

**Status:** this is the status of the article. if set to Live, then this article is viewable on your live site (except if it has expired, see the [expired](https://docs.textpattern.io/tags/expires) tag. Might otherwise be set to 'Draft', 'Pending', etc.

**Author:** this is the name of the person who posted the article (only if more than one author exists in the [Users administration panel](https://docs.textpattern.io/administration/users-panel)).

At the top of the list there is an option 'Show detail'. When marked additional columns (and additional info) will be presented:

In the ID column, two links will be added for each article: **Edit:** click this (or the title of the article) to edit the article. **View:** click this to view the particular article on the live site.

**Modified:** tells when the article has recently been modified.

**Expires:** if an expire date/time has been entered for an article it will be shown here.

**Category 1:** if the article was assigned a category, then it will reflect that here.

**Category 2:** if the article was assigned a second category, it will reflect that here.

**Comments:** this will show if the article has comments turned on or off, and how many comments have been made to this article. Hidden if the commenting features are turned off globally in the [Preferences administration panel](https://docs.textpattern.io/administration/preferences-panel).

### Perform changes on selected articles

In the first column you will find a checkbox for each article. Here you can select articles you want to change in a bulk manner. You can mark articles by checking the checkbox or you can use the checkbox in the head bar of the list to mark all articles on that page.

In order to quickly select ranges of articles click the checkbox of the first article you want to mark, press and hold the shift key, then click the checkbox of the last article in the range. All articles between will be checked too. You can add ranges to your selection by repeating these steps.

For performing changes now you go to the drop-down list 'With selected...' and choose the function you want to perform. After selecting the options you want to perform click 'Go' to start the changes.

## Pages and articles listed per page

At the very bottom of the list you will find a pagination and links for next and previous pages if there are more pages. You can also change the number of articles listed per page by selecting another value from the number range.

[Next: Images administration panel](https://docs.textpattern.io/administration/images-panel)
