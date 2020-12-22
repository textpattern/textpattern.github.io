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
* Ensure you use a very strong password for *all* accounts.
* Only create Textpattern user accounts for people who require them, and ensure their access level is set to only the functionality they require. Don't just create admin-level accounts because it is easier! Each one is a potential avenue of attack if a password is compromised.

**With regard to Textpattern plugins:**

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
