---
layout: document
category: Administration
published: true
title: Files panel
description: The Files panel provides central management tools for download files you want to include in your website.
---

# Files panel

The Files panel provides central management tools for download files you want to include in your website. It keeps the file, it's description, and automatic information of file size together, as well as organizing file lists and other functions. So you can place download links and lists of downloads in your article content or [Form templates](https://docs.textpattern.io/themes/form-templates-explained) in a very convenient way. If you need to update a file, you can do it once in a central place and don't need to bother where you already have placed a link to it.

On this page:

* [Upload files](#upload-files)
* [Existing files](#existing-files)
* [Editing files](#editing-files)
  * [Replace file](#replace-file)
  * [File details](#file-details)
* [Search function](#search-function)
* [List of existing files](#list-of-existing-files)
  * [Perform changes on selected files](#perform-changes-on-selected-files)
* [Pages and files listed per page](#pages-and-files-listed-per-page)

On this panel you can do three things:

1. Upload files
2. Edit file-related properties or replace the data file
3. List and manage your existing files

So the Files panel in a way combines what for articles is divided in two panels 'Write' and 'Articles'.

## Upload files

The first tool at the top of the panel is the *upload* area. Labeled 'Upload file' you will find a field for entering a path to the file. On its right side there is a 'Browse…'-button which (as well as selecting the field itself) will open a pop-up-window containing your file manager's tools to locate a file for upload.

When you have marked a file and put its path into the upload field by selecting 'open' (or 'OK'), you can start uploading by selecting 'Upload'.

The file will be uploaded to the files folder of Textpattern (but remember the file size limitations). A reference will automatically be saved in the database and the file editing panel will be opened. Here you can enter additional information (see below) regarding the file, or replace the file. To save those informations and return to the Files panel press 'Save'.

## Existing files

Alternatively to uploading files through a web browser, you can elect to upload files manually (i.e. via FTP) to your files directory; this is especially useful of you have large files then need to be uploaded to the server. The 'Existing file' select box will be available if Textpattern detects any manual uploads to the files directory. Select the file from the dropdown list. Manually uploaded files will then be stored in the database, so you can append information to it via the file editing panel (see below).

## Editing files

### Replace file

If you need to **replace a file** (for if there is a corrected or optimized file or a new version and no need to keep the old one) you simply use the small 'Replace file' dialogue. It works the same way as 'Upload file' outlined above but doesn't create a new content element and instead replaces the file in the current one.

**Note:** Even if your replacement file has another filename - e.g. your version number - it will be saved in the files-folder with the name of the replaced file. This is *different* from replacing an image's file.

### File details

**Condition:** "OK" tells that the file is in the files folder - if it's "Missing" you get additional options for repairing.

**ID:** the unique ID number of the file.

**Name:** for information only, but can be harnessed by tags (such as [file_download_name](https://docs.textpattern.io/tags/file_download_name)). You can select the linked name and thus test the download (which will also increase the download count).

**Download count:** for information only, but can be harnessed by tags (such as [file_download_downloads](https://docs.textpattern.io/tags/file_download_downloads)).

**File status:** there are three different status modes, which are equal to the articles' status: 'Hidden', 'Pending' or 'Live' (as default).

**Publish date:** the same handling as articles' timestamp - you can set a file to publish at some point in the future (or now, via the 'Set timestamp to now' checkbox).

**Title:** a title for the file, which can be harnessed by tags (such as [file_download_name](https://docs.textpattern.io/tags/file_download_name)).

**Category:** a category for the file. [Categories](https://docs.textpattern.io/administration/categories-panel) are used to generate lists of files.

**Description:** Text that tells something about the file, and can be harnessed by tags (such as [file_download_description](https://docs.textpattern.io/tags/file_download_description)).

After editing, you have to **Save** your edits.

## Search function

Because the files list can get pretty long, a search function is available at the top of the list. You can use the search function to locate a file directly by a search phrase or to filter the view on your files by particular criteria, thus reducing the number of files in the resulting list.

The Search function has two components:

1. A text field for entering the search query
2. A drop-down-list to specify which area is to be searched

Text entered in the textarea will be treated as a complete phrase (see the [Articles panel](https://docs.textpattern.io/administration/articles-panel) documentation for full details on this).

After entering your search criteria you start searching by selecting the search button. As a result you will be given a new list of files which meet the criteria.

As a default the search will find matches for all criteria. But you can do more refined searches by selecting another area to search in via the drop-down-list toggle button.

## List of existing files

Beneath the upload and search area there is the table, or list, of existing files. Each row is one file. If you select the header of a column, it will sort the list according to that column. Select again to reverse sort direction.

### Perform changes on selected files

In the first column you will find a checkbox for each file. Here you can select files you want to change in a bulk manner. You can mark files by checking the checkbox or you can use the checkbox in the head bar of the list to mark all files on that page.

For performing changes now you go to the drop-down list 'With selected…' and choose the function you want to perform. After selecting the options you want to perform press 'Go' to start the changes.

## Pages and files listed per page

At the very bottom of the list you will find a pagination and links for next and previous pages if there are more pages. You can also change the number of files listed per page by selecting another value from the number range.

## File tag builder

The file tag builder, selected from the **Tags** table column, has several options:

**Type:** choose what markup type you want to build the tag in. Either Textile format, Textpattern tags or standard HTML tags.

**Escape HTML:** escape any [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) encountered in the form.

**ID#:** the `id` number of the file (as displayed in the ID# column of the files list).

**Link text:** the text to be used on the link to this file - if this field is left blank, the link text will use the filename instead.

**Description**: an optional short summary of the file contents.

[Next: Links panel](https://docs.textpattern.io/administration/links-panel)
