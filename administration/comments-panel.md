---
layout: document
category: Administration
published: true
title: Comments panel
description: The Comments administration panel provides control about visitor comments on your public pages.
---

# Comments panel TODO

The Comments administration panel provides control about *visitor comments* on your public pages.

On this page:

* [Editing comments](#editing-comments)
* [Search function](#search-function)
* [List of existing comments](#list-of-existing-comments)
  * [Show spam](#show-spam)
  * [Columns](#columns)
  * [Perform changes on selected comments](#perform-changes-on-selected-comments)
* [Pages and links listed per page](#pages-and-comments-listed-per-page)

On this panel you can do two things:

1. The primary (and default) comments list for basic info and instant handling of comments.
2. An edit mode where you can edit the comments content.

## Editing comments

TODO

## Search function

Because the comments list can get pretty long, a search function is available at the top of the list. You can use the search function to locate a comment directly by a search phrase or to filter the view on your comments by particular criteria, thus reducing the number of comments in the resulting list.

The Search function has two components:

1. A text field for entering the search query
2. A drop-down-list to specify which area is to be searched

Text entered in the textarea will be treated as a complete phrase (see the [Articles administration panel](http://docs.textpattern.io/administration/articles-panel) documentation for full details on this).

After entering your search criteria you start searching by clicking the search button. As a result you will be given a new list of comments which meet the criteria.

As a default the search will find matches for all criteria. But you can do more refined searches by selecting another area to search in. The drop-down-list toggle button provides the following search criteria:

* Search all (default)
* ID
* Parent
* Name
* Message
* Email
* Website
* IP
* Visible

## List of existing links

Beneath the search area there is the table, or list, of existing comments. Each row is one comments.

### Show spam

By default Textpattern will hide comments which are automatically identified and marked as [spam](https://en.wikipedia.org/wiki/Spamming). By selecting 'Show spam' checkbox, spam comments will be visible in the listing.

### Columns

The default view shows these columns:

**ID\#** - provides an ID for each comment.

**Date** - when the comment has been entered

**Name** - of the commentator

**Message** - The first words of the message (cropped)

**Parent** - The title of the article the comment has been written to.
If you click on the provided link, the article will open in the “Write”
panel.

By marking “Show Detail” there will be additional columns in the list:

**E-mail** **Website** **IP** **Status**

You will also find two additional links:

-   “Edit” will open an edit-window with the comment filled in.
-   “View” will show the comment on the public-side.

### Perform changes on selected comments

In the first column you will find a checkbox for each comment. Here you can select comments you want to change in a bulk manner. You can mark comments by checking the checkbox or you can use the checkbox in the head bar of the list to mark all comments on that page.

In order to quickly select ranges of comments click the checkbox of the first comment you want to mark, press and hold the shift key, then click the checkbox of the last comment in the range. All comments between will be checked too. You can add ranges to your selection by repeating these steps.

For performing changes now you go to the drop-down list 'With selected...' and choose the function you want to perform. The following changes are available:

* Show
* Hide (unmoderated)
* Hide (spam)
* Delete

After selecting the options you want to perform click 'Go' to start the changes. A pop-up window will ask "Are you sure?" and then (if 'yes') the changes will be performed.

## Pages and comments listed per page

At the very bottom of the list you will find a pagination and links for next and previous pages if there are more pages. You can also change the number of comments listed per page by selecting another value from the number range.

[Next: Sections panel](http://docs.textpattern.io/administration/sections-panel)
