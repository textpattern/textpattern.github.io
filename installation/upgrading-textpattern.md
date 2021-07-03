---
layout: document
category: Installation
published: true
title: Upgrading Textpattern
description: Upgrading is an essential part of maintaining good site security. Whenever a new version of Textpattern is released, upgrade!
---

# Upgrading Textpattern

Upgrading is an essential part of maintaining good site security and new Textpattern releases often bring performance & functionality enhancements. Whenever a new version of Textpattern is released, upgrade!

On this page:

* [Upgrading from very old versions](#upgrading-from-very-old-versions)
* [Download latest stable release](#download-latest-stable-release)
* [Backup](#backup)
* [Install the new Textpattern files](#install-the-new-textpattern-files)
* [Update](#update)
* [Fine-tune](#fine-tune)
* [Remove unnecessary files](#remove-unnecessary-files)
* [Debugging check](#debugging-check)
* [Explore the bleeding edge development](#explore-the-bleeding-edge-development)

You may find abbreviated upgrade instructions in the `README.txt` file of every Textpattern release package. The instructions here are more detailed. In brief, you'll backup your current installation, overwrite your existing installation with new package files (with a few key exceptions), update your language preference(s), and address any problems indicated in the [Diagnostics](/administration/diagnostics-panel) panel.

## Upgrading from very old versions

Due to the nature of Textpattern's evolution, upgrading a Textpattern instance older than version 4.2.0 (released 17 September 2009) requires a two-stage upgrade process to avoid loss of functionality and availability issues. Upgrade to version 4.2.0 first, ensuring all admin functionality is working as expected, and then upgrade to the latest stable release.

## Download latest stable release

Go to [textpattern.com/download](https://textpattern.com/download) and download the archive of the latest version to your local machine. Unpack the package into a folder on your local drive. Give the folder a meaningful name like `textpattern-4.8.0`, for example.

## Backup

As with any system upgrade, you'll want to be sure you can fall back on your existing install should there ever be a problem; thus, you should back up your server files and create a database dump file (`.sql`) before upgrading.

### Duplicate the existing Textpattern file tree

You must make a copy of your `config.php` file as a minimum.

Make a copy of the current system (folders and files of the Textpattern installation). The easiest way to do this is to log onto the server using FTP or SFTP, create a new folder called `txp-current`, for example, and copy the existing system file tree into this new folder (leave the file tree structure the same). Alternatively, simply duplicate your existing Textpattern dir and name it `Textpattern_OLD`. Upload the new Textpattern dir and then copy your `config.php` file from the `Textpattern_OLD` **prior** to running the update.

### Create a database dump file (an .sql export)

Log in to the `phpMyAdmin` database panel for your site (different web hosts have different access routes), and then follow these steps:

1. Select the database running the current Textpattern site.
2. In the resulting main content area, select **'Export'** at the top of the screen.
3. You should be able to use the defaults as they already are, just make sure you tick the **'Save as file'** box at the bottom of the screen.
4. Select the **'Go'** button.

The .sql dump file will mostly likely be saved to your desktop. Using FTP/SFTP again, you could optionally copy the file into the backup folder you just created to keep everything together.

You now have a full backup of your files and database. If things don't work out in the upgrade process, you can simply replace the server files and, if necessary, re-import the old database dump file in phpMyAdmin again (using 'Import' instead of 'Export'). If you do have problems, you might consider running a development (sister) site of your main site and try upgrading there first.

## Install the new Textpattern files

It is strongly advised to log out of the Textpattern admin interface and clear the browser cache before upgrading. If you use a service such as [Cloudflare](https://www.cloudflare.com) to cache your domain assets, remember to clear any caching services there too.

Using FTP/SFTP again, navigate to the folder you created in **Step 1** and copy the following files from there to your server, overwriting any previous files:

* Copy the files `.htaccess`, `css.php`, and `index.php` (the `README.txt`, `HISTORY.txt` and `LICENSE` files are optional).
* Copy any folders you are using, for example `rpc` and `sites`. You do not usually need to copy `files` and `images` unless otherwise directed because you will already have done so when installing a prior release.
* Copy the (empty) `themes` folder if you do not have one already. If you do, you can omit this step.
* Copy the contents of the `textpattern` folder to the server's `textpattern` folder. You should exclude the `setup` directory, since it is only used for first-time installations. The [Diagnostics panel](/administration/diagnostics-panel) will inform you if the `setup` directory is still available, and whether you have uploaded all files completely.

It is important that you make sure all three `index.php`, `css.php` and `.htaccess` files transfer over. This shouldn't be a problem, but sometimes in the case of the `.htaccess` file it does not show up in certain FTP clients (it's usually there but just not visible). In the case of the `.htaccess` file or `/lib/admin_config.php`, if you had any customizations (such as `mod_rewrite` changes or custom permissions), be sure to add them back so you don't lose that functionality. When in doubt, compare your backed-up copy of the file against the new one.

Ensure your existing `config.php` file is still inside your `textpattern` folder on the server. This rarely changes between releases; if any changes are required or options become available they are documented in the `README.txt` file.

Note that some operating systems (such as macOS) do not always merge the contents of directories when they are overwritten: they delete the entire directory contents first and then copy the new files in. There are ways to merge duing a file copy, and instructions for doing so vary from version to version and OS to OS, but the simplest solution is to ensure you have taken a backup copy first.

If you are running an Apache web server and wish to prohibit direct access to your downloadable files (i.e. by someone manually entering `http://site.com/files/name_of_file`) you may rename the `/files/.htaccess-dist` file to `/files/.htaccess`.

For better security, however, we recommend moving the entire folder and its contents **outside** your web-accessible root folder. Once you have relocated it, you can inform Textpattern of its location via the 'File directory path' Preference when you log back into the administration side. The same advice stands for the `tmp` directory.

## Update

Open a web browser and visit the administration-side location (usually `example.org/textpattern`). Log in. That's it! Easy, huh? There are no update scripts to run or anything else; by simply going to the normal administration-side location, Textpattern will recognize the need to update and do so automatically.

## Fine-tune

When Textpattern updates, you will be taken by default to the [Languages panel](/administration/languages-panel). Once there, update your chosen language files as necessary (highlighted). Then go to the [Diagnostics panel](/administration/diagnostics-panel) and troubleshoot any noted issues.

Some notices are not always problems, *per se*, but may only appear to indicate some difference in the system since your upgrade. When in doubt about an error message, first check the [Diagnostics panel](/administration/diagnostics-panel) to see if it's documented, if that doesn't help, ask in the ['How do I…? and other questions' forum](https://forum.textpattern.com/).

## Remove unnecessary files

After installing or upgrading Textpattern, you only need to delete the `setup` folder (`/textpattern/setup`). This folder and its contained files are not used once Textpattern is installed. If you do not do this before checking the [Diagnostics panel](/administration/diagnostics-panel) in **Step 5**, you'll see a diagnostic warning reminding you to do it (the error will disappear when the folder is removed).

The `setup` folder is only used for **new** installations, not upgrades, thus it's technically not necessary to add this folder from the latest, stable package. However, don't go out of your way to be clinical, simply upgrade using the full package and then delete the folder afterwards - it's easier all-around.

## Debugging check

This step is highly recommended, but optional. It is best to do this on a development server to avoid showing your users error messages.

Change your site's 'Production status' in the [Preferences panel](/administration/preferences-panel) to 'debugging'. Go through the live site (every page, if possible), looking for error messages. Any such messages will be clearly visible at the top of the page. The upgrade may result in notices or errors relating to deprecated tags or attributes (these should be easy to correct).

If you do need to update tag or attribute names, the [smd_where_used plugin](https://forum.textpattern.com/viewtopic.php?id=27493) is a great help for quickly finding all instances of a given tag or attribute.

## Explore the bleeding edge development

For advanced users only!

The latest, **potentially unstable**, bleeding-edge code is available at [the GitHub repository](https://github.com/textpattern/textpattern).

If you're thinking about testing this code, then we shouldn't have to tell you what [git](https://git-scm.com) is or how to use it. If you don't know, then you don't really want to be messing about here!
