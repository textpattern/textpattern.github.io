---
layout: document
category: Administration
published: true
title: Images panel
description: The Images administration panel lets you manage everything you need to include images (and galleries) in your content.
---

# Images panel

The Images administration panel lets you manage everything you need to include images (and galleries) in your content. From this panel you can upload images, create thumbnails, add captions (and alternate text), build groups of images (using categories) and generate tags to place images in your articles (or forms).

On this page:

* [Upload images](#upload-images)
* [Editing images](#editing-images)
  * [Image details](#image-details)
  * [Replace image](#replace-image)
  * [Create thumbnail](#create-thumbnail)
* [Search function](#search-function)
* [List of existing images](#list-of-existing-images)
  * [Columns](#columns)
  * [Perform changes on selected images](#perform-changes-on-selected-images)
* [Pages and articles listed per page](#pages-and-articles-listed-per-page)

Of course you could upload images (using FTP) and place image tags (using HTML) directly. But then you'd have to provide elements like captions separately for every place you use an image. The images tools of Textpattern provide a way of managing image-related info *in a central place*. If you have to change a caption or for example need to replace an image (e.g. a sharper one or another view) you can do these changes once at a central place and the changes will automatically take effect wherever you placed the image using Textpattern tags.

There are three basic things you can do in this panel:

1. Upload images
2. Edit image-related information (create a thumbnail, add caption and alternate text, categorize, etc.)
3. List and manage your existing images.

So the images panel in a way combines what for articles is divided in two panels 'Write' and 'Articles'.

## Upload images

The first tool at the top of the panel is the *upload* area. Labeled 'Upload image' you will find a field for entering a path to the image. On its right side there is a 'Browse...'-button which (as well as clicking on the field itself) will open a pop-up-window containing your file manager's tools to locate an image file for upload.

When you have marked an image and put its path into the upload field by clicking 'open' (or 'OK'), you can start uploading by clicking 'Upload'.

The image will be uploaded to the images folder of Textpattern (but remember the file size limitations). A reference will automatically be saved in the database and the single image editing panel will be opened. Here you can enter additional information (see below) regarding the image. To save those informations and return to the Images panel click 'Save'.

**Technical note:** In the images folder all uploaded images will have only a number as name. The number equals the unique Textpattern ID number of the image - extended by `t` for a thumbnail. The original name is kept in the images properties.

## Editing images

### Image details

The image details panel shows the unique ID number of the image. In addition these pieces of information can be edited and saved in an image record:

**Image name:** here by default the images *filename* will be entered automatically. If you'd like to rename the image you can do so here.

**Category:** a category for the image. [Categories](http://docs.textpattern.io/administration/categories-panel) are used to generate lists of images and galleries.

**Alternate text:** text which will replace the image when it's broken or images will not be downloaded. Very important for SEO, web standards and accessibility.

**Caption:** any text to make a good caption for the image.

### Replace image

If you need to replace an image by another or a better one (instead of placing another one, especially if you already have placed it on several places in your content) you can do so with the upload fields labelled 'Replace image'. The uploaded image replaces the current one, but retains any further details you have entered for it.

### Create thumbnail

Thumbnails (smaller versions of an image) can be used for various tasks in a website. There are two ways to include thumbnails of an existing image:

1. You can upload your own thumbnail with the upload fields labelled 'Upload thumbnail'.
2. You can automatically generate a thumbnail with Textpattern's built-in tools. Fill in the appropriate width and/or height. If you define both and don't want the image to be scaled mark 'Crop'. To create the thumbnail click 'Create'.

Thumbnails are stored images folder all uploaded images and have the same ID number as their parent, extended by `t`.

## Search function

Because the images list can get pretty long, a search function is available at the top of the list. You can use the search function to locate an image directly by a search phrase or to filter the view on your images by particular criteria, thus reducing the number of images in the resulting list.

The Search function has two components:

1. A text field for entering the search query
2. A drop-down-list to specify which area is to be searched

Text entered in the textarea will be treated as a complete phrase (see the [Articles administration panel](http://docs.textpattern.io/administration/articles-panel) documentation for full details on this).

After entering your search criteria you start searching by clicking the search button. As a result you will be given a new list of images which meet the criteria.

As a default the search will normally proceed in the images' **name**.
But you can do more refined searches by selecting another area to search
in. The drop-down-list left from the textarea provides the following
search criteria:

As a default the search will find matches for all criteria. But you can do more refined searches by selecting another area to search in. The drop-down-list toggle button provides the following search criteria:

* Search all (default)
* ID
* Name
* Alternate text
* Caption
* Category
* Extension (i.e. 'gif', 'png', etc.)
* Author
* Thumbnail

## List of existing images

Beneath the upload and search area there is the table, or list, of existing images. Each row is one image.

To explain the *columns* going across the top: If you click the header of a column (except 'Tags'), it will sort the list of articles according to that column. Click again to reverse sort direction.

The default view shows these columns:

**ID:** an ID number is automatically assigned to each image. This
is what identifies it and calls it on the live site. Right from the ID\#
two links reside: *Edit* â€“ click this (or the name of the image) to
edit the images properties. *View* â€“ click this to view the image in
the browser window.

**Date:** the date, when the image record has been created (normally
when the image has been uploaded).

**Name:** the filename of the image. Click this to edit the images
properties.

**Thumbnail:** shows a thumbnail of the image, if any exists. (So for a
better overview in this table it is recommended to always generate a
thumbnail.)

**Tags:** here you have a choice of *three ways* to include the image
in your articles or forms:

-   as a textile(d) text
-   as a textpattern image-tag
-   as plain HTML

Each link will open a pop-up-window with a tag-builder. You can choose
the elements you need and an appropriate tag in Textile, Textpattern or
HTML will be created. This tag you can copy and place where needed.

The tag builder has several options:

**Escape HTML:** Escape any HTML entities encountered in the form
(clarification needed).

**Id HTML attribute:** Example:

    gallery1

. The ID you'd like to assign to the image. In HTML / XHTML this is
rendered as id=“my_id” inside the img tag.

**CSS class:** Example:

    gallery

. The CSS class to assign to the image tag when it is rendered in HTML /
XHTML.

**Inline style (CSS)**: Example:

    border: 1px solid black

. The inline CSS style(s) (separated by semicolons) you'd like to assign
to the image. These styles are placed inside a style tag in the final
HTML / XHTML.

**Wrap tag**: Example

    p

. Tells Textpattern to surround the image with this HTML / XHTML tag
when rendered. Output would be

    <p><img src="etc" /></p>

...in this case.

Returning to the Images table:

**Category** â€“ if the image was assigned a category, then it will
reflect that here.

**Author** - the author who created the images record.

#### Perform changes on selected images {#perform_changes_on_selected_images}

On the right side you will find a checkbox for each image. Here you can
select images you want to change in a jointly manner. You can mark
images by ckecking the checkbox or you can use select-buttons at the
bottom of the list: “All”, “None” or “Range”. If you want to select a
range you simply mark the checkbox of both the first and the last image
in the range and then click “Range”. The images between will then
automatically be checked too.

For performing changes now you go to the drop-down-list “with selected”
and choose the function you want to perform. The following changes are
available:

* Change Category
* Delete

When selecting the “Change Category”-option you will get another
drop-down-list below which will give you the list of categories to
choose from.

After selecting the options you want to perform click “Go” to start the
changes. A pop-up window will ask “Are you sure?” and then (if “yes”)
the changes will be performed.

## Pages and images listed per page

At the very bottom of the list you will find a pagination and links for next and previous pages if there are more pages. You can also change the number of images listed per page by selecting another value from the number range.

[Next: Files panel](http://docs.textpattern.io/administration/files-panel)
