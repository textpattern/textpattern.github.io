---
layout: document
category: Construction and Presentation
published: true
title: Common panel functionality
description: Descriptions of secondary functionality common to many panels. Once you learn it, you don’t forget it.
---

# Common panel functionality

Functionality described on this page is common across the following back-end panels, where tables are used to present and manage a panel’s given item types:

* Content section: [Articles](/administration/articles-panel), [Images](/administration/images-panel), [Files](/administration/files-panel), [Links](/administration/links-panel), [Comments](/administration/comments-panel)
* Presentation section: [Themes](/administration/themes-panel), [Sections](/administration/sections-panel)
* Admin section: [Users](/administration/users-panel), [Plugins](/administration/plugins-panel)

 This common functionality is secondary to the principle features for creating and using a panel’s given type elements. Once you learn these secondary features — described here in the order they are found on panels, top to bottom — you don’t forget them, so explaining them repeatedly across panel documentation is pointless.

**Contents**

* Table of contents
{:toc}

## Panel search

The search function appears at the top-right of a relevant panel’s default view. It only appears on the Plugins panel after you’ve added the first plugin, because there is no default plugin.

### Scope of search

The search is scoped to the items specific to a given panel, presented in a table in the main content area. The columns of the table, and the data in table cells, represent criteria you can use in a given search.

The whole table will be searched by default, or you can specify a given column scope using the drop-down list button at far right of the search control, appearing with a downward black arrow on it.

### Search phrase

Text entered in the search box field will be treated as a complete phrase. For example, (see the Articles panel documentation for full details on this and bring it here).

### Search results

After entering search criteria, click the Search button. The main table display will change and reflect the results of your searched criteria.

## List handling

The relevant panels describe this functionality in relation to main item lists, but the lists are actually structured with tables, so understand that ‘lists’ and ‘tables’ means the same thing here.

Tables represent the main content areas of default panel displays. They are used to _list_ panel items, whatever item type is relevant in context (i.e. articles, images, themes, users, and so on).

Besides the links in many table cells — allowing you direct access to, and interaction with, the data of a specific item — tables have three useful features for manipulating table records (i.e. list items), described in the next three sections.

### List options

The **List options** control is immediately above and at right of the table with a little gear icon on it. Click the link and a menu will drop down showing you a list of table column headers. The headers all have checkboxes on them so you can select (show) or unselect (not show) which columns will appear in the main table display. One column will always be greyed out, which you can not uncheck, as at least one column must always appear.

### List sorting

Table sorting functionality is available on the same panels where the search function appears. It involves clicking (toggling) the column headers in the main display table to sort the records by a given data type.

Columns containing numerals only (e.g. ID numbers) will be sorted sequentially or in reverse-order.

Columns representing alphanumeric data will be sorted alphabetically or in reverse-alphabetical order.

Columns representing dates and time will be sorted chronologically or in reverse-chronological order.

### List changes

In the first column of every table you will find a checkbox for each listed item (table record). The checkboxes work in relation to a drop-down control immediately under and at left of tables.

The first checkbox in the column header will toggle all check boxes on or off, which can be used strategically if you need to get most records but not all, or you want to uncheck everything in case you made faulty selections.

You can also quickly select ranges of items by checking the box of the first item in a range, then press and hold the Shift key, then check the box of the last item in the range. All items between will then check themselves. You can add checked ranges to your selection by repeating these steps.

By default, when no boxes are checked, the associated drop-down menu under the table reads: ‘With 0 selected…’. When one or more boxes are check, the menu reads: ‘With selected…’.

The options you see in the menu reflect possible actions you can take, one at a time. The options are dependent on a given panel; or rather, the type of items a panel is concerned with.

A second drop-down menu may appear when you select certain options from the first menu. Use the second menu to further specify your intended action.

The overall idea and process, then, is simple:

1. Check the boxes for one or more records in the table that you want to do a given action on.
2. Select the action from the primary drop-down menu.
3. If a second menu appears, select the appropriate option.
4. Click the Go button.
5. Click the Yes (or Cancel) button when the popup confirmation asks you, ‘Are you sure?’.

At that point, if you clicked ‘Yes’, whatever action you initiated will happen and a system feedback message will appear at bottom of screen informing you of the result.

## Item count and pagination

At the bottom of these items-oriented panels are two controls that work in relation to one another.

On the left is a control for displaying a set volume of table records (list items); either 12, 24, 48, or 96 records at a time.

On the right is a pagination control with backward and forward direction links to page through items at the volume you set in the left-side control. Pagination also provides a text field to indicate a specific page. Type in a page number and hit the Enter key.
