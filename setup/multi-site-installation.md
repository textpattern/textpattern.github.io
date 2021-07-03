---
layout: document
category: Setup and Configuration
published: true
title: Multi-site installation guide
description: Installing Textpattern CMS as a multi-site installation.
---

# Multi-site installation guide

A multi-site installation allows you to use a single Textpattern CMS installation to run multiple websites. Each site has its own website design and separate admin login, but you have only one copy of Textpattern to maintain and update.

On this page:

* [Why use a multi-site installation?](#why-use-a-multi-site-installation)
* [Additional system requirements](#additional-system-requirements)
* [Installing Textpattern](#installing-textpattern)
* [Setup and configuration of each site](#setup-and-configuration-of-each-site)
  * [Repairing symlinks](#repairing-symlinks)
* [The multi-site folder structure](#the-multi-site-folder-structure)
* [Alternative multi-site scenarios](#alternative-multi-site-scenarios)
  * [Separate sites and Textpattern directories](#separate-sites-and-textpattern-directories)
  * [Working with several versions of Textpattern](#working-with-several-versions-of-textpattern)
  * [Alternative theme setups](#alternative-theme-setups)

## Why use a multi-site installation?

A multi-site installation can be suitable if:

* You have multiple websites/domains hosted on the same server and want to update them all easily and efficiently.
* You want to keep your admin area separate from your public site and all config infos private. This is also suitable for single sites.
* You want to use a custom login address for the admin area.
* You work with theme templates as files and want to keep your templates and assets for each site separate from the Textpattern installation, for example to manage your sites as separate repositories using a versioning system (see [Alternative multi-site scenarios](#alternative-multi-site-scenarios)).
* You run multiple sites with different versions of Textpattern, or experiment with several versions of Textpattern (see [Alternative multi-site scenarios](#alternative-multi-site-scenarios)).

If none of the above apply, follow the instructions for installing a regular [Textpattern installation](/installation/).

## Additional system requirements

In addition to the regular [Textpattern CMS system requirements](https://textpattern.com/about/119/system-requirements), your web host must support:

- **the creation of subdomains**, e.g. `www.example.com` and `admin.example.com` and point them to directories. Most web hosts provide a means of managing domains and subdomains through their control panel. For self-managed hosts that offer root access, you can create your own virtual hosts (see @@creating virtual hosts@@).
- **symbolic links** (soft links). Symbolic links, also called symlinks, cannot be transferred via FTP, however even if your host doesn't provide an SSH connection, the multi-site installer will attempt to (re)create the symbolic links. If this fails, you may still be able to create the symlinks manually via your host's control panel. Consult your host as necessary.

## Installing Textpattern

1. Ensure your web server meets the above [system requirements](#extra-system-requirements).
2. [Download](https://textpattern.com/download) the latest `.zip` or `.tar.gz` archive.
3. Unpack the downloaded archive file in a directory on your local drive.
4. Open an SSH connection to your server and transfer the unpacked file tree to the web root on your webserver (see [Transferring files via SSH](#)). If your host does not permit SSH access, upload the files via (S)FTP. Don't worry if you receive an error that the symlinks could not be transferred; the multi-site installer will (re)create these later.

These instructions only need to be followed once, or when updating Textpattern at a later date. Use the following instructions for each site in your multi-site installation.

## Setup and configuration of each site

Follow these instructions for each new site in your multi-site installation:

1. Go into the `sites` directory and duplicate the entire `site1` directory. Rename the copy to match your site, e.g. `mydomain` (avoid spaces or special characters).
2. Create a new MySQL database as per your web host's instructions and note its associated username and password credentials. If you are using a single MySQL database for several sites, choose an unused prefix for this site.
3. In your web host's control panel, setup a subdomain `www.example.com` and set its document root to the `/sites/mydomain/public/` directory. If you prefer, you can use another subdomain instead of www, e.g. `dev`, `beta`, `v2`, etc. This will be the URL your website visitors will use.
4. In your web host's control panel, setup the subdomain `admin.example.com` and set its document root to the `/sites/mydomain/admin/` directory. If you prefer, you can use another subdomain instead of admin, e.g. `edit`, `login`, `manage`, etc. This will be the URL your website content managers or editors will use and replaces the regular */textpattern* login address.
5. Open a web browser and go to `admin.example.com/setup/`. If you chose another subdomain in step 4, enter that manually in place of *admin* in the web address.
6. Follow the instructions in the web browser. The setup routine follows the same procedure as a [regular Textpattern installation](/installation/#setup-and-configuration) but asks for two pieces of additional information:
  * **Admin subdomain**: This should be the subdomain you chose above in step 4, e.g. `admin.example.com`.
  * **Cookie domain**: This is usually the main domain name, e.g. `example.com`.
  * Reminder: If you chose a database prefix and are using one database for several Textpattern installations, remember to enter it during configuration.
  * On Stage 3 of the configuration, enter the URL of your site, which is the subdomain you chose above in step 3, e.g. `www.example.com`.

### Repairing symlinks

If the symlinks were not successfully transferred in step 4 of [Installing Textpattern](#installing-textpattern) above – or if you moved the location of the `sites` directory – you will be asked to specify the path to your Textpattern installation's *root directory* before you can proceed.

The *root directory* contains `index.php`, `css.php` and the `images`, `files` and a second `textpattern` directory, among others. Check the location of this directory and enter the path to the directory where asked. In a standard setup, you can use the first part of the path to the `sites` directory leaving off `/sites` at the end. If you moved your sites directory to another location (see [Alternative multi-site scenarios](#alternative-multi-site-scenarios)), you will need to determine the location of the Textpattern root directory yourself.

The multi-site installer will then create the missing symlinks and you should be able to proceed with Step 6 above and follow the regular setup and configuration routine.

If the installer is still unable to create the necessary symlinks, you may need to create your symlinks manually. The installer will display the necessary commands. If you don't have command line access, make a note of these instructions and see if your web host provides a facility to create symlinks manually (sometimes found in the control panel's website file browser). Use the details provided to create the symlinks according to your host's instructions. If this is not possible, your web host may not support the [additional system requirements](#additional-system-requirements) in your current hosting plan.

## The multi-site folder structure

Each site comprises three folders:

~~~
mydomain/
    admin/
    private/
    public/
~~~

Place all the files you need for your site in these three folders and leave the corresponding folders in the textpattern directories untouched.

* **admin**: Store site-specific admin-themes or non-standard plugins (e.g. if loading plugins from files using ied_plugin_composer) in this folder.
* **private**: This folder is not accessible from the web and contains only `config.php` as standard. You can use this folder for items that should stay out of sight, such as database backup files, custom site templates (e.g. using flat-file plugins), source files that are compiled and internal setup notes.
* **public**: This folder is accessible from the front end. Use it for your site's file uploads, image uploads and themes. Place all your relevant site assets in this folder, such as css and javascript files, logo/ui assets and web/icon fonts.


## Alternative multi-site scenarios

Multi-site installations can be useful for a range of different scenarios:

### Separate sites and textpattern directories

In the standard Textpattern file tree, the `sites` directory and the individual website directories are located inside the base Textpattern installation.

If you want to manage the files for each of your websites separately, for example as individual repositories using a versioning system such as git or svn, you may prefer to relocate your `sites` folder outside the `textpattern` directory.

1. Simply move (or copy) the entire `/sites` directory so that it is next to the root directory.
2. When you set up a new site, the installer will ask you to enter the path to your Textpattern root directory as described above and recreate the correct symlinks.

It's advisable to make this decision before you start creating multiple sites. Your directory tree should look like this:

~~~
sites/
    mydomain/
        admin/
        private/
        public/
    yourdomain/
        admin/
        private/
        public/
    otherdomain/
        admin/
        private/
        public/
textpattern/
~~~

### Working with several versions of Textpattern

In some circumstances, you may find you need to run several versions of Textpattern concurrently. Perhaps you cannot update all your sites at once because you are waiting for a plugin compatibility update for one site, or perhaps you are developing a site update as a beta version using a newer version of Textpattern.

In such cases, you can extend the principle of the previous example ([separate sites and textpattern directories](#separate-sites-and-textpattern-directories)) and install a second version of Textpattern alongside your main installation.

1. Download the installer package or repository for the desired version of Textpattern to your computer.
2. Upload it to your web server in a separate directory next to your existing Textpattern installation using SSH or FTP, as described above.
3. Give the directory a suitable name, e.g. `textpattern_v462`.

You only need to do this once. Now you can connect the sites you need to the respective version of Textpattern via symlinks.

To reconnect the symlinks of a multi-site to a different textpattern directory, either reset your symlinks manually via the command line (or via your web host's control panel) so that they point to the new directory, or do the following:

* Copy the `setup` folder from your Textpattern `sites/site1/admin/setup` directory into your respective site's `mydomain/admin` directory.
* In the `mydomain/admin` directory, delete the `vendors` symlink.
* Open a web browser and go to `admin.example.com/setup/`.
* The installer will tell you it cannot find Textpattern and ask you to specify your *Textpattern root directory*. Enter the path to the (new) version of Textpattern you want and click 'Proceed'. The installer will recreate the correct symlinks and your site will be linked to the respective version of Textpattern.
* Abort the installation process at this point and delete the `admin/setup` directory.
* Visit your site to update your site to the other version of Textpattern.

Your directory tree might look like this:

~~~
sites/
    mydomain/
        admin/
        private/
        public/
    yourdomain/
        admin/
        private/
        public/
    otherdomain/
        admin/
        private/
        public/
textpattern_v470/
textpattern_v462/
~~~

### Alternative theme setups

In the standard multi-site setup there is a `themes` folder in the `public` directory. This allows you to have separate themes for separate sites. The themes folder in the `textpattern` directory is unused.

If you wish to have a central store of all your themes, you can replace the `themes` *folder* in the `public` directory(ies) of your respective sites with a manually created *symlink* to the `themes` folder in the central Textpattern installation. You should then place all your themes in the `themes` folder of your Textpattern *root directory*.

**Note:** With this setup, any changes you make to a theme in a site and then export back to disk will be saved centrally, overwriting the theme for all other sites. Changes to other sites will, however, only come into effect once you reimport that theme in the other sites.

Other theme setups are also possible, for example, a hybrid setup with 'base themes' stored centrally in the Textpattern root directory and site-specific variants in each `/public/themes` directory. For this you need to manually create symlinks from within the site's `/public/themes` directory to your respective 'base theme' folder in the Textpattern root directory.

All of the above can also be applied to admin themes in the `admin` directory.
