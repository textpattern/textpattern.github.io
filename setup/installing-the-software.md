---
layout: document
category: Setup and configuration
published: true
title: Installing the software
description: From download to log in: a complete guide to installing Textpattern.
---

# Installing Textpattern

These instructions follow a process of using an (S)FTP application, which you presumably have (for example [[Transmit](https://www.panic.com/transmit/) is a popular choice for Mac, [WinSCP](https://winscp.net/eng/index.php/) for Windows, or FileZilla](https://filezilla-project.org/) for all platforms).

If you're familiar with installing CMS software and prefer a quick guide, see the [README.txt](https://github.com/textpattern/textpattern/blob/dev/README.md#install-textpattern) file that's included in the download package.

Before you begin, ensure your web server meets the [Textpattern system requirements](https://textpattern.com/about/119/system-requirements) for the version you are installing.

**On this page**:

* Table of contents
{:toc}

## Create a database

Before you can install Textpattern, you need a MySQL database ready, and a user account with 'write' privileges granted. Your hosting environment will have an administration tool to do this from their control panel toolset.

Record the following information when you create the database and keep it handy for later in the setup process:

* database username
* database password
* database name
* database server address and port

Depending on your web host, your web host account username or ID may be prefixed on the database name and database login. If this is the case for you, it will be evident when creating the database with your web host.

## Download and unpack Textpattern

1. [Download](https://textpattern.com/download) the latest release package (either `.zip` or `.tar.gz`, as you prefer).
2. Unpack the package into a new directory so the files are contained neatly and are easy to see.

See the [package file structure](#package-file-structure) for details on what files and directories are contained within it.

## Upload package to web server

If you intend to use Textpattern to manage the entire website, you'll upload the install package to your web root (i.e. the root of your web domain). For many hosts, the path to the root looks like this: */users/home/{username}/web/public/*, where {username} is your user account name. You would upload the package to the `/public` directory (equal to `yourexample.com`).

You may, of course, install it in a sub-directory if you're only using Textpattern to run a blog, for example, as part of a larger site (generally people who do that end up [moving the installation](/setup/moving-textpattern) later).

Using your (S)FTP client, navigate to your textpattern root directory and upload the mandatory files and directories indicated in the tree below. Do not move files in the tree or change their names. Doing so will render Textpattern useless.

* {:.directory--open} /
  * {:.directory} files
  * {:.directory} images
  * {:.directory} textpattern
  * {:.directory} themes
  * {:.document} index.php
  * {:.document} css.php
{:.list--files}

The following directories are optional depending on whether you use the features or not. Pay particular attention to the `.htaccess`[^1] file if you intend to install Textpattern to an Apache web server. You may omit this file if not.

* {:.directory--open} /
  * {:.document} .htaccess
  * {:.directory} rpc
  * {:.directory} sites
{:.list--files}

All other files in the package are considered optional, and are provided for information only.

[^1]: This type of file is a 'hidden' file, meaning it won't appear in certain file managers unless the file manager is configured to show them. For example, if you undertake local development on macOS, this file won't appear in Finder unless you turn hidden file functionality on. The same goes for certain (S)FTP clients, which typically hide these files until you change settings to show them.

### File system notes

files
: Empty by default. It's where content files (`.pdf`, `.docx`, `.rtf`, `.epub`, `.txt`, etc.) will go when/if you upload them in the Files panel. You may see a warning about the directory's `chmod` status (editing rights) in the Diagnostics panel.

images
: Empty by default. It's where images will go when you upload them in the Images panel. You may see a warning about the directory's `chmod` status (editing rights) in the Diagnostics panel.

rpc
: Contains the XML-RPC functionality, which is legacy code from when ping-packs and such were popular with bloggers. If you don't use it, you can remove it, but make sure the 'Enable XML-RPC server?' preference is set to 'No' in the Preferences panel.

sites
: Supports multi-site installations managed by one set of core files. It contains a template and instructions (`README.txt`) for doing so. You can safely remove this directory if you're not using this functionality.

textpattern
: Contains all the core scripting and functionality. Also where users log into the back-end to administer the site.

themes
: Empty by default. It's where themes will go if you choose to export them to disk from the Themes panel as a backup or for sharing them with others. Each theme has its own subdirectory inside. Note that you may see a warning about the directory's `chmod` status (permissions) at the top of the Themes panel if the web server does not have sufficient write permissions.

.htaccess
: Important for handling many things on Apache web servers, like default URL formatting, 301 redirects, specific use (or not) of `www.`, and so forth. You can add to the file, but you should not alter or remove the default content, which Textpattern relies on. `.htaccess` can be safely removed if you run Textpattern a non-Apache web server, e.g. [Nginx](/setup/configuring-a-web-server-for-textpattern).

index.php
: It functions as the front end of your Textpattern site. It's where web users arrive and interact with the dynamic publishing.

css.php
: Negotiates the front-end stylesheets you create in the Styles panel. If you plan on hosting your CSS as flat files then this can be removed - if you store CSS in the database then this file is required.

## Setup via browser

Now you'll walk through the setup process, which is a series of screens. Assuming you uploaded the install file tree to your web root, open a browser and go to *https://example.com/textpattern/setup/*. (If you installed Textpattern in a subdirectory, the path would reflect that).

### Select language

You will see the default installation screen, with the Textpattern logo, a language selection menu, and a **Submit** button. If you don't see this screen, check your URL path. Should it be `https` or `www.`? Did you install in a sub-directory? Is there a typo?

The language you select will be used for the remainder of the setup process, and become the default for your Textpattern UI. You may change the UI language any time after setup in the Launguages panel.

Choose the language you want and select the **Submit** button.

### Provide database and site details

The next screen requests your MySQL database details and site URL. The MySQL details are those you noted down when creating the database. The data required is:

* login (database user name)
* password
* server (use `localhost` for most installations)
* database (database name)
* table prefix (optional)

If you are using the same database for more than one Textpattern site, you will require a unique *table prefix* for each to avoid table collisions with other instances. If this is the only instance of Textpattern in this database, you may leave this blank.

Textpattern will have automatically filled the *Site URL* field by detecting where your installation files are relative to your web root. Just make sure it's correct and alter it if not. When ready, select the **Next** button.

The credentials are checked by establishing a connection to the database. If a problem is detected, you'll be notified and won't advance to the next screen. Check the supplied information carefully and re-enter it until it is correct and you are allowed to proceed.

### Create config file

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

### Populate database

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

### Go!

The final step is a confirmation screen with a link to the administration login location for your new Textpattern site. Congratulations! You've installed one of the best open source CMS systems available.

The screen will also suggest deleting the `/setup` directory for security reasons, and verifying your installation is installed perfectly after logging in, by visiting the Diagnostics panel.
