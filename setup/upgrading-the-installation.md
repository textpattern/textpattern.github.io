---
layout: document
category: Setup and Configuration
published: true
title: Upgrading the installation
description: A complete guide to updating a previously installed version of Textpattern.
---

# Upgrading Textpattern

Upgrading is an essential part of maintaining good site security, and new Textpattern releases often bring performance & functionality enhancements. Whenever a new version of Textpattern is released, upgrade!

You will find abbreviated upgrade instructions in the `README.txt` file of every Textpattern release package. The instructions here are more detailed. In brief, you'll backup your current installation, overwrite your existing installation with new package files (with a few key exceptions), and address any problems indicated in the Diagnostics panel.

These instructions follow a process of using an (S)FTP application, which you presumably have (for example [Transmit](https://www.panic.com/transmit/) is a popular choice for Mac, [WinSCP](https://winscp.net/eng/index.php/) for Windows, or [FileZilla](https://filezilla-project.org/) for all platforms).

Before you begin, ensure your web server meets the [Textpattern system requirements](https://textpattern.com/about/system-requirements) for the version you are installing.

## Upgrading from very old versions

Due to the nature of Textpattern's evolution, upgrading a Textpattern instance older than version 4.2.0 (released 17 September 2009) requires a two-stage upgrade process to avoid loss of functionality and availability issues. Upgrade to version 4.2.0 first, ensuring all admin functionality is working as expected, and then upgrade to the latest stable release.

## Download latest stable release

Go to [textpattern.com/download](https://textpattern.com/download) and download the archive of the latest version to your local machine. Unpack the package into a directory on your local drive.

## Backup

As with any system upgrade, you'll want to be sure you can fall back on your existing install should there ever be a problem; thus, you should back up your server files and create a database dump file (`.sql`) before upgrading.

### Duplicate the existing Textpattern file tree

You must make a copy of your `config.php` file as a minimum.

Make a copy of the current filesystem (directories and files of the Textpattern installation). The easiest way to do this is to log onto the server using an (S)FTP client, and copy or download the existing system file tree into a new directory. Once copied, upload the new Textpattern package and then copy your `config.php` file from your backup **prior** to logging back in to Textpattern.

### Create a database dump file (an .sql export)

Log in to the `phpMyAdmin` database panel for your site (different web hosts have different access routes), and then follow these steps:

1. Select the database running the current Textpattern site.
2. In the resulting main content area, select **'Export'**.
3. Accept the defaults as they already are, just make sure you tick the **'Save as file'** box.
4. Select the **'Go'** button.

The .sql dump file will most likely be saved to your local computer. You could optionally copy the file into the backup folder you just created to keep everything together.

You now have a full backup of your files and database. If things don't work out during the upgrade process, you can simply replace the server files and, if necessary, re-import the old database dump file in phpMyAdmin again (using 'Import' instead of 'Export'). If you do have problems, you might consider running a development (sister) site of your main site and try upgrading there first.

## Install the new Textpattern files

It is strongly advised to log out of the Textpattern admin interface and clear the browser cache before upgrading. If you use a service such as [Cloudflare](https://www.cloudflare.com) to cache your domain assets, remember to clear any caching services there too.

Using your (S)FTP client, navigate to your textpattern root directory and upload the mandatory files and directories indicated in the tree below. Do not move files in the tree or change their names. Doing so will render Textpattern useless.

* {:.directory--open} /
  * {:.directory} textpattern
  * {:.directory} themes
  * {:.document} css.php
  * {:.document} index.php
{:.list--files}

Note that you can omit the 'textpattern/setup' directory entirely when uploading. If you upload it, please remember to delete it if your Diagnostics panel indicates it is still present after logging back in.

The following directories must be uploaded _if they do not already exist on your server_. If they do, you can leave them as they are.

* {:.directory--open} /
  * {:.directory} files
  * {:.directory} images
  * {:.directory} themes
  * {:.directory} textpattern/plugins
{:.list--files}

The following files and directories are optional depending on whether you use the features or not. Pay particular attention to the `.htaccess`[^1] file if you intend to install Textpattern to an Apache web server. You may omit this file if not.

* {:.directory--open} /
  * {:.document} .htaccess
  * {:.directory} rpc
  * {:.directory} sites
{:.list--files}

All other files in the package are considered optional, and are provided for information only.

[^1]: This type of file is a 'hidden' file, meaning it won't appear in certain file managers unless the file manager is configured to show them. For example, if you undertake local development on macOS, this file won't appear in Finder unless you turn hidden file functionality on. The same goes for certain (S)FTP clients, which typically hide these files until you change settings to show them.

### File system notes

files
: Empty by default. It's where content files (`.pdf`, `.docx`, `.rtf`, `.epub`, `.txt`, etc.) will go when/if you upload them in the Files panel. You may see a warning about the directory's `chmod` status (editing rights) at the top of the Diagnostics or Files panels if the web server does not have sufficient write permissions.

images
: Empty by default. It's where images will go when you upload them in the Images panel. You may see a warning about the directory's `chmod` status (editing rights) at the top of the Diagnostics or Images panels if the web server does not have sufficient write permissions.

rpc
: Contains the XML-RPC functionality, which is legacy code from when ping-packs and such were popular with bloggers. If you don't use it, you can remove it, but make sure the 'Enable XML-RPC server?' preference is set to 'No' in the Preferences panel.

sites
: Supports multi-site installations managed by one set of core files. It contains a template and instructions (`README.txt`) for doing so. You can safely remove this directory if you're not using this functionality.

textpattern
: Contains all the core scripting and functionality. Also where users log into the back-end to administer the site.

textpattern/plugins
: Contains plugin files that have been installed. You may see a warning about the directory's `chmod` status (editing rights) at the top of the Diagnostics or Plugins panels if the web server does not have sufficient write permissions.

textpattern/setup
: Contains installation files. These are *not* required for upgrades and should be omitted from the upload. Textpattern's Diagnostics panel will warn you if the directory still exists, so you may remove it by hand.

themes
: Empty by default. It's where themes will go if you choose to export them to disk from the Themes panel as a backup or for sharing them with others. Each theme has its own subdirectory inside. Note that you may see a warning about the directory's `chmod` status (permissions) at the top of the Diagnostics or Themes panels if the web server does not have sufficient write permissions.

.htaccess
: Important for handling many things on Apache web servers, like default URL formatting, 301 redirects, specific use (or not) of `www.`, and so forth. You can add to the file, but you should not alter or remove the default content, which Textpattern relies on. `.htaccess` can be safely removed if you run Textpattern a non-Apache web server, e.g. [Nginx](/setup/configuring-a-web-server-for-textpattern).

css.php
: Negotiates the front-end stylesheets you create in the Styles panel. If you plan on hosting your CSS as flat files then this can be removed - if you store CSS in the database then this file is required.

index.php
: Functions as the front end of your Textpattern site. It's where web users arrive and interact with the dynamic publishing.

Ensure your existing `config.php` file is still inside your `textpattern` folder on the server, and copy it back there if not. This rarely changes between releases; if any changes are required or options become available, they will be documented in the *README.txt* file.

Note that some operating systems (such as macOS) do not always merge the contents of directories when they are overwritten: they delete the entire directory contents first and then copy the new files in. There are ways to merge duing a file copy, and instructions for doing so vary from version to version and OS to OS, but the simplest solution is to ensure you have taken a backup copy first.

If you are running an Apache web server and wish to prohibit direct access to your downloadable files (i.e. by someone manually entering `http://site.com/files/name_of_file`) you may rename the `/files/.htaccess-dist` file to `/files/.htaccess`.

For better security, however, we recommend moving the entire folder and its contents **outside** your web-accessible root folder. Once you have relocated it, you can inform Textpattern of its location via the 'File directory path' Preference when you log back into the administration side. The same advice stands for the `tmp` directory.

## Update

Open a web browser and visit the administration-side location (usually `example.org/textpattern`). Log in. That's it! Easy, huh? There are no update scripts to run or anything else; by simply going to the normal administration-side location, Textpattern will recognize the need to update and do so automatically.

## Fine-tune

After Textpattern updates, you should visit the Diagnostics panel and troubleshoot any noted issues.

Some notices are not always problems, *per se*, but may only appear to indicate some difference in the system since your upgrade. When in doubt about an error message, first check the Diagnostics panel to see if it's documented, if that doesn't help, ask in the ['How?' forum](https://forum.textpattern.com/).

## Remove unnecessary files

After installing or upgrading Textpattern, you only need to delete the `setup` folder (`/textpattern/setup`). This folder and its contained files are not used once Textpattern is installed. Textpattern will try to remove it as part of the upgrade procedure. If it cannot do so, you'll see a diagnostic warning reminding you to do it.

The `setup` folder is only used for **new** installations, not upgrades, thus it's technically not necessary to add this folder from the latest, stable package. However, don't go out of your way to be clinical, simply upgrade using the full package and then delete the folder afterwards - it's easier.

## Debugging check

This step is highly recommended, but optional. It is best to do this on a development server to avoid showing your users error messages.

Change your site's 'Production status' in the Preferences panel to 'Debugging'. Go through the live site (every page, if possible), looking for error messages. Any such messages will be clearly visible at the top of the page. The upgrade may result in notices or errors relating to deprecated tags or attributes (these should be easy to correct).

If you do need to update tag or attribute names, the [smd_where_used plugin](https://forum.textpattern.com/viewtopic.php?id=27493) is a great help for quickly finding all instances of a given tag or attribute.

Remember to switch your production status back to 'Live' as soon as possible after testing. Not only will your site run faster, you will not leak any debugging database statistics in the site code.

Congratulations! You have upgraded Textpattern.

## Explore the bleeding edge development

For advanced users only!

The latest, **potentially unstable**, bleeding-edge code is available at [the GitHub repository](https://github.com/textpattern/textpattern).

If you're thinking about testing this code, then we shouldn't have to tell you what [git](https://git-scm.com) is or how to use it. If you don't know, then you don't really want to be messing about here!

