---
layout: document
category: Installation
published: true
title: Moving a Textpattern installation
description: Moving Textpattern means relocating the installation between two directories; either on the same server or between two servers.
---

# Moving a Textpattern installation

Moving Textpattern means relocating the installation between two directories; either on the same server or between two servers. The process is relatively the same in both situations with exception to database handling. This page will detail each scenario.

On this page:

* [Moving between directories on the same server](#moving-between-directories-on-the-same-server)
* [Moving between two servers](#moving-between-two-servers)

## Moving between directories on the same server

Textpattern users have been known to install Textpattern in a subdirectory of a web domain (e.g. `domain.tld/subdirectory`) and later decide to relocate the installation to the domain root (i.e., `domain.tld`).

Here's the process in detail:

1. Login to your Textpattern administration pages, navigate to the [[Preferences page]], and change your 'Site URL' entry to reflect the new root install location (should simply be a matter of removing the subdirectory from the path). You will also need to update the file upload path in the [[Preferences page]]. Again, it should simply be a matter of removing the subdirectory.
2. You need to change your referencing paths to the database in the `config.php` file. Navigate to `/textpattern/config.php`, open the file and change your paths so they now reflect a link to the database with respect from the domain root instead of the former subdirectory (i.e. simply remove the subdirectory from the paths).
3. Transfer your Textpattern folder/file structure to the domain root level (this is not the time to be suddenly changing your site's structure - leave the folder and file structure exactly as it is). Don't forget the `.htaccess` file!
4. If you have any 'internal' hard-coded links (e.g. image path links) in any of your page templates that are set as absolute paths, you will need to go to any such pages and change those links. You will not have to worry about this if your internal links are hard-coded as relative links and your site structure does not change, nor will you need to change absolute links that go to external content (i.e. different websites).

If all goes well, you should then be able to access your Textpattern home page, or the site admin page, via the new domain root location with everything in working order.

This process is also valid for moving installations in the other direction (from root to a subdirectory), or when working on a local installation via XAMPP, MAMP, etc.


## Moving between two servers

Sometimes it is necessary (whether for better service, a cheaper deal, etc.) to move your website from one web hosting service to another. This is a relatively easy matter that mainly just involves backing up your current Textpattern installation and database, reinstalling them on the new server location, and adjusting the files to make sure everything is all working properly.

To save you some potential headaches, you are encouraged to **not** make any version upgrades or downgrades with respect to either Textpattern or your MySQL if you can help it; it's better to switch first using the same versions of the technology, and then do whatever upgrades you need to do once everything is working properly.

## The process

### Step 1: Backing-up Your existing Textpattern resources

What we're talking about here is two things: exporting a copy of your existing database files, and moving a copy of your Textpattern folder and file tree on the current server to your local machine.

#### Exporting the existing database tables

1. Log into phpMyAdmin.
2. Click on **'Export'** in the option menu.
3. At this point you will have a lot of choices for the export schema. One note, if you need a smaller file size you can exclude your logs files. You can choose to export a plain .sql file (.txt) or a variety of zipped files. There may be more specific export needs for you host - if these settings do not work you may need to contact you host for specific needs for your server.

#### Move Textpattern folder/file tree to local machine

Use FTP or SFTP (whichever is appropriate) to move the Textpattern tree from the root folder of your site to your local machine. You will use this copy to upload the tree later to the new web server location.

As a matter of practicality, it is highly recommended to set up your new account and fully testing your migration before closing down the old hosting account (for that matter, you might not tell your old host your leaving until you have everything working at the new location). If something goes wrong somewhere along the way you have a working copy to refer back to, to make any adjustments or re-export if necessary.
{: .alert-block .warning}

### Step 2: Installing your resources on the new web host servers

#### Setting up database

1. At your new host, use phpMyAdmin (or a similar tool) to create a 'database name' and 'database user' (your new database name can be different than the name previously used by Textpattern).
2. Select the database you just created, if it's not already selected by default.
3. Click the 'Import' tab.
4. Browse for the text file backup of your database you made at *Step 1*.
5. Upload it!

#### Configuring Textpattern to interface with the new database

1. Upload your entire Textpattern tree (`example.com/textpattern`) and the default `index.php` and `.htaccess` files to your new server via FTP.
2. Open `textpattern/config.php` in a text editor.
3. You will need to update all of the values that have changes with your server move (database name, mySQL username, mySQL password, host and table prefix (if used).

The following two values may require you to contact Support to find them out:

~~~ php
$txpcfg['txpath'] = '/home/.some_name/site_username/example.com/textpattern';
$txpcfg['doc_root'] = '/home/.some_name/site_username/example.com/';
~~~

#### Handling the password

Changing your password after migrating your installation or upgrading MySQL.

1. When in phpMyAdmin, from the drop down menu on the left select your `txp_` database. A list of tables in that database will appear directly below the drop down menu. Near the bottom of that list you should see your `txp_user` table. Click on that table. All the information for that table will now occupy the main content area of your screen.
2. There are a row of tabs at the top. Click on the **'Structure'** tab.
3. In the main content area look for the row called `pass`, and click on the little pencil to the far right.
4. At the top of the main content area you will see 'Field', 'Type', 'Length/Values', 'Collation', etc. Retype the 128 in the 'Length/Values' box with 128 then click on **'Save'**.
5. Click on the **'Browse'** tab
6. In the middle of the content area you should see a little pencil. Click on it.
7. The main content area will now have a five columns labeled 'Field', 'Type', 'Function', 'Null', 'Value'. The third row from the top should be called `pass`. At the far right is the encrypted value of your current password. Delete the contents of that box and type in your new password. You can also just retype in your old password. **Important:** Do not use uppercase letters in your password at this point (Textpattern converts your password to lowercase before hashing it, hence it won't ever match if you hash any password with uppercase letters).
8. In the drop down menu for the row `pass` select 'Password'.
9. Click **'Go'**.

You're now ready to log back in to your Textpattern interface.

### Step 3: Troubleshooting problems after moving

Probably the number one thing that gets people hung-up when physically moving an installation from one server to another is the odd inclusion of white space in the `config.php` file during the move (most likely during the reinstallation of the file). When this happens three problems are usually to be the result...

1. Your home page will likely appear to be missing any CSS styling.
2. When you log in to the Textpattern admin panel, you will not be able to access some of your tabs (except perhaps the 'Content' page).
3. The following error message, or something similar to it, will appear at the top of the page:

~~~
"Warning: Cannot modify header information - headers already sent by (output started at '/home/user/public_html/textpattern/config.php:13)' in '/home/user/public_html/textpattern/publish.php' on line 170."
~~~

To collectively fix these problems, open up your `config.php` file and remove any trailing white space that has been automatically added to the end of the file.
