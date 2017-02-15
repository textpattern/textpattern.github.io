---
layout: document
category: Administration
published: true
title: Visitor logs panel
description: The Visitor logs panel is where you can monitor who, and what, visits your site.
---

# Visitor logs panel

The Visitor logs administration panel is where you can monitor who (web surfers) and what (spambots, search engine spiders, etc.) visits your site. Although the information is not all-encompassing, it is detailed enough for keeping an eye on traffic behaviour. **Note:** This panel is only available if you have turned on logging functionality in the [Preferences administration panel](http://docs.textpattern.io/administration/preferences-panel#logging).

On this page:

* [Search function](#search-function)
* [List of existing visitor logs](#list-of-existing-visitor-logs)
  * [Columns](#columns)
  * [Perform changes on selected visitor logs](#perform-changes-on-selected-visitor-logs)
* [Pages and visitor logs listed per page](#pages-and-visitor-logs-listed-per-page)

## Search function

Because the visitor logs list can get pretty long, a search function is available at the top of the list. You can use the search function to locate a visitor log directly by a search phrase or to filter the view on your visitor logs by particular criteria, thus reducing the number of visitor logs in the resulting list.

The Search function has two components:

1. A text field for entering the search query
2. A drop-down-list to specify which area is to be searched

Text entered in the textarea will be treated as a complete phrase (see the [Articles administration panel](http://docs.textpattern.io/administration/articles-panel) documentation for full details on this).

After entering your search criteria you start searching by clicking the search button. As a result you will be given a new list of visitor logs which meet the criteria.

As a default the search will find matches for all criteria. But you can do more refined searches by selecting another area to search in via the drop-down-list toggle button.

## List of existing visitor logs

Beneath the search area there is the table, or list, of existing visitor logs. Each row is one visit.

### Columns

* **Time:** The time your web page was visited. The time is shifted by the time preferences set in the [Preferences administration panel](http://docs.textpattern.io/administration/preferences-panel).
* **IP:** The IP address of the visitor.
* **Host:** The published hostname associated with the IP address.
* **Page:** The page in your Textpattern website that is first visited. If it is **bold** it shows an attempt to leave a comment. If no comment has been left, it is probably a script that unsuccessfully tried to leave some spam.
* **Referrer:** The location from which the visitor came; in other words, an external location where a link existed to your respective web page. This may be another website, a search results list in Google, a bookmark, and so forth. Be aware that this information can be - and often is - forged or blocked. One reason for this, of course, is spam. A current tactic of spambots is to hit pages in the hopes that the referrer address is published on the page somehow, and when Google indexes the page, their page will incrementally be promoted.
* **Method:** Usually GET, sometimes POST.
* **Status:** HTTP status code. 200 is successful.

### Perform changes on selected visitor logs

In the first column you will find a checkbox for each visitor log. Here you can select visitor logs you want to delete in a bulk manner. You can mark visitor logs by checking the checkbox or you can use the checkbox in the head bar of the list to mark all visitor logs on that page.

In order to quickly select ranges of visitor logs click the checkbox of the first visitor log you want to mark, press and hold the shift key, then click the checkbox of the last visitor log in the range. All visitor logs between will be checked too. You can add ranges to your selection by repeating these steps.

For performing changes now you go to the drop-down list 'With selected...' and choose the function you want to perform. After selecting the options you want to perform click 'Go' to start the changes.

## Pages and visitor logs listed per page

At the very bottom of the list you will find a pagination and links for next and previous pages if there are more pages. You can also change the number of visitor logs listed per page by selecting another value from the number range.
