---
layout: document
category: Installation
published: false
title: Complete installation and update instructions
description: From download to first log in: a complete guide to installing or updating Textpattern.
---

# Complete installation and update instructions

Whether you are new or experienced with Textpattern, this is your go-to page for installing or upgrading your Textpattern installation.

**On this page**:

* Table of contents
{:toc}

# Quick installation guide

If you are comfortable with SFTP, file and database administration on server environments, then this section is for you.

## Installing the software for the first time

1. Ensure your web server meets the [Textpattern system requirements](https://textpattern.com/about/119/system-requirements) for the version you intend to download.
2. [Download](https://textpattern.com/download) the latest `.zip` or `.tar.gz` archive.
3. Unpack [the file tree contents](https://github.com/textpattern/textpattern) from the downloaded package into a new directory on your local drive.
4. Connect to your destination server using an (S)FTP client or the command line and upload the unpacked file tree to your web root, a subdomain or subdirectory. This destination directory should contain `css.php`, `index.php`, plus the `files`, `images`, `themes` and `textpattern` directories as a minimum. The `.htaccess` file is required if your web server is Apache httpd or a derivative. The `sites` subdirectory is only required for optional multi-site functionality, and the `rpc` directory is only required for optional XML-RPC functionality. `README.txt` and `HISTORY.txt` are optional.
5. Establish a known-good MySQL database, either for exclusive Textpattern use or shared, and note its associated username and password credentials.
6. Open a web browser and visit `example.com/textpattern/setup/index.php` to start the setup process. If you're running Textpattern from a subdomain or subdirectory, use `subdomain.example.com/textpattern/setup/index.php` or `example.com/subdirectory/textpattern/setup/index.php` as appropriate.
7. Follow the installation steps provided on-screen.

If you require more information, please refer to the [Step-by-step installation instructions](#TODO-install).

## Upgrading to the newest stable release

In the root directory of every Textpattern archive is a `README.txt` file with upgrading instructions relevant to that release.

1. Ensure your web server meets the [Textpattern system requirements](https://textpattern.com/about/119/system-requirements) for the version you are downloading.
2. [Download](https://textpattern.com/download) the latest `.zip` or `.tar.gz` archive.
3. Unpack [the file tree contents](https://github.com/textpattern/textpattern) from the downloaded package into a new directory on your local drive.
4. Log out of the Textpattern back-end and clear the browser cache for your existing Textpattern site. If you use a service such as [Cloudflare](https://www.cloudflare.com) to cache your domain assets, remember to clear any caching services there too.
5. Verify the existence of a working database and file backup of your existing Textpattern site. You may find it useful to copy your existing, known-good `textpattern/config.php` file to an easily accessible location on your local drive, as it may be required shortly.
6. Connect to your destination server using an (S)FTP client or the command line and upload the following files to your web root:
6.1 The new `css.php` and `index.php` files, overwriting the existing files.
6.2 The new `textpattern` directory, overwriting the existing directory.
6.3 If you do not have a `themes` directory, copy that too, otherwise leave it as-is.
6.4 The new `.htaccess` file is required if your web server is Apache httpd or a derivative and has an existing file. Remember, if you have customised it, you will need to reapply your changes.
6.5 The new `sites` subdirectory is only required if optional multi-site functionality is enabled.
6.6 The new `rpc` directory is only required if optional XML-RPC functionality is enabled.
7. Copy your known-good `textpattern/config.php` into the `textpattern` directory if it's not already there.
8. Delete the `textpattern/setup` directory on your server if it is present.
9. Log in to the Textpattern back-end. The relevant upgrade scripts are run automatically. A notification will appear on the screen indicating the upgrade has been applied.
10. Look at the Diagnostics panel to confirm the upgraded version number is identified and whether there are any issues.
11. Verify all preference settings.

If you require more information, please refer to the [Step-by-step upgrading instructions](#TODO-upgrade).

Upgrades from versions below 4.2.0 will present this warning upon your very first login to the admin-side:

~~~
Warning: Unknown column 'user_name' in 'where clause' select name, val from txp_prefs where prefs_id=1 AND user_name='' in /path/to/your/site/textpattern/lib/txplib_db.php on line xx
~~~

This is expected behaviour for the very first login after the upgrade. Further navigation within the admin-side will continue without issue.

## Step-by-step Textpattern installion instructions

These instructions follow a process of using an (S)FTP application, which you presumably have ([Transmit](https://www.panic.com/transmit/) is a popular choice for Mac, and [WinSCP](https://winscp.net/eng/index.php/) is for Windows). If you're familiar with installing CMS software and prefer the quick notes, see the [README.txt](https://github.com/textpattern/textpattern/blob/master/README.txt) file that's included in the install package. If you're more of a command line jockey, the bits in [working with the development branch](/development/textpattern-source-code-repositories) should suit you.

### Create your database

Before you can install Textpattern, you will need a MySQL database ready, and a user account with 'write' privileges to go with it. It's a hurdle you jump on your web host's side of things, but now is a good time to take care of it so it's not holding up the Textpattern install/setup process later.

Record this information when you create the database and keep it handy. It will be used later in the setup process:

* database username
* database password
* database name
* database server address and port

Depending on your web host, your web host account username (or ID, whatever) may be prefixed on the database name and database login. If this is the case for you, it will be evident when creating the database with your web host.

For example, if your web host ID was your last name (`lname`) and you named your database `oceans` and chose `me` as a database login, then your actual database name and login to use in [Step 1](#step-1-set-database-details) would be `lname_oceans` and `lname_me`, respectively.

### Download and unpack Textpattern

Now we begin the Textpattern part of the deal:

1. Create a folder on your local drive and name it something recognizable (e.g. `txp-new`).
2. [Download](https://textpattern.com/download) the latest release package (either `.zip` or `.tar.gz`, as you prefer).
3. Move the package to the folder you created.
4. Expand the package.

The zip package will have a folder/file tree matching that in the [Textpattern repo](https://github.com/textpattern/textpattern).[^1] Following are the folders and files you'll see, pay particular attention the to `.htaccess`[^2] file if you intend to install Textpattern to an Apache web server.

`files`
: **Type:** directory.
: **Removable?:** no.
: **What it's for:** Empty by default. It's where content files (`.pdf`, `.docx`, `.rtf`, `.epub`, `.txt`, etc.) will go when/if you upload them in the [Files panel](/administration/files-panel). You may see a warning about the directory's `chmod` status (editing rights) in the [Diagnostics panel](/administration/diagnostics-panel).

`images`
: **Type:** directory.
: **Removable?:** no.
: **What it's for:** Empty by default. It's where images will go when you upload them in the [Images panel](/administration/images-panel). You may see a warning about the directory's `chmod` status (editing rights) in the [Diagnostics panel](/administration/diagnostics-panel).

`rpc`
: **Type:** directory.
: **Removable?:** yes.
: **What it's for:** Contains the XML-RPC functionality, which is legacy code from when ping-packs and such were popular with bloggers. If you don't use it, you can remove it, but make sure the 'Enable XML-RPC server?' preference is set to 'No' in the [Preferences panel](/administration/preferences-panel#enable-xml-rpc-server).

`sites`
: **Type:** directory.
: **Removable?:** yes.
: **What it's for:** Supports multi-site installations managed by one administration side. It contains a template and instructions (`README.txt`) for doing so. You can safely remove this directory if not wanted.

`textpattern`
: **Type:** directory.
: **Removable?:** no.
: **What it's for:** Essential. Contains all the core scripting and functionality. Also where users log into site administration from the front side.

`themes`
: **Type:** directory.
: **Removable?:** no.
: **What it's for:** Empty by default. It's where themes will go if you choose to export them to disk from the [Themes panel](/administration/themes-panel) as a backup or for sharing them with others. Each theme has its own subdirectory inside. Note that you may see a warning about the directory's `chmod` status (editing rights) at the top of the Themes panel if the web server does not have sufficient write permissions.

`.htaccess`
: **Type:** file.
: **Removable?:** yes/no.
: **What it's for:** Important for handling many things on Apache web servers, like default URL formatting, 301 redirects, specific use (or not) of `www.`, and so forth. You can add to the file, but you should not alter or remove the default content, which Textpattern relies on. `.htaccess` can be safely removed if you run Textpattern a non-Apache web server, e.g. [Nginx](/installation/configuring-a-web-server-for-textpattern).

`index.php`
: **Type:** file.
: **Removable?:** no.
: **What it's for:** Essential. It functions as the front end of your Textpattern site. It's where web users arrive and and interact with the dynamic publishing.

`css.php`
: **Type:** file.
: **Removable?:** yes/no.
: **What it's for:** Negotiates the front-end stylesheets you create in the [Styles panel](/administration/styles-panel). If you plan on hosting your CSS as flat files then this can be removed - if you store CSS in the database then this file is required.

`README.txt`
: **Type:** file.
: **Removable?:** yes.
: **What it's for:** The file providing brief instructions for installing and upgrading Textpattern.

`HISTORY.txt`
: **Type:** file.
: **Removable?:** yes.
: **What it's for:** The file showing the package release Changelog.

`LICENSE.txt`
: **Type:** file.
: **Removable?:** no.
: **What it's for:** The GNU GENERAL PUBLIC LICENSE agreement. It doesn't impact functionality, but leave it alone.

[^1]: Do not move files in the tree or change their names. Doing so will render Textpattern useless.

[^2]: This type of file is a 'hidden' file, meaning it won't appear in certain file managers unless the file manager is configured to show them. For example, if you undertake local development on a macOS, this file won't appear in Finder unless you turn hidden file functionality on. The same goes for certain FTP clients, which typically hide these files until you change settings to show them.

### Upload package to web server

If you intend to use Textpattern to manage the entire website, you'll upload the install package to your web root (i.e. the root of your web domain). For many hosts, the path to the root looks like this: */users/home/{username}/web/public/*, where {username} is your user account name. You would upload the Textpattern package to the `/public` directory (equal to `yourexample.com`).

You may, of course, install it in a sub-directory if you're only using Textpattern to run a blog, for example, as part of a larger site (generally people who do that end up [moving the installation](/installation/moving-textpattern) later).

You will use FTP, or Secure-FTP (SFTP) if your web host requires it, to upload the package to your desired web server location. Two capable clients are WinSCP for Windows and Transmit for Mac.

When ready:

1. Connect to your web server via the FTP/SFTP client and navigate down to the directory where you intend to install Textpattern.
2. If not done automatically by the FTP/SFTP client, make a second connection to your local drive and navigate to where you have the unzipped Textpattern install package waiting.
3. Select the package file tree (the folders and files *inside* the unzipped version number folder) on your local drive and drag/drop them to your web server directory.

### Setup and configuration

Now you'll walk through the setup process, which is a series of screens. Have you're "database information":#sec1 ready. Assuming you uploaded the install file tree to your web root, open a browser and go to *https://example.com/textpattern/setup/*. (If you installed Textpattern in a subdirectory, the path would reflect that.)

#### Select language

You should now be looking at the default installation screen, which shows the Textpattern logo, a language selection menu, and a **Submit** button.[^3] The language you select will be used for the setup process, and become the default for your Textpattern UI.[^4]

Choose the language you want and select the **Submit** button.

[^3]: If you don't see this screen, check your URL path. Should it be `https` or `www.`? Did you install in a sub-directory? Is there a typo?

[^4]: You can change the UI language any time after setup in the [Preferences panel](/administration/preferences-panel).

#### Step 1: Set database details

The next screen, the first of four installation steps, asks for your MySQL database details and site URL

##### MySQL

The MySQL details are those you should have noted down when creating the database. The data asked for is:

* login (database user name)
* password
* server (use `localhost`)
* database (database name)
* table prefix (optional)

As mentioned at the beginning of this doc, some web hosts automatically prefix `database_` and database `login_` names with your host account username. Be sure to check for this.

The *server* is almost always `localhost`. It would be unusual if it wasn't, so try that first if your not sure.

The screen will say you don't need to provide a *table prefix* if this will be your only installation of Textpattern. This assumes you only have one MySQL database available to you. If that were true, adding a prefix here (e.g. `txp1_`) would allow you, if desired in the future, to add another Textpattern installation (e.g. `txp2_`) to your database without conflict with the original tables. But it's common anymore for web hosts to provide many databases, in which case no prefix would be necessary. Either way, this field is optional. If you do use a prefix, a sensible convention is something short ending with an underscore.

##### Site URL

Textpattern should have filled this in automatically by detecting where your installation files are relative to your web root. Just make sure it's correct.

When ready, select the **Next** button.

If there was a problem with your database information, you'll be notified about it now and won't advance to the next screen. You won't be told what the exact problem is either, but it will either be a typographical error in the data you entered, or there's a problem with your database setup, in which case you should submit a support ticket to your web host.

#### Step 2: Add config file

If all went well in the previous screen, you'll advance to screen 2, which is composed of two sections: **Checking database connection** and **Creating config.php file**.

##### Checking database connection

This part shows if Textpattern has actually communicated successfully with your database using the information from the previous screen. If so, you'll see this:

<span class="success">Connected</span> \\
<span class="success">Using {database} ({encoding})</span>

Where `{database}` is the name of your database and `{encoding}` is the character encoding your database is configured to use - ideally `utf8`.[^5]

##### Creating config.php file

Then it's time to create your Textpattern configuration file in the */textpattern* directory. Textpattern makes this easy by generating the *config.php* file contents based on your successful connection details. The code will look like this, but with your own data values entered:

~~~ php
<?php
    $txpcfg['db'] = 'database';
    $txpcfg['user'] = 'login';
    $txpcfg['pass'] = 'password';
    $txpcfg['host'] = 'localhost';
    $txpcfg['table_prefix'] = '';
    $txpcfg['txpath'] = '/server/path/to/textpattern/install/directory';
    $txpcfg['dbcharset'] = 'utf8mb4';
    $txpcfg['client_flags'] = 0;
?>
~~~

Proceed as follows:

1. Use your S/FTP client to connect to your web host, navigate to the installation directory, and open `/textpattern/config-dist.php` in your text editor of choice.
2. Copy the code that Textpattern generated for you in the current screen.
3. Paste the code into the `config-dist.php` file, completely overwriting its entire contents.
4. Save the file, close it, then rename it by removing `-dist` from the file name, leaving `config.php`.

Return to the **Add config file** screen in your browser and select the **I did it** button.

[^5]: If you want to change your character encoding, you'll need to do that at your database. But finish installing first, then change the database encoding later.

#### Step 3: Populate database

This screen, step 3, is where you create your Textpattern administrator account. Doing so also populates the database with the necessary Textpattern tables and the CMS–database bridge is complete. The screen has two sections: **Creating database tables** and **Site configuration**.

##### Creating database tables

To create the administrator account and generate the database tables, add the following information, and remember the login/password (you'll need it to log in):[^6]

* Full name (e.g. Jane Doe)
* Login name
* Password
* Email address

##### Site configuration

Under this area, you're asked to select the admin-side theme you want to use. The default theme is Hive. You can change the admin-side theme choice at any time in [Preferences](/administration/preferences-panel) after logging in.

When ready select the **Next** button.

[^6]: The login name and password should *not* be the same login and password used for your database.

#### Step 4: Go!

The final step is essentially a confirmation screen with a link to the administration login location for your new Textpattern site. Congratulations! You've installed one of the best open source CMS systems available.

The screen will also suggest deleting the `/setup` directory for security reasons, and troubleshooting your diagnostics. But when first logging in, Textpattern will land you at a location not mentioned in this screen, so here's the optimal course of action to take once you arrive at this confirmation step:

1. Use your S/FTP client to connect to your web server. Go to the `/textpattern/setup` directory, and delete it (contents too). This eliminates one potential diagnostic warning you would otherwise see later.
2. Return to your browser screen and select the "Main interface" link, which takes you to the administration login location. Log in using your new administrator account details (entered on the previous install screen), and check the box for remembering you, if you like.
3. Proceed to the [Diagnostics panel](/administration/diagnostics-panel), as Textpattern suggested, to troubleshoot any warnings and errors you see.
4. Go to the public side of your website (the homepage), easy to do by selecting its name in the navigation bar of any admin-side location. Read the tips and suggestions provided on the default article titled, 'Welcome to your site'. They're based on the experience of veteran users and intended to fast-track your efforts at building your first Textpattern website.







## Upgrading Textpattern

Upgrading is an essential part of maintaining good site security, and new Textpattern releases often bring performance & functionality enhancements. Whenever a new version of Textpattern is released, upgrade!

You may find abbreviated upgrade instructions in the `README.txt` file of every Textpattern release package. The instructions here are more detailed. In brief, you'll backup your current installation, overwrite your existing installation with new package files (with a few key exceptions), update your language preference(s), and address any problems indicated in the [Diagnostics](/administration/diagnostics-panel) panel.

### Upgrading from very old versions

Due to the nature of Textpattern's evolution, upgrading a Textpattern instance older than version 4.2.0 (released 17 September 2009) requires a two-stage upgrade process to avoid loss of functionality and availability issues. Upgrade to version 4.2.0 first, ensuring all admin functionality is working as expected, and then upgrade to the latest stable release.

### Download latest stable release

Go to [textpattern.com/download](https://textpattern.com/download) and download the archive of the latest version to your local machine. Unpack the package into a folder on your local drive. Give the folder a meaningful name like `textpattern-4.7.3`, for example.

### Backup

As with any system upgrade, you'll want to be sure you can fall back on your existing install should there ever be a problem; thus, you should back up your server files and create a database dump file (`.sql`) before upgrading.

#### Duplicate the existing Textpattern file tree

You must make a copy of your `config.php` file as a minimum.

Make a copy of the current system (folders and files of the Textpattern installation). The easiest way to do this is to log onto the server using FTP or SFTP, create a new folder called `txp-current`, for example, and copy the existing system file tree into this new folder (leave the file tree structure the same). Alternatively, simply duplicate your existing Textpattern dir and name it `Textpattern_OLD`. Upload the new Textpattern dir and then copy your `config.php` file from the `Textpattern_OLD` **prior** to running the update.

#### Create a database dump file (an .sql export)

Log in to the `phpMyAdmin` database panel for your site (different web hosts have different access routes), and then follow these steps:

1. Select the database running the current Textpattern site.
2. In the resulting main content area, select **'Export'** at the top of the screen.
3. You should be able to use the defaults as they already are, just make sure you tick the **'Save as file'** box at the bottom of the screen.
4. Select the **'Go'** button.

The .sql dump file will mostly likely be saved to your desktop. Using FTP/SFTP again, you could optionally copy the file into the backup folder you just created to keep everything together.

You now have a full backup of your files and database. If things don't work out in the upgrade process, you can simply replace the server files and, if necessary, re-import the old database dump file in phpMyAdmin again (using 'Import' instead of 'Export'). If you do have problems, you might consider running a development (sister) site of your main site and try upgrading there first.

### Install the new Textpattern files

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

For better security, however, we recommend moving the entire folder and its contents **outside** your web-accessible root folder. Once you have relocated it, you can inform Textpattern of its location via the 'File directory path' Preference when you log back into the admin side. The same advice stands for the `tmp` directory.

### Update

Open a web browser and visit the admin-side location (usually `example.org/textpattern`). Log in. That's it! Easy, huh? There are no update scripts to run or anything else; by simply going to the normal admin-side location, Textpattern will recognize the need to update and do so automatically.

### Fine-tune

When Textpattern updates, you will be taken by default to the [Languages panel](/administration/languages-panel). Once there, update your chosen language files as necessary (highlighted). Then go to the [Diagnostics panel](/administration/diagnostics-panel) and troubleshoot any noted issues.

Some notices are not always problems, *per se*, but may only appear to indicate some difference in the system since your upgrade. When in doubt about an error message, first check the [Diagnostics panel](/administration/diagnostics-panel) to see if it's documented, if that doesn't help, ask in the ['How do I…? and other questions' forum](https://forum.textpattern.com/).

### Remove unnecessary files

After installing or upgrading Textpattern, you only need to delete the `setup` folder (`/textpattern/setup`). This folder and its contained files are not used once Textpattern is installed. If you do not do this before checking the [Diagnostics panel](/administration/diagnostics-panel) in **Step 5**, you'll see a diagnostic warning reminding you to do it (the error will disappear when the folder is removed).

The `setup` folder is only used for **new** installations, not upgrades, thus it's technically not necessary to add this folder from the latest, stable package. However, don't go out of your way to be clinical, simply upgrade using the full package and then delete the folder afterwards - it's easier all-around.

### Debugging check

This step is highly recommended, but optional. It is best to do this on a development server to avoid showing your users error messages.

Change your site's 'Production status' in the [Preferences panel](/administration/preferences-panel) to 'debugging'. Go through the live site (every page, if possible), looking for error messages. Any such messages will be clearly visible at the top of the page. The upgrade may result in notices or errors relating to deprecated tags or attributes (these should be easy to correct).

If you do need to update tag or attribute names, the [smd_where_used plugin](https://forum.textpattern.com/viewtopic.php?id=27493) is a great help for quickly finding all instances of a given tag or attribute.

### Explore the bleeding edge development

For advanced users only!

The latest, **potentially unstable**, bleeding-edge code is available at [the GitHub repository](https://github.com/textpattern/textpattern).

If you're thinking about testing this code, then we shouldn't have to tell you what [git](https://git-scm.com) is or how to use it. If you don't know, then you don't really want to be messing about here!
