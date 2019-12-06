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

1. [Download](https://textpattern.com/download) the latest `.zip` or `.tar.gz` archive.
2. Ensure your web server meets the [Textpattern CMS system requirements](https://textpattern.com/about/119/system-requirements) for the version you have downloaded.
3. Unpack [the file tree contents](https://github.com/textpattern/textpattern) from the downloaded package into a new directory on your local drive.
4. Connect to your destination server using your SFTP client or command line and upload the unpacked file tree to your web root, a subdomain or subdirectory. This destination directory should contain `css.php`, `index.php`, plus the `files`, `images`, `themes` and `textpattern` directories as a minimum. The `.htaccess` file is required if your web server is Apache httpd or a derivative. The `sites` subdirectory is only required for optional multi-site functionality, and the `rpc` directory is only required for optional XML-RPC functionality. `README.txt` and `HISTORY.txt` are optional.
5. Establish a known-good MySQL database, either for exclusive Textpattern use or shared, and note its associated username and password credentials.
6. Open a web browser and visit `example.com/textpattern/setup/index.php` to start the setup process. If you're running Textpattern from a subdomain or subdirectory, use `subdomain.example.com/textpattern/setup/index.php` or `example.com/subdirectory/textpattern/setup/index.php` as appropriate.
7. Follow the installation steps provided on-screen.

If you require more information, please refer to the [Detailed installation instructions](#TODO).

## Upgrading to the newest stable release

In the root directory of every Textpattern archive is a `README.txt` file with upgrading instructions relevant to that release.

1. Ensure your web server meets the Textpattern CMS system requirements.
2. [Download](https://textpattern.com/download) the latest `.zip` or `.tar.gz` archive.
3. Create a new directory (e.g. `textpattern-upgrade`) on your local drive, move the downloaded archive file from step 2. into it, and unpack [the file tree contents](https://github.com/textpattern/textpattern).
3. Log out of the Textpattern admin-side and clear the browser cache for your existing Textpattern site. If you use a service such as [Cloudflare](https://www.cloudflare.com) to cache your domain assets, remember to clear any caching services there too.
4. Verify the existence of a working database and file backup of your existing Textpattern site. You may find it useful to copy your existing, known-good `textpattern/config.php` file to an easily accessible location on your local drive as it will be required shortly.
5. Open a file transfer connection to your destination server and upload the new `css.php`, and `index.php` files to your web server, overwriting the existing files. Upload the new `textpattern` directory, overwriting the existing directory. If you do not have a `themes` directory, copy that too, otherwise leave it as-is. The new `.htaccess` file is required if your web server is Apache httpd or a derivative and has an existing file. The new `sites` subdirectory is only required if optional multi-site functionality is enabled and the new `rpc` directory is only required if optional XML-RPC functionality is enabled.
6. Copy your known-good `textpattern/config.php` into `textpattern`. Delete the `textpattern/setup` directory.
7. Log in to the Textpattern admin-side. The relevant upgrade scripts are run automatically. Please take a look into diagnostics to confirm the upgraded version number is identified and whether there are any issues.
9. Verify all preference settings.

If you require more information, please refer to the [Detailed upgrading instructions](/installation/upgrading-textpattern).

Upgrades from versions below 4.2.0 will present this warning upon your very first login to the admin-side:

~~~
Warning: Unknown column 'user_name' in 'where clause' select name, val from txp_prefs where prefs_id=1 AND user_name='' in /path/to/your/site/textpattern/lib/txplib_db.php on line xx
~~~

This is expected behaviour for the very first login after the upgrade. Further navigation within the admin-side will continue without issue.


## Thorough walk-through for installing Textpattern

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
