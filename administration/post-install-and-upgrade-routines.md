---
layout: document
category: Administration
published: true
title: Post install and upgrade routines
description: There's a typical routine to walk through after installing or updating Textpattern.
---

# Post install and upgrade routines

For those [installing Textpattern](http://docs.textpattern.io/installation/) for the first time, or updating their system to a new release, there's a typical routine to walk through afterwards before diving into site creation or returning to usual publishing operations. Once you've done it a few times it becomes second nature. This page is a reminder of what the routine is in each case.

On this page:

-   [Post installation routine](#sec1)
    -   [Set default language](#sec1-1)
    -   [Configure site identity and publishing behaviour](#sec1-2)
    -   [Troubleshoot diagnostics](#sec1-3)
    -   [Build your architecture](#sec1-4)
-   [Post upgrade/update routine](#sec2)
    -   [Updating language packs](#sec1-1)
    -   [Check diagnostics, again](#sec1-1)

## Post installation routine

For those installing a new package of Textpattern, the routine begins upon first log in.

### Set default language

Unless you change it at the initial installation screen, British English
is the language used by default for the installation process, and
subsequently for the administration UI. You can change the default
language, again (if you desire), upon first log in. You'll land on the
[**Languages**](http://docs.textpattern.io/administration/languages-panel)
panel automatically, where the the available language packs (called
Textpacks) are listed.

First you load the language you need by clicking the "Install" link for
it. You can add as many as you want, but there's no point adding any you
can't read. A green confirmation message will flash at bottom of your
browser window after each install action.

Then you override the current default by selecting the new language you
want from the "Current active language" selection menu at top of the
languages table.[^1]

### Configure site identity and publishing behaviour

Your next stop after languages is
[**Preferences**](http://docs.textpattern.io/administration/preferences-panel)
to verify site identity values and file paths, choose time zones and
date formats, establish desired publishing behaviour, and so forth.
Don't worry about addressing every single preference the fist pass. Some
things won't be applicable at first anyway until you've planned your
website architecture more. Initially focus on what you know can be set,
and save all changes.

### Troubleshoot diagnostics

Your next stop is the
[**Diagnostics**](http://docs.textpattern.io/administration/diagnostics-panel)
panel to troubleshoot any <span class="warning">warning</span> or <span
class="error">error</span> messages that may be showing under
**Pre-flight checks**. A reading of *<span class="success">All checks
pass!</span>* is the usual desired result. See noted exceptions in the
**Diagnostics** documentation.

### Build your architecture

When diagnostics are clear, you're ready to build your site architecture
and presentation. Building publishing architectures with Textpattern
requires time learning and tinkering. There's no direct 1-2-3 method for
it. But the learning is fun, and once you understand how Textpattern
structures content and puts it together, you'll thank yourself for
choosing such an elegant system. The following information will help you
get oriented:

-   [Administration fast
    track](http://docs.textpattern.io/administration/admin-fast-track)

## Post upgrade/update routine

A couple of the post-install routines apply to upgrading too.

### Updating language packs

Chances are you don't need to change your default language at this
point, or install new ones, but you will need to update the Textpacks
you have installed. You'll see an "Update" link next to your installed
language packs. Evidence of this link means you need to do what it says
- update them. That's because Textpacks may have been modified since
Textpattern's last version release, and you want to implement any such
modifications or you may experience problems with the presentation of UI
content elements. When updated you'll see the link change to a
non-linked "Up-to-date", and your done.

Be aware that sometimes in course of running your site, depending on the
plugins you have installed, you may need the occasional Textpack update
(or upload) independent of normal Textpattern releases. Thus get in the
habit of checking the
[**Languages**](http://docs.textpattern.io/administration/languages-panel)
panel after installing plugins too, and/or verify with their developers
if Textpack uploads are needed.

### Check diagnostics, again

Anytime you update anything - system or plugins - verify no issues cropped up in the [Diagnostics panel](http://docs.textpattern.io/administration/diagnostics-panel).

[^1]: You'll need to click the **Save** button in Textpattern 4.5.7, but in 4.6 no save is necessary, the language change applies automatically.
