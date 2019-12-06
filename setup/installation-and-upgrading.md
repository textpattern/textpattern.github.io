---
layout: document
category: Setup and configuration
published: true
title: Installation and upgrading
description: From download to first log in: a complete guide to installing or updating Textpattern.
---

# Installation and upgrading

Whether you are new or experienced with Textpattern, this is the go-to place for installing or upgrading your Textpattern installation.

**On this page**:

* Table of contents
{:toc}

## Quick guide: installing for the first time

If you are comfortable with (S)FTP, file and database administration on server environments, this is for you.

1. Ensure your web server meets the [Textpattern system requirements](https://textpattern.com/about/119/system-requirements) for the version you intend to download.
2. [Download](https://textpattern.com/download) the latest `.zip` or `.tar.gz` archive.
3. Unpack [the file tree contents](https://github.com/textpattern/textpattern) from the downloaded package into a new directory on your local drive.
4. Connect to your destination server using an (S)FTP client or the command line and upload the unpacked file tree to your web root, a subdomain or subdirectory. This destination directory should contain `css.php`, `index.php`, plus the `files`, `images`, `themes` and `textpattern` directories as a minimum. The `.htaccess` file is required if your web server is Apache httpd or a derivative. The `sites` subdirectory is only required for optional multi-site functionality, and the `rpc` directory is only required for optional XML-RPC functionality. `README.txt` and `HISTORY.txt` are optional.
5. Establish a known-good MySQL database, either for exclusive Textpattern use or shared, and note its associated username and password credentials.
6. Open a web browser and visit `example.com/textpattern/setup/index.php` to start the setup process. If you're running Textpattern from a subdomain or subdirectory, use `subdomain.example.com/textpattern/setup/index.php` or `example.com/subdirectory/textpattern/setup/index.php` as appropriate.
7. Follow the installation steps provided on-screen.

Congratulations! You have upgraded Textpattern. We hope you enjoy it. If you require more information, please refer to the [Step-by-step installation instructions](#TODO-install).

## Quick guide: upgrading to the newest stable release

If you are comfortable with (S)FTP, file and database administration on server environments, this is for you. In the root directory of every Textpattern archive is a `README.txt` file with upgrading instructions and any special notes relevant to that release.

1. Ensure your web server meets the [Textpattern system requirements](https://textpattern.com/about/119/system-requirements) for the version you are downloading.
2. [Download](https://textpattern.com/download) the latest `.zip` or `.tar.gz` archive.
3. Unpack [the file tree contents](https://github.com/textpattern/textpattern) from the downloaded package into a new directory on your local drive.
4. Log out of the Textpattern back-end and clear the browser cache for your existing Textpattern site. If you use a service such as [Cloudflare](https://www.cloudflare.com) to cache your domain assets, remember to clear any caching services there too.
5. Verify the existence of a working database and file backup of your existing Textpattern site.
5.1 Copy your existing, known-good `textpattern/config.php` file to an easily accessible location on your local drive as a backup.
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

Note that upgrades from versions below 4.2.0 will present this warning upon your very first login to the back-end:

~~~
Warning: Unknown column 'user_name' in 'where clause' select name, val from txp_prefs where prefs_id=1 AND user_name='' in /path/to/your/site/textpattern/lib/txplib_db.php on line xx
~~~

This is expected behaviour for the very first login after the upgrade. Further navigation within the back-end will continue without issue.

Congratulations! You have upgraded Textpattern. We hope you enjoy it. If you require more information, please refer to the [Step-by-step upgrading instructions](#TODO-upgrade).

## Step-by-step installation instructions

These instructions follow a process of using an (S)FTP application, which you presumably have (for example [[Transmit](https://www.panic.com/transmit/) is a popular choice for Mac, [WinSCP](https://winscp.net/eng/index.php/) for Windows, or FileZilla](https://filezilla-project.org/) for all platforms).

If you're familiar with installing CMS software and prefer the quick guide, see the [README.txt](https://github.com/textpattern/textpattern/blob/master/README.txt) file that's included in the install package. Or try the [Quick installation guide](#quick-guide-installing-textpattern-for-the-first-time).

### Create a database

Before you can install Textpattern, you need a MySQL database ready, and a user account with 'write' privileges granted. Your hosting environment will have an administration tool to do this from their control panel toolset.

Record the following information when you create the database and keep it handy for later in the setup process:

* database username
* database password
* database name
* database server address and port

Depending on your web host, your web host account username or ID may be prefixed on the database name and database login. If this is the case for you, it will be evident when creating the database with your web host.

### Download and unpack Textpattern

1. [Download](https://textpattern.com/download) the latest release package (either `.zip` or `.tar.gz`, as you prefer).
2. Unpack the package into a new directory so the files are contained neatly and are easy to see.

See the [package file structure](#package-file-structure) for details on what files and directories are contained within it.

### Upload package to web server

If you intend to use Textpattern to manage the entire website, you'll upload the install package to your web root (i.e. the root of your web domain). For many hosts, the path to the root looks like this: */users/home/{username}/web/public/*, where {username} is your user account name. You would upload the package to the `/public` directory (equal to `yourexample.com`).

You may, of course, install it in a sub-directory if you're only using Textpattern to run a blog, for example, as part of a larger site (generally people who do that end up [moving the installation](/setup/moving-textpattern) later).

Connect to your web server via the (S)FTP client and navigate down to the directory where you intend to install Textpattern and upload the relevant files, as indicated in the [package file structure](#package-file-structure).

### Setup via browser

Now you'll walk through the setup process, which is a series of screens. Assuming you uploaded the install file tree to your web root, open a browser and go to *https://example.com/textpattern/setup/*. (If you installed Textpattern in a subdirectory, the path would reflect that).

#### Select language

You will see the default installation screen, with the Textpattern logo, a language selection menu, and a **Submit** button. If you don't see this screen, check your URL path. Should it be `https` or `www.`? Did you install in a sub-directory? Is there a typo?

The language you select will be used for the remainder of the setup process, and become the default for your Textpattern UI. You may change the UI language any time after setup in the Launguages panel.

Choose the language you want and select the **Submit** button.

#### Provide database and site details

The next screen requests your MySQL database details and site URL. The MySQL details are those you noted down when creating the database. The data required is:

* login (database user name)
* password
* server (use `localhost` for most installations)
* database (database name)
* table prefix (optional)

If you are using the same database for more than one Textpattern site, you will require a unique *table prefix* for each to avoid table collisions with other instances. If this is the only instance of Textpattern in this database, you may leave this blank.

Textpattern will have automatically filled the *Site URL* field by detecting where your installation files are relative to your web root. Just make sure it's correct and alter it if not. When ready, select the **Next** button.

The credentials are checked by establishing a connection to the database. If a problem is detected, you'll be notified and won't advance to the next screen. Check the supplied information carefully and re-enter it until it is correct and you are allowed to proceed.

#### Create config file

The first part of the next screen shows if Textpattern has successfully communicated with your database using the information from the previous screen. If so, you'll see this:

<span class="success">Connected</span> \\
<span class="success">Using {database} ({encoding})</span>

Where `{database}` is the name of your database and `{encoding}` is the character encoding your database is configured to use - ideally `utf8` or `utf8mb4`. You should change the character encoding in the database now if it is not how you wish.

Beneath the connection verification is a text box containing the contents of your Textpattern configuration file - *config.php* - that you must put in the */textpattern* directory. An example is:

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

There are three ways to obtain *config.php* and install it to your web server.

Firstly, use the _Download_ button beneath the textbox to download the pre-filled 'config.php' to your local computer, where you can upload it to your server to the '/textpattern' directory.

Alternatively, you may create the file locally on your computer by pasting the contents of the text box into a new file called *config.php*, then upload it to the '/textpattern' directory on your host.

Or you may like to use your (S)FTP client to connect to your host site, navigate to the 'textpattern' directory, copy 'config-dist.php' as 'config.php' and edit it, replacing the entire contents with what is provided in the text box.

Either way, once done, return to the **Add config file** screen in your browser and select the **I did it** button.

#### Populate database

Next, create your Textpattern administrator account. Doing so also populates the database with the necessary Textpattern table data. The screen has two sections: **Creating database tables** and **Site configuration**.

Supply the following information, and remember the login/password (you'll need it to log in). 

* Full name (e.g. Jane Doe)
* Login name
* Password
* Email address

The login name and password should *not* be the same login and password used for your database.

Underneath this area, you're asked to select the admin-side theme you want to use, and the public theme you would like. If you have put any custom or community themes in the '/themes' directory, they will be available here for selection, allowing you to install ready-to-roll Textpattern sites out of the gate.

You can change the admin-side theme at any time in Preferences after logging in. You may also install additional public site themes and use them across you site at any time.

When ready, select the **Next** button to populate the database and get going.

#### Go!

The final step is a confirmation screen with a link to the administration login location for your new Textpattern site. Congratulations! You've installed one of the best open source CMS systems available.

The screen will also suggest deleting the `/setup` directory for security reasons, and verifying your installation is installed perfectly after logging in, by visiting the Diagnostics panel.

## Upgrading Textpattern

Upgrading is an essential part of maintaining good site security, and new Textpattern releases often bring performance & functionality enhancements. Whenever a new version of Textpattern is released, upgrade!

You will find abbreviated upgrade instructions in the `README.txt` file of every Textpattern release package. The instructions here are more detailed. In brief, you'll backup your current installation, overwrite your existing installation with new package files (with a few key exceptions), and address any problems indicated in the Diagnostics panel.

### Upgrading from very old versions

Due to the nature of Textpattern's evolution, upgrading a Textpattern instance older than version 4.2.0 (released 17 September 2009) requires a two-stage upgrade process to avoid loss of functionality and availability issues. Upgrade to version 4.2.0 first, ensuring all admin functionality is working as expected, and then upgrade to the latest stable release.

### Download latest stable release

Go to [textpattern.com/download](https://textpattern.com/download) and download the archive of the latest version to your local machine. Unpack the package into a directory on your local drive.

### Backup

As with any system upgrade, you'll want to be sure you can fall back on your existing install should there ever be a problem; thus, you should back up your server files and create a database dump file (`.sql`) before upgrading.

#### Duplicate the existing Textpattern file tree

You must make a copy of your `config.php` file as a minimum.

Make a copy of the current filesystem (directories and files of the Textpattern installation). The easiest way to do this is to log onto the server using an (S)FTP client, and copy or download the existing system file tree into a new directory. Once copied, upload the new Textpattern package and then copy your `config.php` file from your backup **prior** to logging back in to Textpattern.

#### Create a database dump file (an .sql export)

Log in to the `phpMyAdmin` database panel for your site (different web hosts have different access routes), and then follow these steps:

1. Select the database running the current Textpattern site.
2. In the resulting main content area, select **'Export'**.
3. Accept the defaults as they already are, just make sure you tick the **'Save as file'** box.
4. Select the **'Go'** button.

The .sql dump file will most likely be saved to your local computer. You could optionally copy the file into the backup folder you just created to keep everything together.

You now have a full backup of your files and database. If things don't work out during the upgrade process, you can simply replace the server files and, if necessary, re-import the old database dump file in phpMyAdmin again (using 'Import' instead of 'Export'). If you do have problems, you might consider running a development (sister) site of your main site and try upgrading there first.

### Install the new Textpattern files

It is strongly advised to log out of the Textpattern admin interface and clear the browser cache before upgrading. If you use a service such as [Cloudflare](https://www.cloudflare.com) to cache your domain assets, remember to clear any caching services there too.

Using your (S)FTP client, navigate to your textpattern root directory and use the [package file structure table](#package-file-structure) to determine which files and directories to upload and/or overwrite:

Ensure your existing `config.php` file is still inside your `textpattern` folder on the server, and copy it back there if not. This rarely changes between releases; if any changes are required or options become available, they will be documented in the *README.txt* file.

Note that some operating systems (such as macOS) do not always merge the contents of directories when they are overwritten: they delete the entire directory contents first and then copy the new files in. There are ways to merge duing a file copy, and instructions for doing so vary from version to version and OS to OS, but the simplest solution is to ensure you have taken a backup copy first.

If you are running an Apache web server and wish to prohibit direct access to your downloadable files (i.e. by someone manually entering `http://site.com/files/name_of_file`) you may rename the `/files/.htaccess-dist` file to `/files/.htaccess`.

For better security, however, we recommend moving the entire folder and its contents **outside** your web-accessible root folder. Once you have relocated it, you can inform Textpattern of its location via the 'File directory path' Preference when you log back into the admin side. The same advice stands for the `tmp` directory.

### Update

Open a web browser and visit the admin-side location (usually `example.org/textpattern`). Log in. That's it! Easy, huh? There are no update scripts to run or anything else; by simply going to the normal admin-side location, Textpattern will recognize the need to update and do so automatically.

### Fine-tune

After Textpattern updates, you should visit the Diagnostics panel and troubleshoot any noted issues.

Some notices are not always problems, *per se*, but may only appear to indicate some difference in the system since your upgrade. When in doubt about an error message, first check the Diagnostics panel to see if it's documented, if that doesn't help, ask in the ['How?' forum](https://forum.textpattern.com/).

### Remove unnecessary files

After installing or upgrading Textpattern, you only need to delete the `setup` folder (`/textpattern/setup`). This folder and its contained files are not used once Textpattern is installed. Textpattern will try to remove it as part of the upgrade procedure. If it cannot do so, you'll see a diagnostic warning reminding you to do it.

The `setup` folder is only used for **new** installations, not upgrades, thus it's technically not necessary to add this folder from the latest, stable package. However, don't go out of your way to be clinical, simply upgrade using the full package and then delete the folder afterwards - it's easier.

### Debugging check

This step is highly recommended, but optional. It is best to do this on a development server to avoid showing your users error messages.

Change your site's 'Production status' in the Preferences panel to 'Debugging'. Go through the live site (every page, if possible), looking for error messages. Any such messages will be clearly visible at the top of the page. The upgrade may result in notices or errors relating to deprecated tags or attributes (these should be easy to correct).

If you do need to update tag or attribute names, the [smd_where_used plugin](https://forum.textpattern.com/viewtopic.php?id=27493) is a great help for quickly finding all instances of a given tag or attribute.

Remember to switch your production status back to 'Live' as soon as possible after testing. Not only will your site run faster, you will not leak any debugging database statistics in the site code.

Congratulations! You have upgraded Textpattern.

### Explore the bleeding edge development

For advanced users only!

The latest, **potentially unstable**, bleeding-edge code is available at [the GitHub repository](https://github.com/textpattern/textpattern).

If you're thinking about testing this code, then we shouldn't have to tell you what [git](https://git-scm.com) is or how to use it. If you don't know, then you don't really want to be messing about here!

## Package file structure

The zip package will have a folder/file tree matching the [Textpattern repo](https://github.com/textpattern/textpattern).[^1] Following are the folders and files you'll see inside the Textpattern download package. Pay particular attention to the `.htaccess`[^2] file if you intend to install Textpattern to an Apache web server.

Use this table as a guide when installing or upgrading to determine which files and directories are essential and which are optional during the process.

File | Type | Mandatory? | Replace on upgrade? | What it's for
---|---|---|---
`files` | directory | yes | no | Empty by default. It's where content files (`.pdf`, `.docx`, `.rtf`, `.epub`, `.txt`, etc.) will go when/if you upload them in the Files panel. You may see a warning about the directory's `chmod` status (editing rights) in the Diagnostics panel.
`images` | directory | yes | no | Empty by default. It's where images will go when you upload them in the Images panel. You may see a warning about the directory's `chmod` status (editing rights) in the Diagnostics panel.
`rpc` | directory | no | yes (if using it) | Contains the XML-RPC functionality, which is legacy code from when ping-packs and such were popular with bloggers. If you don't use it, you can remove it, but make sure the 'Enable XML-RPC server?' preference is set to 'No' in the Preferences panel.
`sites` | directory | no | not usually | Supports multi-site installations managed by one set of core files. It contains a template and instructions (`README.txt`) for doing so. You can safely remove this directory if you're not using this functionality.
`textpattern` | directory | yes | yes | Essential. Contains all the core scripting and functionality. Also where users log into the back-end to administer the site.
`textpattern/setup` | directory | yes for installations, no for upgrades | no, omit it | Essential for installing from scratch, not required for upgrades. Either way it must be removed after installation/upgrade is complete, for security reasons.
`themes` | directory | yes | no, if it already exists | Empty by default. It's where themes will go if you choose to export them to disk from the Themes panel as a backup or for sharing them with others. Each theme has its own subdirectory inside. Note that you may see a warning about the directory's `chmod` status (permissions) at the top of the Themes panel if the web server does not have sufficient write permissions.
`.htaccess` | file | yes, if using Apache | yes, but reapply any customization | Important for handling many things on Apache web servers, like default URL formatting, 301 redirects, specific use (or not) of `www.`, and so forth. You can add to the file, but you should not alter or remove the default content, which Textpattern relies on. `.htaccess` can be safely removed if you run Textpattern a non-Apache web server, e.g. [Nginx](/setup/configuring-a-web-server-for-textpattern).
`index.php` | file | yes | yes | Essential. It functions as the front end of your Textpattern site. It's where web users arrive and interact with the dynamic publishing.
`css.php` | file | yes/no | yes (if using it) | Negotiates the front-end stylesheets you create in the Styles panel. If you plan on hosting your CSS as flat files then this can be removed - if you store CSS in the database then this file is required.
`README.txt` | file | no | no | The file providing brief instructions for installing and upgrading Textpattern.
`HISTORY.txt` | file | no | no | The file showing the package release Changelog.
`LICENSE.txt` | file | no | no | The GNU GENERAL PUBLIC LICENSE agreement. It doesn't impact functionality, but leave it alone.

[^1]: Do not move files in the tree or change their names. Doing so will render Textpattern useless.

[^2]: This type of file is a 'hidden' file, meaning it won't appear in certain file managers unless the file manager is configured to show them. For example, if you undertake local development on macOS, this file won't appear in Finder unless you turn hidden file functionality on. The same goes for certain (S)FTP clients, which typically hide these files until you change settings to show them.
