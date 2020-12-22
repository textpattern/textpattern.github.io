---
layout: document
category: Construction and Presentation
published: true
title: "Installing, upgrading and using plugins"
description: When your needs cannot be met by core ingenuity alone, you can extend Textpattern functionality with plugins.
---

# Installing, upgrading and using plugins

Textpattern by itself is capable of doing a lot, especially as you learn to use pages, forms and [core tags](/tags/) in increasingly sophisticated ways. Sometimes your needs cannot be met (or met easily) by core ingenuity alone, so you can extend the base functionality with plugins, whether to produce content and behaviour, enhance configurability or usability, add new features and panels to the back-end, and much more.

**Contents**

* Table of contents
{:toc}

## Installing plugins

From your Textpattern back-end, visit the Plugins panel under the Admin menu. The top part of the panel is where you install, upload or upgrade plugins.

Beneath is a table of all currently installed plugins, their names, version numbers, author and help information, and whether they're active (enabled) or not.

If you don't have any yet, or wish to upgrade an existing plugin, first of all you need to obtain the plugin file or package.

### Finding plugins

The [curated plugins site](https://plugins.textpattern.com) is our centralized repository for all community-built plugins. Plugin developers (often called "plugin authors") typically make their plugins available at their own websites or on centralized community code sites such as [GitHub](https://github.com). When we become aware of them or the author notifies us, we add them to our central repository.

The [plugin author support forum](https://forum.textpattern.com/viewforum.php?id=79) is often where authors initially announce their plugins by creating a plugin support thread for each one. This provides a vector for finding plugins by monitoring the forum activity or using the forum's search. Plugin threads are also where you ask questions about using a given plugin, find developer notes about changes, or share ideas for plugin improvement. Whenever you install a plugin, you should consider *subscribing* to its associated support thread to keep up with any changes.[^1]

### Plugin file anatomy

Plugins thmeselves come in a few flavours. From Textpattern 4.9, the way plugins are installed will become more standardised with a simpler, streamlined process. In Textpattern 4.8 and earlier, the different types are installed in slightly different manners, as detailed below.

*Important*: in Textpattern 4.8 and earlier, only .txt files go through the verification step after upload. The other types - .zip and .php - do not. So be sure to check the code before installing the latter flavours. From Textpattern 4.9 onwards, _all_ plugins display the verification step, regardless of format, and you will need to confirm installation.

The following types of plugin are supported:

#### A zip (`.zip`) package

More complex plugins, or those that have their component elements (code, help text, language packs and supplementary library files) in separate files or directory structures may be offered in an archive packaged .zip format.

Once downloaded, these packages can be installed by either:

a) clicking the Browse button at the top of the Plugins panel, locating the .zip archive file and selecting it.
b) dragging the .zip file from your computer file explorer to the Browse input box.

Click the adjacent Upload button to install the plugin and its supplementary data.

Important: in Textpattern 4.8 and earlier, this type of plugin is _not_ displayed for verification. It is installed immediately, so be sure the code is safe before installing it.

#### A PHP (`.php`) template

Textpattern has a dedicated template format that authors use when developing plugins in PHP. This type of plugin may be available from a plugin's page on the [central repository](https://plugins.textpattern.com) or the author's GitHub page.

Once downloaded, these files can be installed by either:

a) clicking the Browse button at the top of the Plugins panel, locating the .php template file and selecting it.
b) dragging the .php file from your computer file explorer to the Browse input box.

Click the adjacent Upload button to install the plugin.

Important: in Textpattern 4.8 and earlier, this type of plugin is _not_ displayed for verification. It is installed immediately, so be sure the code is safe before installing it.

#### A text (`.txt`) file

This format usually has a header stating the name of the plugin and other details, then the code itself in [Base-64](https://en.wikipedia.org/wiki/Base64) format. Following is a hypothetical example showing the structure of a given file:

~~~
# Name: abc_myplugin v0.1
# Type: Client side plugin
# Brief Description of the plugin
# Author: Author name
# URL: https://example.com/
# Recommended load order: 5

# ……………………………………………………………
# This is a plugin for Textpattern - https://textpattern.com/
# To install: textpattern > admin > plugins
# Paste the following text into the 'Install plugin' box:
# ……………………………………………………………

YTo5OntzOjQ6Im5hbWUiO3M6Njoic21kX2lmIjtzOjY6ImF1dGhvciI7czoxMToiU3RlZiBE
YXdzb24iO3M6MTA6ImF1dGhvcl91cmkiO3M6MjI6Imh0dHA6Ly9zdGVmZGF3c29uLmNvbS8i
O3M6NzoidmVyc2lvbiI7czo0OiIw…
~~~

The Base-64 part at the bottom would normally be much longer, so be sure to copy the **entire** file when you really do go after one.

Depending on where you find your plugin file, you may be able to view its contents directly at that location and copy the file contents without downloading it. Alternatively, you may need to download the file first, open it, and copy the contents from your local copy. Either way, once you have the text file contents copied, paste it into the 'Install plugin' textarea box, and press 'Upload'.

### Verifying plugin file contents

After clicking Upload to beging the process of installing .txt file plugins, you'll be shown an intermediate view of the plugin file - a decompiled view - as it was written. You don't have to do anything here but look for obvious weirdness. For example, if you didn't see anything at all, that would be a problem, or if the plugin panel disappeared, that should be telling you to retreat or that the file is not of the expected format. For properly encoded plugins, you will be shown the code, any help text and any language strings that are bundled with the plugin. Find the 'Install' button below these areas and select it to finalise the installation step.

This will add the plugin record to the table, where you can then manage it.

### Plugin installation errors

Sometimes large plugins can cause problems when you select the Install button. You might see the following error…

Badly formed or empty plugin code.
{: .alert-block .error}

This is usually resolved by obtaining and installing a compressed version of the plugin.[^2] Compressed plugins are equivalent to regular text plugins, but begin with a sequence that looks like this:

~~~
H4sIAAAAAAAAA919a3PbRrbg56Rq/kOH8UTkDiWKkh+xJCtXsWWPZxXHa8meeyvjUoFEk8QY
BGgAlKz1+L/vefULACk6dvZO3amJRTYa53SfPn3e3YwOHh58LA/uHnSyaK47h+XB/YNOOY8v
k4l8iZbVLC/wy3B40Dmv9EQ9…
~~~

You'll need gzip on your web server in order to install compressed plugins, but most web servers have it.

## Plugin cache directory

Plugins that you install via the Plugins panel are inserted into the database. There is another method of installing a plugin that involves obtaining the plugin as a .php file in the Textpattern standard template format.

Visit the Preferences panel and enter a folder path/name to use as your plugin cache directory. Make sure it exists on your server and is writable!

When you have saved the changes, you may upload (via FTP) plugins in the standard template format (not the Base-64 method outlined above) into this nominated directory. Once uploaded, they will be available automatically and are “always on”, but otherwise behave in the same manner as regular plugins.

## Managing plugins

The bottom part of the panel is a table for managing the plugins you've uploaded (the table will be empty after a new Textpattern installation).

The plugin table displays the following data columns for each plugin:

* Plugin (name)
* Author
* Version
* Modified
* Description
* Active
* Order
* Manage

All of the column headers can be selected to sort table records in alpha-numeric order by their respective data types, *except* the Description and Manage columns, which are static. Search for plugins using the Search box at the top of the panel.

### Activating a plugin

When you first install a plugin, it's in a non-utilizable state until you activate it. To activate a plugin, select the 'No' link in the Active column. The link will turn to 'Yes' and the plugin is ready to use. To deactivate a plugin, which you might do temporarily when troubleshooting errors in your code that could be related to plugins in some way, select the 'Yes' link to toggle it off again.

### Editing a plugin

Once a plugin is installed, you can make changes to its code. You might do this if you have a special functional need from the plugin, or you find a small bug that the plugin author doesn't have time to fix right away. To access the PHP code, select the plugin's name in the Plugin column of the table. This opens the code in "edit" mode.[^3]

If you edit the plugin and save it, you'll see a 'Yes' entry for the plugin in the Modified column. Keep in mind that if you update the plugin to a new version later, it will overwrite any custom edits you make.

### Plugin help and options

Depending on the plugin, activating it may not make it usable without further effort. Plugins that provide you with specialized functionality through one or more custom tags, for example, will require you to fold those tags into your publishing architecture somehow. It's through use of those tags, and any other constructs the plugin may require, that the plugin will jump to life.

To learn how a plugin is supposed to be used, select the "Help" link in the Manage column of the table.

Some plugins may also provide an 'Options' link next to the 'Help' link, which opens a special view. These options are neither an Extensions region for preferences or configuration, or a link to the plugin's dedicated settings on the Preferences panel.

If you read the plugin's Help information and find yourself still having trouble, that's the time to go to the plugin's [support thread](https://forum.textpattern.com/viewforum.php?id=79). Known issues are often highlighted in the threads (tip: use your favourite search engine to search long threads), or you can post with questions or issues you have.

## Upgrading plugins

Upgrading a plugin is done the same way you first install one, as described earlier. Textpattern will know which plugin it is and overwrite the old plugin code accordingly with no additional input on your part.[^4]

## Advice on plugin usage

While plugins can do many things, there is often a misconception that you need plugins to do everything. That is not true with Textpattern. Many long-time users of Textpattern, in fact, pride themselves on using as few plugins as possible, while still creating sophisticated publishing architectures with core capabilities, especially when it comes to building front-ends - true Textpattern jedi.

The prudent website owner, and particularly the site architect, is encouraged to adopt a frugal habit of plugin use and learn the jedi way. That is to say, only install plugins if while learning Textpattern you discover you really do need them. Installing a bunch of plugins right away because they sound cool, or because they provide a quick way of achieving something is not a good way to learn Textpattern's capabilities.

The frugal approach favours two beneficial states. First, you master Textpattern by spending more time learning core capabilities. Second, fewer plugins means less need to update the ones you have, less likelihood of running into issues later when new Textpattern versions are released, and fewer third-party vectors for hackers to possibly exploit, thus better system security. Plus, each plugin takes a little extra time to load, so many plugins will begin to gradually slow down your site or back-end.

Here are a few tips for achieving plugin zen:

* Take the time to research if what you want to do can't be done with core functionality alone. Chances are it can be done, and notably with designing your front-end publishing architecture.[^5]
* Don't install plugins that you don't need, even if you *think* you might need them later, there's no point. Also, some plugins install their own database tables.
* If you do install plugins, but don't use them right away, don't enable them. Every enabled plugin, used or not, is a potential vector for exploitation, and notably if it's not well maintained, so having enabled plugins sitting there that you aren't using increases your chances of being hacked.
* Don't de-activate plugins you don't want to use and leave them installed. Again, there's no point. Delete them. Be one with the Textpattern Force.

## Plugin development?

You're in the wrong place! Please see [the suite of plugin develop aides](/development/) for aspiring plugin developers.

[^1]: As time goes by some plugin authors move on to other pastures - they may abandon their Textpattern plugins, which fall out of repair, or disappear altogether. We call these plugins 'orphans', and you'll see them labeled this way in their respective support forum threads. Sometimes other developers will 'adopt' the plugins and maintain them, keeping the original plugin name. If you see a plugin indicated as 'orphan', ask in the forum if something else is better.

[^2]: You can often find compressed plugins where a regular text version is available. If not, you can install the [ied_plugin_composer](https://github.com/Bloke/ied_plugin_composer) plugin and use that to create your own compressed version.

[^3]: You could also install and used [ied_plugin_composer](https://github.com/Bloke/ied_plugin_composer), which not only allows you to edit plugins, but to compile and export them too as entirely new plugins, assuming you make enough custom changes to warrant doing so. Etiquette tip: Always give credit to the developers whose code you expand from, and consider using your own [developer plugin prefix](/brand/author-prefixes-and-registration).

[^4]: In the event you need to update a plugin you've edited, you may like to install [rvm_plugin_diff](https://forum.textpattern.com/viewtopic.php?id=19909) first, a plugin that helps you track down the lines of code you edited in other plugins so you don't lose track of them and can make the edits again if necessary. Keeping your own edited versions of plugins on GitHub is another way you could maintain your customized versions separate from the plugin developer's latest releases.

[^5]: Good places to look and learn about building sophisticated publishing architectures with core functionality include: [Tags reference](/tags/) (notably the examples provided on each tag page), [Textpattern Tips](https://textpattern.tips/), all throughout the support forum, but notably in the [How? area](https://forum.textpattern.com/viewforum.php?id=5).
