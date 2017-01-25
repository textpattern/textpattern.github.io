---
layout: document
category: Administration
published: true
title: Files panel
description: The Files administration panel provides central management tools for download files you want to include in your website.
---

# Files panel TODO

The Files administration panel provides central management tools for download files you want to include in your website. It keeps the file, it's description, and automatic information of file size together, as well as organizing file lists and other functions. So you can place download links and lists of downloads in your article content or [Form templates](http://docs.textpattern.io/themes/form-templates-explained) in a very convenient way. If you need to update a file, you can do it once in a central place and don't need to bother where you already have placed a link to it.

There are three basic things you can do in this panel:

1. Upload files
2. Edit file-related properties or replace the data file
3. List and manage your existing files

So the Files panel in a way combines what for articles is divided in two panels 'Write' and 'Articles'.

### Upload a file {#upload-a-file .sectionedit1#upload_a_file}

The first function on the panel is a small dialogue for uploading files
(see figure 1). When opening the panel for the first time, this will be
the only thing you will see, because there aren't any files yet. The
**Existing file** select box won't be visible the first time.

[![](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?media=file:tab_files_upload_dropdowns.png)](/home/www/zendstudio/dokuwiki/bin/lib/exe/detail.php?id=&media=file:tab_files_upload_dropdowns.png)

For large files it is recommended *not* to use the **Upload file**
field, but to use FTP to upload them directly to your files folder. Once
you have done that, the **Existing file** select box will appear, and
you can use it to import your file.

Uploaded files will be stored in the files folder of your Textpattern
install.

### Edit File Properties {#edit-file-properties .sectionedit2#edit_file_properties}

After the upload proceeded successfully the panel view will switch to
edit-properties-mode (see figure XX). Here you see the following pieces
of information:

-   **File Status**. Info only. “OK” tells that the file is in the
    files folder. If it's “Missing” you get additional fields
    for repairing. (Note: labeled “Condition” in the list of files)
-   **Name**. Info only.
-   **Download count**. Info only. You can click the linked name and
    thus test the download.
-   **Category**. Editable. With categories you organize download lists.
-   **Description**. Editable. Text that tells something about the file.
-   **Status**. Editable. There are three different status modes, which
    are equal to the articles' status: *Hidden*, *Pending* and *Live*
    (as default). (There is no “Sticky” status.)
-   **Timestamp**. Editable. The same handling as articles' timestamp.
    (There isn't an Expire-setting yet.)

After editing you have to *Save* your edits.

#### File size {#file_size}

File size isn't there as an info (nor in the file catalogue). But you
needn't enter it manually (for example in the description) for it is
included as an option in the file-related tags. See there.

### Replace a file {#replace-a-file .sectionedit3#replace_a_file}

If you need to **replace a file** (for there is a corrected or optimized
file or a new version and no need to keep the old one) you simply use
the small “Replace file” dialogue. It's working the same way as “upload”
but doesn't create a new content element and instead replaces the file
in the current one. (Note: Even if your replacement file has another
filename - e.g. your version number - it will be saved in the
files-folder with the name of the replaced file. This is *different*
from replacing an image's file.)

## List of existing files

Beneath the upload and search area there is the table, or list, of existing files. Each row is one file.

#### Search function and filter {#search_function_and_filter}

For this list can get long, at the top there is a **search function**,
which you can use to

-   **locate** files individually by search phrases
-   or to **filter** the list below.

The Search function has two components:

-   A *drop-down-list* to specify which **area** is to be searched
-   and a *textarea* for entering the **search phrase**.

The drop-down-list provides the following search areas:

-   ID\#
-   Name (= default)
-   Description
-   Category

By default (when opening the panel) *name* will be selected. You can
refine your search or filter by selecting another area option.

The search phrase in the textarea will be treated as a complete phrase
(see [articles](/home/www/zendstudio/dokuwiki/bin/doku.php?id=articles)
for details on this).

After entering your search criteria you can start searching by clicking
“Go”. As a result you will be given a new list of files which meet the
criteria.

#### List of files: Information columns {#list_of_filesinformation_columns}

*The list of files provides you with basic information on your file
content elements.* Each row is one file. There are eight columns. (Note:
The columns can be sorted. If you click the header of a column, it will
sort the whole current list of files (including all its pages) according
to that column. Click again to reverse sort direction. The current sort
column is marked by a yellow arrow on the right side of its name
indicating its direction: downwards = ascending = most recent presented
first at the top.)

For *files* there are eight different columns:

**ID\#** â€“ an ID number is automatically assigned to each file. The
ID\# is used for identifying and placing the content element with a tag.
Right from the ID\# two links reside: **Edit** â€“ click this (or the
name of the file) to edit the properties of the content element. The
panel view will switch to *edit properties mode*. **Download** â€“ click
this to download the file to your computer.

**Name** â€“ filename of the file. You can click this linked name to
edit the files properties. The panel view will switch to *edit
properties mode*.

**Description** â€“ what has to be told about the file. You needn't
specify file size here. Filesize will be shown automatically (by tags
and if you like).

**Category** â€“ if the link was assigned a category, then it will
reflect that here.

**Tags** - here you can choose between three modes how to include the
correct code. There will be a tag builder opened as a pop-up, creating a
tag for you to copy and paste.

**Status** - the current status of the file.

**Condition** - the day and time when this link has been created. (Note:
labeled “File Status” in the edit-mode)

**Downloads** - an indicator how many downloads already happened.

#### Edit multiple content elements {#edit_multiple_content_elements}

You may want to perform changes on multiple content elements, for
instance replace a category assignment in a group of 50 files.
Textpattern provides a way to do this in a single command:

First you have to select the content elements you want to apply a change
to. On the right side of the list you will find a checkbox for each
content element to select. You can mark and unmark the element by
clicking the checkbox. There are also three select-buttons at the bottom
of the list: “All”, “None” or “Range”. If you want to select a *range*
you simply mark the checkbox of both the first and the last link in the
range and then click “Range”. The links between will automatically be
checked too. You can combine those ways to select the appropriate files.

Second, you get to the bottom of the list to the drop-down-list labeled
“With selected:” and choose the function you want to perform.

For files the following changes are available:

-   Change Category
-   Delete

When selecting the “Change Category”-option you will get another
drop-down-list below which will give you the list of categories to
choose from.

After selecting the appropriate options click “Go” to start the changes.
A pop-up window will ask “Are you sure?” and then (if “yes”) the changes
will be performed.

## Pages and files listed per page

At the very bottom of the list you will find a pagination and links for next and previous pages if there are more pages. You can also change the number of files listed per page by selecting another value from the number range.

[Next: Links panel](http://docs.textpattern.io/administration/links-panel)
