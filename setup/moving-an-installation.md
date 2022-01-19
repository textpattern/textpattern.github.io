---
layout: document
category: Setup and Configuration
published: true
title: Moving a Textpattern installation
description: How to move a Textpattern installation between two server locations.
---

# Moving an installation

Moving Textpattern means relocating the installation between two directories; either on the same server (local or hosted) or between two servers, such as when changing web hosts. Each scenario is described here.

**Contents**

* Table of contents
{:toc}

## Moving installation to a different directory

A common scenario here is when a new user of Textpattern initially installs the software as a blog in a subdirectory (i.e. <i>example.com/subdirectory</i>) at side of the person's existing website, then later decides to move it to root (<i>example.com</i>) when they realize Textpattern can run the entire thing.

Moving to a new directory is easy; it involves correcting important paths in relation to the new location then physically moving the installation files. Proceed in the following order.

### 1. Change paths in Preferences

Log into the back end of your website, navigate to the Preferences panel under the Admin section, and change the following two path references to reflect the new location.

#### Site URL

On the default Site view of Preferences, change **Site URL** entry to reflect the new root install directory. This should simply be a matter of removing the subdirectory from the path. 

Change from this:

example.com/subdirectory
{:.example}

To this:

example.com
{:.example}

Save changes.

#### File and Temporary directory paths

Switch to the Admin view of Preferences and change the two paths for **File directory path** and **Temporary directory path**. Again, this is simply a matter of removing the subdirectory from the paths already existing. Don't change anything else about the paths.

For example, this hypothetical file directory path:

/path/to/your/example.com/subdirectory/live/files
{:.example}

Becomes this:

/path/to/your/example.com/live/files
{:.example}

Do the same for the temporary directory path, then save the changes and log out of Textpattern.

### 2. Change database reference path in configuration file

This path is the most important one to change, though it doesn't matter if you do it before the move or after. If this one is not right you won't be able to log in. But again, it's easy.

Use an (S)FTP client to access your web server. Navigate to <i>/textpattern/config.php</i> and open the file. Look for the following line:

```
$txpcfg ['txpath'] = /path/to/your/root/subdirectory/textpattern
```

Change the path to reflect the new root installation location so the database can find the <i>textpattern</i> directory. Again, this should simply be a matter of removing the subdirectory from the path.

```
$txpcfg ['txpath'] = /path/to/your/root/textpattern
```

Save changes to file and close.

### 3. Move the installation files

Now transfer the entire Textpattern installation to the domain root. Don't forget the <i>.htaccess</i> file — a hidden file in your installation directory — which is also critical for making your site work. 

You should now be able to log in to your site as before, but at the new root location.

This process is also valid for moving installations in the other direction, from root to a subdirectory, or when moving either way on a local installation.

## Moving between two servers

Inevitably you will change web hosts; it is a fact of owning a website. Moving your installation to a new host is just like changing directories described above, but involves the additional steps of migrating your database, which is critical.  

In short, you will backup your installation files and database export file from your old host to your local machine; then transfer everything back up again to your new web host's servers, reinstalling, correcting paths in the configuration file, etc.

### System requirements

The instructions that follow assume your installation of Textpattern is up-to-date, including the recommended [system requirements](https://textpattern.com/about/system-requirements) for MySQL and PHP. If not, and especially if more than two versions outdated, it may be better to upgrade these software packages on the current host and ensure everything works properly before migrating to a new host. (Unless they are truly terrible hosts and you really need to leave them ASAP, then do it.)

If your web host is not running the minimum versions of MySQL and PHP, contact the host and ask them to upgrade these resources. After they do, upgrade Textpattern to the [latest stable release](https://textpattern.com/start). If your site 'breaks' after upgrading, it likely means you have to adjust some things in relation to the new PHP and/or MySQL versions. In that case, see [Troubleshooting common problems](/setup/troubleshooting-common-problems).

If your current installation of Textpattern is up-to-date, proceed with the following migration process.

### 1. Export the database

1. Log into phpMyAdmin.
2. Select **'Export'** in the option menu.
3. At this point you will have a lot of choices for the export schema. One note, if you need a smaller file size you can exclude your logs files. You can choose to export a plain <i>.sql</i> file (.txt) or a variety of zipped files. There may be more specific export needs for you host - if these settings do not work you may need to contact you host for specific needs for your server.

### 2. Create copy of installation files on local machine

Use FTP or SFTP (whichever is appropriate) to move the Textpattern tree from the root folder of your site to your local machine. You will use this copy to upload the tree later to the new web server location.

As a matter of practicality, it is highly recommended to set up your new account and fully testing your migration before closing down the old hosting account (for that matter, you might not tell your old host you are leaving until you have everything working at the new location). If something goes wrong somewhere along the way you have a working copy to refer back to, to make any adjustments or re-export if necessary.
{: .alert-block .warning}

### 3. Set up new database

1. At your new host, use phpMyAdmin (or a similar tool) to create a 'database name' and 'database user' (your new database name can be different from the name previously used by Textpattern).
2. Select the database you just created, if it's not already selected by default.
3. Select the 'Import' tab.
4. Browse for the text file backup of your database you made at *Step 1*.
5. Upload it!

### 4. Upload installation and reconnect with database

1. Upload your entire Textpattern tree (<i>example.com/textpattern</i>) and the default <i>index.php</i> and <i>.htaccess</i> files to your new server via FTP.
2. Open <i>textpattern/config.php</i> in a text editor.
3. You will need to update all of the values that have changes with your server move (database name, mySQL username, mySQL password, host and table prefix, if a prefix was used.

The following two values may require you to contact Support to find them out:

~~~ php
$txpcfg['txpath'] = '/home/.some_name/site_username/example.com/textpattern';
$txpcfg['doc_root'] = '/home/.some_name/site_username/example.com/';
~~~

## Change password

Changing your password after migrating your installation or upgrading MySQL is optional, but never a bad idea. And if you forgot your administrator password, then you'll need to do this anyway.

1. When in phpMyAdmin, from the drop down menu on the left select your `txp_` database. A list of tables in that database will appear directly below the drop down menu. Near the bottom of that list you should see your `txp_user` table. Select that table. All the information for that table will now occupy the main content area of your screen.
2. There are a row of tabs at the top. Select the **'Structure'** tab.
3. In the main content area look for the row called `pass`, and select the little pencil to the far right.
4. At the top of the main content area you will see 'Field', 'Type', 'Length/Values', 'Collation', etc. Retype the 128 in the 'Length/Values' box with 128 then select **'Save'**.
5. Select the **'Browse'** tab
6. In the middle of the content area you should see a little pencil. Select it.
7. The main content area will now have a five columns labeled 'Field', 'Type', 'Function', 'Null', 'Value'. The third row from the top should be called `pass`. At the far right is the encrypted value of your current password. Delete the contents of that box and type in your new password. You can also just retype in your old password. **Important:** Do not use uppercase letters in your password at this point (Textpattern converts your password to lowercase before hashing it, hence it won't ever match if you hash any password with uppercase letters).
8. In the drop down menu for the row `pass` select 'Password'.
9. Select **'Go'**.

You're now ready to log back in to your Textpattern interface.

## Troubleshooting after migration

Probably the number one thing that gets people hung-up when physically moving an installation from one server to another is the odd inclusion of white space in the <i>config.php</i> file during the move (most likely during the reinstallation of the file). When this happens three problems are usually to be the result…

1. Your home page will likely appear to be missing any CSS styling.
2. When you log in to the Textpattern admin panel, you will not be able to access some of your tabs (except perhaps the 'Content' page).
3. The following error message, or something similar to it, will appear at the top of the page:

~~~
"Warning: Cannot modify header information - headers already sent by (output started at '/home/user/public_html/textpattern/config.php:13)' in '/home/user/public_html/textpattern/publish.php' on line 170."
~~~

To collectively fix these problems, open up your `config.php` file and remove any trailing white space that has been automatically added to the end of the file.
