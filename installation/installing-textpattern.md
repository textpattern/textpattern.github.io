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

1. Ensure your web server meets the [Textpattern CMS system requirements](https://textpattern.com/about/119/system-requirements).
2. [Download](https://textpattern.com/download) the latest `.zip` or `.tar.gz` archive.
3. Create a new directory (e.g. `textpattern-archive`) on your local drive, move the downloaded archive file from step 2. into it, and unpack [the file tree contents](https://github.com/textpattern/textpattern).
4. Open a file transfer connection to your destination server and upload the unpacked file tree to your web root, a subdomain or subdirectory. This destination directory should contain `css.php`, `index.php`, plus the `files`, `images`, `themes` and `textpattern` directories as a minimum. The `.htaccess` file is required if your web server is Apache httpd or a derivative. The `sites` subdirectory is only required for optional multi-site functionality and the `rpc` directory is only required for optional XML-RPC functionality. `README.txt` and `HISTORY.txt` are optional.
5. Establish a known-good MySQL database, either for exclusive Textpattern use or shared, and note its associated username and password credentials.
6. Open a web browser and go to `example.com/textpattern/setup/index.php` to start the setup process. If you're running Textpattern from a subdomain or subdirectory, go to `subdomain.example.com/textpattern/setup/index.php` or `example.com/subdirectory/textpattern/setup/index.php` as appropriate.
7. Follow the instructions in the web browser.

If you require more information, please refer to the [Detailed installation instructions](/installation/).

## Upgrade to the newest stable release

In the root directory of every Textpattern archive is a `README.txt` file with upgrading instructions relevant to that release.

1. Ensure your web server meets the Textpattern CMS system requirements.
2. [Download](https://textpattern.com/download) the latest `.zip` or `.tar.gz` archive.
3. Create a new directory (e.g. `textpattern-upgrade`) on your local drive, move the downloaded archive file from step 2. into it, and unpack [the file tree contents](https://github.com/textpattern/textpattern).
3. Log out of the Textpattern administration-side and clear the browser cache for your existing Textpattern site. If you use a service such as [Cloudflare](https://www.cloudflare.com) to cache your domain assets, remember to clear any caching services there too.
4. Verify the existence of a working database and file backup of your existing Textpattern site. You may find it useful to copy your existing, known-good `textpattern/config.php` file to an easily accessible location on your local drive as it will be required shortly.
5. Open a file transfer connection to your destination server and upload the new `css.php`, and `index.php` files to your web server, overwriting the existing files. Upload the new `textpattern` directory, overwriting the existing directory. If you do not have a `themes` directory, copy that too, otherwise leave it as-is. The new `.htaccess` file is required if your web server is Apache httpd or a derivative and has an existing file. The new `sites` subdirectory is only required if optional multi-site functionality is enabled and the new `rpc` directory is only required if optional XML-RPC functionality is enabled.
6. Copy your known-good `textpattern/config.php` into `textpattern`. Delete the `textpattern/setup` directory.
7. Log in to the Textpattern administration-side. The relevant upgrade scripts are run automatically. Please take a look into diagnostics to confirm the upgraded version number is identified and whether there are any issues.
9. Verify all preference settings.

If you require more information, please refer to the [Detailed upgrading instructions](/installation/upgrading-textpattern).

Upgrades from versions below 4.2.0 will present this warning upon your very first login to the administration-side:

~~~
Warning: Unknown column 'user_name' in 'where clause' select name, val from txp_prefs where prefs_id=1 AND user_name='' in /path/to/your/site/textpattern/lib/txplib_db.php on line xx
~~~

This is expected behaviour for the very first login after the upgrade. Further navigation within the administration-side will continue without issue.
