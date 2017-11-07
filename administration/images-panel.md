---
layout: document
category: Administration
published: true
title: Images panel
description: The Images panel lets you manage everything you need to include images (and galleries) in your content.
---

# Images panel

The Images panel lets you manage everything you need to include images (and galleries) in your content. From this panel you can upload images, create thumbnails, add captions (and alternate text), build groups of images (using categories) and generate tags to place images in your article content or [Form templates](https://docs.textpattern.io/themes/form-templates-explained).

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
* [Image tag builder](#image-tag-builder)

Of course you could upload images (using FTP) and place image tags (using HTML) directly. But then you'd have to provide elements like captions separately for every place you use an image. The images tools of Textpattern provide a way of managing image-related info *in a central place*. If you have to change a caption or for example need to replace an image (e.g. a sharper one or another view) you can do these changes once at a central place and the changes will automatically take effect wherever you placed the image using Textpattern tags.

On this panel you can do three things:

1. Upload images
2. Edit image-related information (create a thumbnail, add caption and alternate text, categorize, etc.)
3. List and manage your existing images

So the Images panel in a way combines what for articles is divided in two panels 'Write' and 'Articles'.

## Upload images

The first tool at the top of the panel is the *upload* area. Labeled 'Upload image' you will find a field for entering a path to the image. On its right side there is a 'Browse...'-button which (as well as clicking on the field itself) will open a pop-up-window containing your file manager's tools to locate an image file for upload.

When you have marked an image and put its path into the upload field by clicking 'open' (or 'OK'), you can start uploading by clicking 'Upload'.

The image will be uploaded to the images folder of Textpattern (but remember the file size limitations). A reference will automatically be saved in the database and the image editing panel will be opened. Here you can enter additional information (see below) regarding the image. To save those informations and return to the Images panel click 'Save'.

**Technical note:** In the images folder all uploaded images will have only a number as name. The number equals the unique Textpattern ID number of the image - extended by `t` for a thumbnail. The original name is kept in the images properties.

## Editing images

### Image details

The image details panel shows the unique ID number of the image. In addition these pieces of information can be edited and saved in an image record:

**Image name:** here by default the images *filename* will be entered automatically. If you'd like to rename the image you can do so here.

**Category:** a category for the image. [Categories](https://docs.textpattern.io/administration/categories-panel) are used to generate lists of images and galleries.

**Alternate text:** text which will replace the image when it's broken or images will not be downloaded. Very important for SEO, web standards and accessibility.

**Caption:** any text to make a good caption for the image.

After editing, you have to **Save** your edits.

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

Text entered in the textarea will be treated as a complete phrase (see the [Articles panel](https://docs.textpattern.io/administration/articles-panel) documentation for full details on this).

After entering your search criteria you start searching by clicking the search button. As a result you will be given a new list of images which meet the criteria.

As a default the search will find matches for all criteria. But you can do more refined searches by selecting another area to search in via the drop-down-list toggle button.

## List of existing images

Beneath the upload and search area there is the table, or list, of existing images. Each row is one image.

### Columns

The default view shows these columns:

**ID:** an ID number is automatically assigned to each image. This is what identifies it and calls it on the live site. Click this ID to edit the image properties.

**Name:** the filename of the image. Click this to edit the images properties.

**Thumbnail:** shows a thumbnail of the image, if any exists (for a better visual overview in this table it is recommended to always generate a thumbnail).

**Category:** if the image was assigned a category, then it will reflect that here.

**Author:** the author who created the image record (only if more than one author exists in the [Users panel](https://docs.textpattern.io/administration/users-panel)).

At the top of the list there is an option 'Show detail'. When marked additional columns (and additional info) will be presented:

In the ID column, a link will be added for each image: **View:** click this to view the actual image in a new browser window.

**Date:** the date when the image record was created (normally when the image was initially uploaded).

**Tags:** here you have a choice of *three ways* to include the image in your article content or Form templates:

1. as a Textile(d) text
2. as a Textpattern image tag
3. as plain HTML

Each link will open a pop-up window with a 'tag builder' ([see below](#image-tag-builder) for further details). You can choose the elements you need and an appropriate tag in Textile, Textpattern or HTML will be created. This tag you can copy and place where needed.

### Perform changes on selected images

In the first column you will find a checkbox for each image. Here you can select images you want to change in a bulk manner. You can mark images by checking the checkbox or you can use the checkbox in the head bar of the list to mark all images on that page.

For performing changes now you go to the drop-down list 'With selected...' and choose the function you want to perform. After selecting the options you want to perform click 'Go' to start the changes.

## Pages and images listed per page

At the very bottom of the list you will find a pagination and links for next and previous pages if there are more pages. You can also change the number of images listed per page by selecting another value from the number range.

## Image tag builder

The image tag builder has several options:

**Escape HTML:** escape any HTML entities encountered in the form.

**HTML id attribute:** for example `gallery1`. The `id` attribute you'd like to assign to the image. In HTML this is rendered as `id="my_id"` inside the `<img>` tag.

**CSS class:** for example `gallery`. The CSS class to assign to the image. In HTML this is rendered as `class="my_class"` inside the `<img>` tag.

**Inline (CSS) style**: For example: `border: 1px solid black;`. The inline CSS style(s) (separated by semicolons) you'd like to assign to the image. These styles are placed inside a style attribute in the final HTML.

**Wrap tag**: For example `p`. Tells Textpattern to surround the image with this HTML tag when rendered. Output would be `<p><img src="etc" /></p>` in this example.

[Next: Files panel](https://docs.textpattern.io/administration/files-panel)
