---
layout: document
category: Administration
published: true
title: Comments panel
description: The Comments panel provides control about visitor comments on your public pages.
---

# Comments panel

The Comments panel provides control about visitor comments on your public pages. **Note:** This panel is only available if you have turned on comment functionality in the [Preferences panel](/administration/preferences-panel#accept-comments).

On this page:

* [Editing comments](#editing-comments)
  * [Comment details](#comment-details)
* [Search function](#search-function)
* [List of existing comments](#list-of-existing-comments)
  * [Show spam](#show-spam)
  * [Perform changes on selected comments](#perform-changes-on-selected-comments)
* [Pages and links listed per page](#pages-and-comments-listed-per-page)

On this panel you can do two things:

1. The primary (and default) comments list for basic info and instant handling of comments
2. An edit mode where you can edit the comments content

## Editing comments

If you select the unique ID link of the comment in the list of existing comments, you will open the comment edit panel.

### Comment details

**Status:** select whether the comment is currently shown in the parent article or hidden (either as unmoderated or spam).

**Name:** edit the given name of the commentator.

**IP:** for information only, the IP address of the original commentator.

**Email:** edit the given email address of the commentator.

**Website:** edit the given website URL of the commentator.

**Date:** for information only, when the comment was created.

**Message:** edit the message itself.

After editing, you have to **Save** your edits.

## Search function

Because the comments list can get pretty long, a search function is available at the top of the list. You can use the search function to locate a comment directly by a search phrase or to filter the view on your comments by particular criteria, thus reducing the number of comments in the resulting list.

The Search function has two components:

1. A text field for entering the search query
2. A drop-down list to specify which area is to be searched

Text entered in the textarea will be treated as a complete phrase (see the [Articles panel](/administration/articles-panel) documentation for full details on this).

After entering your search criteria you start searching by selecting the search button. As a result you will be given a new list of comments which meet the criteria.

As a default the search will find matches for all criteria. But you can do more refined searches by selecting another area to search in via the drop-down list toggle button.

## List of existing comments

Beneath the search area there is the table, or list, of existing comments. Each row is one comment. If you select the header of a column, it will sort the list according to that column. Select again to reverse sort direction.

### Show spam

By default Textpattern will hide comments which are automatically identified and marked as [spam](https://en.wikipedia.org/wiki/Spamming). By marking the 'Show spam' checkbox, spam comments will be visible in the listing.

### Perform changes on selected comments

In the first column you will find a checkbox for each comment. Here you can select comments you want to change in a bulk manner. You can mark comments by checking the checkbox or you can use the checkbox in the head bar of the list to mark all comments on that page.

In order to quickly select ranges of comments select the checkbox of the first comment you want to mark, press and hold the Shift key, then select the checkbox of the last comment in the range. All comments between will be checked too. You can add ranges to your selection by repeating these steps.

For performing changes now you go to the drop-down list 'With selected…' and choose the function you want to perform. After selecting the options you want to perform press 'Go' to start the changes.

## Pages and comments listed per page

At the very bottom of the list you will find a pagination and links for next and previous pages if there are more pages. You can also change the number of comments listed per page by selecting another value from the number range.

[Next: Themes panel](/administration/themes-panel)
