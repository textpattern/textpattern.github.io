---
layout: document
category: Installation
published: true
title: Quick installation/upgrade guide
description: A quick Textpattern CMS installation/upgrade guide,
---

# Quick installation/upgrade guide

On this page:

* [Install the software for the first time](#install-the-software-for-the-first-time)
* [Upgrade to the newest stable release](#upgrade-to-the-newest-stable-release)

## Install the software for the first time

1. [Download](https://textpattern.com/download) the latest `.zip` or `.tar.gz` package.
2. Create a new folder (e.g. `txp-unzipped`) on your local drive, move the zip file into it, and unpack [the file tree contents](https://github.com/textpattern/textpattern).
3. Create an FTP connection to your server (sometimes SFTP is necessary, depending on your host requirements), and move the unpacked file tree to your web domain root (or subdirectory, if you plan to run it that way).
4. Create a MySQL database and the associated user and password for it.
5. Open a web browser and go to `example.com/textpattern/setup/index.php` (or `example.com/sub-directory/textpattern/setup/index.php` if you're running it from a sub directory), where `example.com` is your web domain (and `sub-directory` is your actual sub-directory of choice).
6. Follow the instructions in the web browser.

If you require more information, please refer to the [Detailed installation instructions](https://docs.textpattern.io/installation/).

## Upgrade to the newest stable release

In the root folder of your installation is a `README.txt` file that provides simple upgrading instructions. The same instructions are repeated below for convenience. See [[Detailed upgrading instructions]] if you need more stepwise explanation.

1. Log out of the admin-side.
2. Verify the existence of a working database and file backup.
3. Copy the files `.htaccess`, `css.php`, and `index.php` (the `README.txt` and `HISTORY.txt` are optional).
4. Copy any folders you are using, for example `rpc` and `sites`. You do not usually need to copy `files` and `images` unless otherwise directed because you will already have done so when installing a prior release.
5. Copy the contents of the `textpattern` folder to the server's `textpattern` folder. You may exclude the `setup` directory, since it is only used for first-time installations.
6. When you login to the admin-side, the relevant upgrade script is run automatically. Please take a look into diagnostics to find out whether there are any errors and whether the correct version number is displayed.
7. Verify all preference settings.

Upgrades from versions below 4.2.0 will present this warning upon your very first login to the admin-side:

~~~
Warning: Unknown column 'user_name' in 'where clause' select name, val from txp_prefs where prefs_id=1 AND user_name='' in /path/to/your/site/textpattern/lib/txplib_db.php on line xx
~~~

This is expected behaviour for the very first login after the upgrade. Every further move in the admin side should not throw any error messages.

If you require more information, please refer to the [Detailed installation instructions](https://docs.textpattern.io/installation/).
