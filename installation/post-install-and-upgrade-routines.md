---
layout: document
category: Installation
published: true
title: Post install and upgrade routines
description: There's a typical routine to walk through after installing or updating Textpattern.
---

# Post install and upgrade routines

For those [installing Textpattern](/installation/) for the first time, or updating their system to a new release, there's a typical routine to walk through afterwards before diving into site creation or returning to usual publishing operations. Once you've done it a few times it becomes second nature. This page is a reminder of what the routine is in each case.

On this page:

* [Post installation routine](#post-installation-routine)
  * [Set default language](#set-default-language)
  * [Configure site identity and publishing behaviour](#configure-site-identity-and-publishing-behaviour)
  * [Troubleshoot diagnostics](#troubleshoot-diagnostics)
  * [Build your architecture](#build-your-architecture)
* [Post upgrade/update routine](#post-upgradeupdate-routine)
  * [Updating language packs](#updating-language-packs)
  * [Check diagnostics, again](#check-diagnostics-again)

## Post installation routine

For those installing a new package of Textpattern, the routine begins upon first log in.

### Set default language

Unless you change it at the initial installation screen, English is the language used by default for the installation process, and subsequently for the administration UI. You can change the default language, again (if you desire), upon first log in, go to the [Languages panel](/administration/languages-panel), where the the available language packs (called Textpacks) are listed.

First you load the language you need by selecting the 'Install' link for it. You can add as many as you want, but there's no point adding any you can't read. A green confirmation message will flash at bottom of your browser window after each install action.

Then you override the current default by selecting the new language you want from the 'Current active language' selection menu at top of the languages table.[^1]

### Configure site identity and publishing behaviour

Your next stop after languages is [Preferences panel](/administration/preferences-panel) to verify site identity values and file paths, choose time zones and date formats, establish desired publishing behaviour, and so forth. Don't worry about addressing every single preference the fist pass. Some things won't be applicable at first anyway until you've planned your website architecture more. Initially focus on what you know can be set, and save all changes.

### Troubleshoot diagnostics

Your next stop is the [Diagnostics panel](/administration/diagnostics-panel) to troubleshoot any warning or error messages that may be showing under **Pre-flight checks**. A reading of "All checks pass!" is the usual desired result. See noted exceptions in the [Diagnostics documentation](/administration/diagnostics-panel).

### Build your architecture

When diagnostics are clear, you're ready to build your site architecture and presentation. Building publishing architectures with Textpattern requires time learning and tinkering. There's no direct 1-2-3 method for it. But the learning is fun, and once you understand how Textpattern structures content and puts it together, you'll thank yourself for choosing such an elegant system. The following information will help you get oriented:

* [Administration fast track](/administration/admin-fast-track)

## Post upgrade/update routine

A couple of the post-install routines apply to upgrading too.

### Updating language packs

Chances are you don't need to change your default language at this point, or install new ones, but you will need to update the Textpacks you have installed. You'll see an "Update" link next to your installed language packs. Evidence of this link means you need to do what it says - update them. That's because Textpacks may have been modified since Textpattern's last version release, and you want to implement any such modifications or you may experience problems with the presentation of UI content elements. When updated you'll see the link change to a non-linked 'Up-to-date', and you're done.

Be aware that sometimes in the course of running your site, depending on the plugins you have installed, you may need the occasional Textpack update (or upload) independent of normal Textpattern releases. Thus get in the habit of checking the [Languages panel](/administration/languages-panel) panel after installing plugins too, and/or verify with their developers if Textpack uploads are needed.

### Check diagnostics, again

Anytime you update anything - system or plugins - verify no issues cropped up in the [Diagnostics panel](/administration/diagnostics-panel).

[^1]: You'll need to select the **Save** button in Textpattern 4.5 and earlier, but in 4.6 onwards no save is necessary, the language change applies automatically.
