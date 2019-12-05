---
layout: document
category: Administration
published: true
title: Building your first Textpattern architecture
description: This is a fast-track orientation to help you build your first publishing architecture in Textpattern.
---

# Building your first Textpattern architecture TODO:dw

This is a fast-track orientation to help you build your first publishing architecture in Textpattern. It assumes you've [installed, configured, and diagnosed a new instance of Textpattern](/installation/installing-textpattern) on your web server and looked over the [administration](/administration/) docs. If you've done that but nothing more, you're now in a good place.

This orientation will map out the administration process and associated locations in the administration side for building a single-author blog system. The same mechanics would be followed for any other kind of website, with adjustments to content types and functionality needed. But exploring more content types and functionality gets into more advanced Textpattern topics (not to mention requires planning your content model and information architecture), which you are not ready for yet.

So we'll kick-start you with a basic blog model and you learn the rest like everyone else does - by reading more users docs, asking questions in the [Textpattern CMS support forum](https://forum.textpattern.com/), and exploring on your own (the best kind of learning).

On this page:

* [System security and troubleshooting](#system-security-and-troubleshooting)
* [User accounts](#user-accounts)
* [Site identity and default configurations](#site-identity-and-default-configurations)
* [Establishing site structure and design](#establishing-site-structure-and-design)
* [Building publishing behaviour](#building-publishing-behaviour)
* [Managing content](#managing-content)
* [Extending with plugins](#extending-with-plugins)
* [Similar reading](#similar-reading)

## System security and troubleshooting

The next step is to go the [Diagnostics panel](/administration/diagnostics-panel) where you'll see a few items in red that need clearing up following a new install. New install errors are standard procedure to let you know to delete the setup folder (if you haven't already), and to create write permissions on the *tmp* and *files* folders in the [file tree](/installation/post-install-and-upgrade-routines). The error diagnostics will be explanatory about what you need to do in each case.

## User accounts

Since user accounts are rather important for being able to do anything at all, it makes sense to go have a look at the [Users panel](/administration/users-panel) next.

Here is where you change your password and email address. And if other users will have access to the admin-side, this is where you'll create and edit their account details too, including [User roles and privileges](/administration/user-roles-and-privileges).

**Recommended reading:**

-   [smd_faux_role](https://textpattern.org/plugins/1159/smd_faux_role)
    (Plugin for testing which user roles grant or restrict permission to which parts of the Textpattern administration, without needing to create roles and logging out and back in.)
-   [rah_change_passwords](https://rahforum.biz/plugins/rah_change_passwords)
    (Plugin allowing direct password management. Avoids the system generating random passwords and sending them by email.)
-   [smd_bio](https://textpattern.org/plugins/1116/smd_bio)
    (Plugin that extends user account data collected and stored for custom output, e.g. team profiles.)
-   [smd_user_manager](https://textpattern.org/plugins/1229/smd_user_manager)
    (Plugin providing user, group, and privilege management capabilities. Integrates with smd_bio.)

## Site identity and default configurations

With your installation secure, and your password in place, you should set a few defaults that will influence the website's identity and base-line publishing behaviour. You do this in the [Preferences panel](/administration/preferences-panel) and [Languages panel](/administration/languages-panel), the latter you've already been to.

**Recommended reading:**

* [Preferences panel](/administration/preferences-panel)

## Establishing site structure and design

You're now ready to start assembling your basic site structure. As mentioned at the start, we'll demonstrate the workflow by setting up the home page, a blog section, and a basic archive for blog articles.

* [Pages panel](/administration/pages-panel)
* [Styles panel](/administration/styles-panel)
* [Sections panel](/administration/sections-panel)

## Building publishing behaviour

\[Categories, Forms, Tag builders\] (adding in the publishing architecture to the layout in \#3)

## Managing content

\[Write, Articles, Images, Links, Files, comments\] (routine publishing for the Blog in \#3; invent a simple scenario)

## Extending with plugins

\[Plugins, Extensions, etc\] (highlight some popular plugins used in relation to the topics already covered; e.g. discussion of smd_bio/smd_user_manager in relation of user accounts)

**Recommended reading:**

* [rah_unlog_me](https://rahforum.biz/plugins/rah_unlog_me), a Plugin that removes the administrators IP, and any others defined, so their site visits don't show up in visitor logs (result is a more representative reflection of actual referrers that count).

## Similar reading

* [Textpattern installation quickstart](/installation/installing-textpattern)
