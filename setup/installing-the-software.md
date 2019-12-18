---
layout: document
category: Setup and Configuration
published: true
title: Installing the software
description: From download to log in — a complete guide to installing Textpattern.
---

# Installing Textpattern

These instructions follow a process of using an (S)FTP application, and we assume you have one.[^sftp]

If you are familiar with installing CMS software and prefer a quick guide, see [these tidbits at download](https://textpattern.com/start#installation), or  the [README](https://github.com/textpattern/textpattern/blob/dev/README.md#install-textpattern) included in the download package.

Before you begin, ensure your web server meets the [Textpattern system requirements](https://textpattern.com/about/119/system-requirements) for the version you are installing.

**On this page**:

* Table of contents
{:toc}

[^sftp]: [Transmit](https://www.panic.com/transmit/) is a popular choice for Mac. Likewise, [WinSCP](https://winscp.net/eng/index.php/) for Windows, or [FileZilla](https://filezilla-project.org/) for all platforms. 

## Create a database

Before you can install Textpattern, you need a MySQL database ready, and a user account with 'write' privileges granted. Your web host will have an administration tool to do this from their control panel.

Record the following information when you create the database and keep it handy. You will need the information later in these instructions:

* database username
* database password
* database name
* database server address and port

Depending on your web host, your web host account username or ID may be prefixed on the database name and database login. If this is the case for you, it will be evident when creating the database with your web host.

## Download and unpack Textpattern

1. [Download](https://textpattern.com/download) the latest release package (either .zip or .tar.gz, as you prefer).
2. Unpack the package into a new directory so the files are contained neatly and are easy to see.

See the [package file structure](#package-file-structure) for details on what files and directories are contained within it.

## Upload package to web server

If you intend to use Textpattern to manage the entire website, as most people eventually do, upload the installation package to the root of your web domain, equal to domain.tld. For many hosts, the path to the root looks like this: 

/users/home/{username}/web/public
{:.example}

Sometimes the ../public directory is ../public_html. The {username} implies your actual user account name.

You may, of course, install it in a subdirectory. Some people do this, for example, when first thinking Textpattern should be run as a blog for a larger site, though they generally end up [moving the installation](/setup/moving-textpattern) later when realizing Textpattern can manage everything.

Using the (S)FTP client, connect to your web host’s server, navigate to your root directory, and upload the following mandatory directories and files from the Textpattern installation package:

* {:.directory--open} /
  * {:.directory} files
  * {:.directory} images
  * {:.directory} textpattern
  * {:.directory} themes
  * {:.document} css.php
  * {:.document} index.php
{:.list--files}

Do not rearrange files in the tree or change their names. Doing so will render Textpattern useless.

These other directories and files are optional depending on whether you use the features or not:

* {:.directory--open} /
  * {:.document} .htaccess
  * {:.directory} rpc
  * {:.directory} sites
{:.list--files}

Pay special attention to the .htaccess[^htaccess] file, which is necessary if you intend to install Textpattern to an Apache web server. You may omit this file if not.

All other files in the package are considered optional, and are provided for information only.

[^htaccess]: This type of file is a 'hidden' file, meaning it won't appear in certain file managers unless the file manager is configured to show them. For example, if you undertake local development on macOS, this file won't appear in Finder unless you turn hidden file functionality on. The same goes for certain (S)FTP clients, which typically hide these files until you change settings to show them.

### File system notes

files
: Empty by default. It's where content files (.pdf, .docx, .rtf, .epub, .txt, etc.) will go when/if you upload them in the Files panel. You may see a warning about the directory's `chmod` status (editing rights) in the Diagnostics panel.

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
: Important for handling many things on Apache web servers, like default URL formatting, 301 redirects, specific use (or not) of ‘www.’, and so forth. You can add additional content to the file, but you should not alter or remove the default content, which Textpattern relies on. The .htaccess file can be safely removed if you run Textpattern a non-Apache web server, e.g. [Nginx](/setup/configuring-a-web-server-for-textpattern).

css.php
: Negotiates the front-end stylesheets you create in the Styles panel. If you plan on hosting your CSS as flat files then this can be removed. If you store CSS in the database then this file is required.

index.php
: Functions as the front end of your Textpattern site. It's where web users arrive and interact with the dynamic publishing.

## Setup via browser

Now you'll walk through the setup process, which is a series of screens. Assuming you uploaded the installation to your web root, open a browser and go to https://domain.tld/textpattern/setup. (If you installed Textpattern in a subdirectory, the path would reflect that.)

### Select language

You will see the default installation screen, with the Textpattern logo, a language selection menu, and a **Submit** button. If you don't see this screen, check your URL path. Should it be ‘https’ or ‘www.’? Did you install in a subdirectory? Is there a typo?

The language you select will be used for the remainder of the setup process, and become the default in the interface of the administration side. You may change the interface language any time after setup in the Languages panel.

Choose the language you want and select the Submit button.

### Provide database and site details

The next screen requests your MySQL database details and site URL. The MySQL details are those you noted down when creating the database. The data required is:

* login (database user name)
* password
* server (use `localhost` for most installations)
* database (database name)
* table prefix (optional)

If you are using the same database for more than one Textpattern site, you will require a unique table prefix for each to avoid table collisions with other instances. If this is the only instance of Textpattern in this database, you may leave this blank.

Textpattern will have automatically filled the *Site URL* field by detecting where your installation files are relative to your web root. Just make sure it's correct and alter it if not. When ready, select the **Next** button.

The credentials are checked by establishing a connection to the database. If a problem is detected, you'll be notified and won't advance to the next screen. Check the supplied information carefully and re-enter it until it is correct and you are allowed to proceed.

### Create configuration file

The first part of the next screen shows if Textpattern has successfully communicated with your database using the information from the previous screen. If so, you'll see this:

<span class="success">Connected</span> \\
<span class="success">Using {database} ({encoding})</span>

Where `{database}` is the name of your database and `{encoding}` is the character encoding your database is configured to use, ideally ‘utf8’ or ‘utf8mb4’. You should change the character encoding in the database now if it is not how you wish.

Beneath the connection verification is a text box containing the contents needed for your configuration file. Here is a hypothetical example of the file’s contents:

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

You need a config.php file in your /textpattern directory with that generated contents pasted into it and saved. It makes no difference how you do this, but there are two common ways.

One way is to use the Download button beneath the textbox to download the pre-filled config.php to your local computer. You would then use your (S)FTP client to upload it to your web server and into the /textpattern directory.

The other common way is to use the config-dist.php file already in the /textpattern directory (which is otherwise not used). Change the file’s name to config.php, open it, paste in the contents generated from above, making sure to replace *everything* in the file, and save the file.

Once done, return to the **Add config file** screen in your browser and select the **I did it** button.

### Populate database

Now create your Textpattern administrator account. The login name and password should *not* be the same login and password used for your database.

Creating the administrator account populates the database with the necessary Textpattern table data. The screen has two sections: **Creating database tables** and **Site configuration**.

Supply the following information, and remember the login name and password; you will need the details later to log in. 

* Full name (e.g. Jane Doe)
* Login name
* Password
* Email address

Underneath this area, you're asked to select the administration side theme you want to use, and the public theme you would like. If you have put any custom or community front-end themes in the /themes directory, they will appear here as options, but you can always [import and use new themes](/build/themes-creating-using-and-sharing) later from the Themes panel. Likewise, administration themes can be changed at any time via the Preferences panel after logging in.

When ready, select the Next button to populate the database and get going.

### Go!

The final step is a confirmation screen with a link to the administration login location for your new Textpattern site.

The screen will also suggest deleting the /setup directory for security reasons, and to verify in the Diagnostics panel that your installation and configured accurately after logging in.

Congratulations! You've installed one of the best open source CMS systems available.