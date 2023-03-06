---
layout: document
category: Setup and Configuration
published: true
title: System security
description: Textpattern security has a very good track record and developers aim to keep it that way.
---

# System security

The developers of Textpattern take system security very seriously. Let us try to put your mind at relative ease.

**Contents**

* Table of contents
{:toc}

## Security statement

Developers regularly audit the source code for potential 'holes' that people might try to exploit. Textpattern can proudly claim that for many years, no such holes in core have been reported and confirmed.

There have been, however, occasional reports of hacked Textpattern sites, but the problem usually traces to security holes in *other applications* (or in the web server itself), which were exploited and used to take control of the Textpattern administrator's account. This is important to understand, because while Textpattern itself is quite secure, you can still make it vulnerable by using other technology in relation that is not as secure. **There is nothing Textpattern developers can do to defend against security holes in other applications.**

## Do your part for good security

Textpattern developers do their part to keep core code as secure as they can. It is up to you to do the rest. There are several things you can and should do to help keep your website secure.

**With regard to Textpattern installation:**

* Update your installation to the [latest stable release version](https://textpattern.com/download) whenever new releases are available.
* Check the Diagnostics panel for security warnings.
* Visit the Admin>Preferences panel (then the _Admin_ subpanel) and alter both the _File directory path_ and _Temporary directory path_ to reference locations outside of your website's docroot.
* Turn off the _Allow PHP in article/pages_ settings (found in Admin>Preferences, on the _Publish_ subpanel), unless you’re actively using those features.
* In the Admin>Preferences (_Advanced options_ subpanel, which is hidden by default so you need to vist the _Admin_ subpanel first and enable it) set the _Number of extra parser sweeps_ to 0. If you find pages or plugins that don’t work as well, restore it to 1 and please notify us of any issues so we can try and address them in future versions.
* Ensure you use a very strong password for *all* accounts.
* Only create Textpattern user accounts for people who require them, and ensure their access level is set to only the functionality they require. Don't just create admin-level accounts because it is easier! Each one is a potential avenue of attack if a password is compromised.

**With regard to Textpattern plugins:**

* Ensure you enable .htaccess security in the /path/to/your-site/textpattern/plugins directory. Textpattern ships with an .htaccess-dist file in this directory, so at the very least rename it. If you’re using Nginx or another flavour of web server, take a similar approach and clamp down read/write/execute permissions and ownership to that directory as tight as you can. This prevents plugin code from being accessed and executed directly.
* Consider moving the plugins directory outside of your website's docroot. To do this, move the entire copntent of the plugins directory to the new location and edit your config.php file, adding a line: `define('PLUGINPATH', '/path/to/your/plugins');`
* If you're using the _Plugin cache directory path_ (Admin>Preferences, on the _Admin_ subpanel) then consider moving it outside of your website's publicly-accessible docroot. This prevents development code from being executed directly. If this location is within your website's docroot, enable an .htaccess file (or your chosen web server equivalent) to limit access permissions to the directory.
* Regularly verify the plugins you've uploaded and *turned on* are the latest versions.[^plugins]
* Remove plugins you have turned off and don't rely on anymore (you can always reinstall them if ever needed again).

[^plugins]: **Tip:** Subscribe to all the plugin author support threads for the plugins you use so you're informed when new versions are released. This is subject to the plugin authors making announcements in those threads, of course, so not a guarantee you will be notified, but better than nothing.

**With respect to other third-party software integrations:**

* If you're using other PHP or CGI applications, like a photo gallery or form mail application, make sure they are maintained and up to date.[^thirdparty]
* Don't leave test code or unused PHP/CGI applications on your server.

[^thirdparty]: Odds are better that centralized platforms like Disqus, Twitter, Google Maps, and so on are safer to integrate than dubious scripts you might find on the internet. On the other hand, centralized platforms are all about tracking and exploiting you and your data for profit. Not to mention their scripts slow your site down.

**With regard to your web host or web server:**

* Pay attention to security announcements from your hosting provider or server admin. Likewise, if you find your host is slow to update its provided software, contact the host admins and remind them to do it.
* If you maintain your own web server, keep it updated with security patches (if you maintain your own server, you should know that already).

Core developers have no control over the quality or security of community plugins, third-party add-ons, or modifications you might make to the core system. It's up to you to evaluate the security of third-party code, and to make smart judgement calls about code modification.

## To modify or not modify the core for added security

Textpattern developers, current and past, tell us (e.g. [here](https://forum.textpattern.com/viewtopic.php?pid=192807#p192807), [here](https://forum.textpattern.com/viewtopic.php?pid=192818#p192818) and [here](https://forum.textpattern.com/viewtopic.php?pid=192827#p192827)) that a default installation of Textpattern is sufficiently secure for most needs. Thus changing the location of the admin login (i.e. renaming the configuration directory), or masking the identity of your Textpattern install is unwarranted, especially if your login details were wisely chosen and you follow all of the security precautions listed above.[^masking] An exception might be if you use Textpattern in a business setting that requires something like SSL authentication, which is out of scope for this documentation.

[^masking]: Contrary to masking your site's identity, core developers appreciate when you proudly - yet subtly - declare your choice for Textpattern by using this meta tag in the `head` section of your page templates: `<meta name="generator" content="Textpattern CMS" />`.


## If you suspect your site has been hacked

If you ever suspect there's a security problem in Textpattern, **do not publish any sensitive information about it**. [Report the security incident to core developers](https://textpattern.com/security) immediately and give them a chance to respond to the issue.
