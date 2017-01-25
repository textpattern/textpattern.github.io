---
layout: document
category: Administration
published: true
title: Files panel
description: The Files administration panel provides central management tools for download files you want to include in your website.
---

# Files panel TODO

The Files administration panel provides central management tools for download files you want to include in your website. It keeps the file, it's description, and automatic information of file size together, as well as organizing file lists and other functions. So you can place download links and lists of downloads in your article content or [Form templates](http://docs.textpattern.io/themes/form-templates-explained) in a very convenient way. If you need to update a file, you can do it once in a central place and don't need to bother where you already have placed a link to it.

On this page:

* [Upload files](#upload-files)
* [Existing files](#existing-files)
* [Editing files](#editing-files)
  * [Replace file](#replace-file)
  * [File details](#file-details)
* [Pages and files listed per page](#pages-and-files-listed-per-page)

There are three basic things you can do in this panel:

1. Upload files
2. Edit file-related properties or replace the data file
3. List and manage your existing files

So the Files panel in a way combines what for articles is divided in two panels 'Write' and 'Articles'.

## Upload files

The first tool at the top of the panel is the *upload* area. Labeled 'Upload file' you will find a field for entering a path to the file. On its right side there is a 'Browse...'-button which (as well as clicking on the field itself) will open a pop-up-window containing your file manager's tools to locate a file for upload.

When you have marked a file and put its path into the upload field by clicking 'open' (or 'OK'), you can start uploading by clicking 'Upload'.

The file will be uploaded to the files folder of Textpattern (but remember the file size limitations). A reference will automatically be saved in the database and the file editing panel will be opened. Here you can enter additional information (see below) regarding the file, or replace the file. To save those informations and return to the Files panel click 'Save'.

## Existing files

Alternatively to uploading files through a web browser, you can elect to upload files manually (i.e. via FTP) to your files directory; this is especially useful of you have large files then need to be uploaded to the server. The 'Existing file' select box will be available if Textpattern detects any manual uploads to the files directory.

Select the file from the dropdown list. Manually uploaded files will then be stored in the database, so you can append information to it via the file editing panel (see below).

## Editing files

### Replace file

If you need to **replace a file** (for if there is a corrected or optimized file or a new version and no need to keep the old one) you simply use the small 'Replace file' dialogue. It works the same way as 'Upload file' outlined above but doesn't create a new content element and instead replaces the file in the current one.

**Note:** Even if your replacement file has another filename - e.g. your version number - it will be saved in the files-folder with the name of the replaced file. This is *different* from replacing an image's file.

### File details

**Condition:** "OK" tells that the file is in the files folder - if it's "Missing" you get additional options for repairing.

**ID:** the unique ID number of the file.

**Name:** for information only, but can be harnessed by tags (such as [file_download_name](http://docs.textpattern.io/tags/file_download_name)).

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
