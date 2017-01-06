---
layout: document
category: Administration
published: true
title: Visitor logs panel
description: The Visitor Logs panel is where you can monitor who and what visits your site.
---

# Visitor logs panel

The Visitor Logs panel is where you can monitor who (web surfers) and what (spambots, search engine spiders, etc.) visits your site. Although the information is not extremely detailed, it is easy and effective enough for keeping an eye on traffic.

Each record is composed of the following information:

* **Time:** The time your Web page was visited. The time is shifted by the time preferences set in the [Preferences administration panel](http://docs.textpattern.io/administration/preferences-panel).
* **IP:** The IP address of the visitor.
* **Host:** The published hostname associated with the IP address.
* **Page:** The page in your Textpattern Web site that is first visited. If it is **bold** it shows an attempt to leave a comment. If no comment has been left, it is probably a script that unsuccessfully tried to leave some spam.
* **Referrer:** The location from which the visitor came; in other words, an external location where a link existed to your respective web page. This may be another web site, a search results list in Google, a bookmark, and so forth. Be aware that this information can be - and often is - forged or blocked. One reason for this, of course, is spam. A current tactic of spambots is to hit pages in the hopes that the referrer address is published on the page somehow, and when Google indexes the page, their page will incrementally be promoted.
* **Method:** Usually GET, sometimes POST
* **Status:** HTTP status code. 200 is successful.

To see the **IP**, **Method** and **Status** columns, you must check the 'More detail' box.

## Pages and visitor logs listed per page

At the very bottom of the list you will find a pagination and links for next and previous pages if there are more pages. You can also change the number of visitor logs listed per page by selecting another value from the number range.
