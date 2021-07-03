---
layout: document
category: Setup and Configuration
published: true
title: Installing the software
description: From download to log in — a complete guide to installing Textpattern.
---

# Installing Textpattern

These instructions follow a process of using an (S)FTP application, and we assume you have one.[^sftp] If you are familiar with installing CMS software and prefer a quick guide, see [these tidbits at download](https://textpattern.com/start#installation), or  the [README](https://github.com/textpattern/textpattern/blob/dev/README.md#install-textpattern) included in the download package. And, before you begin, ensure your web server meets the [Textpattern system requirements](https://textpattern.com/about/119/system-requirements) for the version you are installing.

**Contents**

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

## Download and unpack

[Download](https://textpattern.com/download) the latest release package (either .zip or .tar.gz, as you prefer).

Then unpack it (double-clicking on the compressed file will often do). An uncompressed directory will spring out ready for inspection and use.

Do not rearrange or rename any directories or files!

## Upload to web server

Decide where you will install Textpattern; either in your web root (e.g. to example.com) or in a subdirectory (i.e. example.com/subdirectory). The web root is the most common location and a good choice. Textpattern is capable of running your entire website, so why not use it to do so. A subdirectory works just as well, though people generally end up [moving the installation](/setup/moving-textpattern) to the web root later when realizing Textpattern can do more than post blog articles.

For many web hosts, the root path looks like this:

/users/home/{username}/web/public
{:.example}

Sometimes the /public directory is /public_html. The {username} implies your actual user account name.

### Essential installation elements

Using your (S)FTP client to connect to your web host's server. Navigate to your web root directory and upload at least the following directories and files from the Textpattern installation package:

* {:.directory--open} /
  * {:.document} .htaccess
  * {:.directory} files
  * {:.directory} images
  * {:.directory} textpattern
  * {:.directory} themes
  * {:.document} css.php
  * {:.document} index.php
{:.list--files}

Again, do not rearrange files in the tree or change their names. Doing so will render Textpattern useless.

If you are *not* using an Apache web server (e.g. you are using [Nginx](/setup/configuring-a-web-server)), you may exclude the .htaccess file; otherwise, it will be needed.[^htaccess] The .htaccess file is important for handling many things on Apache web servers, such as default URL formatting, 301 redirects, specific use (or not) of 'www.', and so forth. You can add additional content to the file, but you should not alter or remove what is there; Textpattern relies on it.

The /files directory is empty by default. It's where content files (.pdf, .docx, .rtf, .epub, .txt, etc.) will go if you upload them in the Files panel. Later, when logging in for the first time, you may see a warning about the directory's `chmod` status (editing rights) in the Files or Diagnostics panels. This is normal, and you will fix that when the time comes. [First log in checks](#first-log-in-checks).

The /images directory is also empty by default. It's where images will go when you upload them in the Images panel. Again, you may see a warning about the directory's `chmod` status (editing rights) in the Images or Diagnostics panels when first logging in. [First log in checks](#first-log-in-checks).

The /textpattern directory contains all the core scripting and functionality. Also where users log into the back-end to administer the site.

The /textpattern/plugins directory contains all the plugin code installed. You may see a warning about the directory's `chmod` status (editing rights) in the Plugins or Diagnostics panels when first logging in. [First log in checks](#first-log-in-checks).

The /themes directory is empty by default, but it's an essential directory if you intend to [export or import themes](/build/themes-creating-using-and-sharing). Each theme will have its own subdirectory inside. You may see a warning about the /themes directory's `chmod` status (editing rights) in the Themes or Diagnostics panels when first logging in. See [First log in checks](#first-log-in-checks).

The css.php file negotiates the front-end stylesheets you create in the Styles panel. If you plan on hosting your CSS as flat files, then this file can be removed. If you store CSS in the database then this file is required.

The index.php file functions as the front end of your Textpattern site. It's where web users arrive and interact with the dynamic publishing.

[^htaccess]: This type of file is a 'hidden' file, meaning it won't appear in certain file managers unless the file manager is configured to show them. For example, if you undertake local development on macOS, this file won't appear in Finder unless you turn hidden file functionality on. The same goes for certain (S)FTP clients, which typically hide these files until you change settings to show them.

### Non-essential package elements

The remaining directories and files are optional depending on whether you use the features or not:

* {:.directory--open} /
  * {:.directory} rpc
  * {:.directory} sites
{:.list--files}

The /rpc directory contains the XML-RPC functionality; the legacy code from when ping-packs and such were popular with bloggers. If you don't use it, you can remove it, but make sure the 'Enable XML-RPC server?' preference is set to 'No' after first logging in. See [First log in checks](#first-log-in-checks).

The /sites directory supports multi-site installations managed by one set of core files. It contains a template and instructions (README.txt) for doing so. You can safely remove this directory if you're not using this functionality.

## Setup via browser

Now you'll walk through the setup process, which is a series of screens. Assuming you uploaded the installation to your web root, open a browser and go to https://example.com/textpattern/setup. (If you installed Textpattern in a subdirectory, the path would reflect that.)

### Select language

You will see the default installation screen, with the Textpattern logo, a language selection menu, and a **Submit** button. If you don't see this screen, check your URL path. Should it be 'https' or 'www.'? Did you install in a subdirectory? Is there a typo?

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

Textpattern will have automatically filled the *Site URL* field by detecting where your installation files are relative to your web root. Just make sure it's correct and alter it if not. When ready, select the Next button.

The credentials are checked by establishing a connection to the database. If a problem is detected, you'll be notified and won't advance to the next screen. Check the supplied information carefully and re-enter it until it is correct and you are allowed to proceed.

### Create configuration file

The first part of the next screen shows if Textpattern has successfully communicated with your database using the information from the previous screen. If so, you'll see this:

<span class="success">Connected</span> \\
<span class="success">Using {database} ({encoding})</span>

Where `{database}` is the name of your database and `{encoding}` is the character encoding your database is configured to use, ideally 'utf8' or 'utf8mb4'. You should change the character encoding in the database now if it is not how you wish.

Beneath the connection verification is a text box containing the contents needed for your configuration file. Here is a hypothetical example of the file's contents:

~~~ php
<?php
    $txpcfg['db'] = 'database';
    $txpcfg['user'] = 'login';
    $txpcfg['pass'] = 'password';
    $txpcfg['host'] = 'localhost';
    $txpcfg['table_prefix'] = '';
    $txpcfg['txpath'] = '/var/www/vhosts/example.com/httpdocs/textpattern';
    $txpcfg['dbcharset'] = 'utf8mb4';
    $txpcfg['dbengine'] = 'InnoDB';
    $txpcfg['client_flags'] = 0;
?>
~~~

You need a config.php file in your /textpattern directory with that generated contents pasted into it and saved. It makes no difference how you do this, but there are two common ways.

One way is to use the Download button beneath the textbox in the browser screen to download the pre-filled config.php. You would then use your (S)FTP client to upload it to your web server and into the /textpattern directory.

The other common way is to use the config-dist.php file (which is otherwise needless). The file is already in the /textpattern directory. Open this file, paste the contents generated from above into it, making sure to replace *everything* in the file, then save and close the file. Then rename it to config.php (i.e. remove the '-dist' part from the name).

Once done, either way, return to the **Add config file** screen in your browser and select the **I did it** button.

### Populate database

Now create your Textpattern administrator account. The login name and password should *not* be the same login and password used for your database.

Creating the administrator account populates the database with the necessary Textpattern table data. The screen has two sections: **Creating database tables** and **Site configuration**.

Supply the following information, and remember the login name and password; you will need the details later to log in.

* Full name (e.g. Jane Doe)
* Login name
* Password
* Email address

Underneath this area, you're asked to select the administration theme you want to use, and the public theme you would like. If you have put any custom or community front-end themes in the /themes directory, they will appear here as options, but you can always [import and use new themes](/build/themes-creating-using-and-sharing) later from the Themes panel. Likewise, administration themes can be changed at any time via the Preferences panel after logging in.

When ready, select the Next button to populate the database and get going.

### Go!

The final step is a confirmation screen with a link to the administration login location for your new Textpattern site.

The screen will also suggest deleting the /setup directory for security reasons, and to verify in the Diagnostics panel that your installation and configured accurately after logging in.

Congratulations! You've installed one of the best open source CMS systems available.

Now, address those first log in check.

## First log in checks

As indicated earlier, you may need to correct a couple of things upon first logging in to the back end. The checks are normal and any warnings or errors are easily addressed here.

First, go to the Diagnostics panel (Admin > Diagnostics). Chances are, you will see at least the following red lines at top of the panel:

* <span class="error">Image directory is not writable: /the/path/to/your/images</span>
* <span class="error">File directory path is not writable: /the/path/to/your/files</span>
* <span class="error">Themes directory path is not writable: /the/path/to/your/themes</span>
* <span class="error">Plugins directory path is not writable: /the/path/to/your/textpattern/plugins</span>

Textpattern is simply letting you know to change the `chmod` permissions on those directories so you can add content to them. A chmod setting of 755 or 711 should work to make a folder writable *and is secure*.[^chmod]

When done, reload the Diagnostics panel. You should then see a satisfying green message saying <span class="success">All checks pass!</span> If you happen to have any other warnings — blue, yellow, or red — see [Troubleshooting diagnostics](/setup/troubleshooting-diagnostics).

Finally, if you do not intend to use the /rpc directory, go to Admin > Preferences > Admin and ensure you have 'No' selected for 'Enable XML-RPC server?'.

[^chmod]: {% include component-chmod.html %}
