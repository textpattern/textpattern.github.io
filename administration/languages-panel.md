---
layout: document
category: Administration
published: true
title: Languages panel
description: The Languages panel is where you update your chosen language pack after installing and updating Textpattern.
---

# Languages panel

<img class="img--bordered" width="680" height="422" alt="Figure 2" src="/img/47x/admin-panel-languages.png" srcset="/img/47x/admin-panel-languages.png 1x, /img/47x/admin-panel-languages@2x.png 2x">

The Languages panel is where you update your chosen language pack (also called a "Textpack") after installing and updating Textpattern.

On this page:

* [Site language](#site-language)
* [User language](#user-language)
* [List of available languages](#list-of-available-languages)
* [Adding Textpacks manually](#adding-textpacks-manually)
* [Known Issues](#known-issues)

## Site language

The primary language that the website will be targeted at. You can choose from any of the installed language packs. This is used on the public site and as the default administration-side language for users (unless changed in the 'User language' option - see below).

## User language

From Textpattern version 4.7 onwards, each user within the administration-side can be choose their specific language for the admin panels. You can choose from any of the installed language packs. This does not affect the 'Site language'.

## List of available languages

A complete list of the [available langauges within Textpattern](https://textpattern.com/about/301/languages). By default, the language chosen at installation will be active and the primary language for 'Site language' and 'User language'. Using this list you can add or remove additional languages for use within the CMS.

Any languages packs that have been updated (for example after upgrade to a more recent release of Textpattern) will be highlighted and allow you to update the language within the CMS.

Additional language Textpacks may be added in future Textpattern releases, as they become available. They will be automatically added to the list of languages. If you'd like to help with the translation of Textpattern, please visit the [Language translations](https://textpattern.com/about/301/languages) page for details of how to get involved (we love additional translations!).

## Adding Textpacks manually

You can also install a new language strings manually here at any time, such as for multi-lingual publishing efforts, using the 'Install from Textpack' box. Paste additional language strings for your site into this box and select 'Upload' to install them.

The strings will often come in the form of a downloadable Textpack, distributed with a plugin to permit the plugin's language strings to be used natively within Textpattern. International authors may then translate these packs as necessary and redistribute the localized content to the community.

## Known Issues

### Persistent update notifications

Legacy versions of Textpattern released before 4.7.0 use [RPC](https://en.wikipedia.org/wiki/Remote_procedure_call) to communicate with a central language translation server. From Textpattern version 4.7.0, language packs are included in the software locally.

A bug has been identified that affects legacy Textpattern instance (pre-4.7 only) where language packs may erroneously indicate an update is available. Triggering the update using the Update button will download the translations held on the central server, but the Update button may still be active after the language pack has been successfully updated. The Update notification can be safely ignored. It does not represent a security risk or affect functionality in any way.

If you encounter this issue, please check in the Diagnostics panel whether your PHP and MySQL server times are identical. There are some situations where the times do not match. If the times match, and you are interested in assisting with debugging of this particular issue, please leave a reply in [this forum thread](https://forum.textpattern.com/viewtopic.php?id=49156) and we'll get back to you.

[Next: Users panel](/administration/users-panel)
