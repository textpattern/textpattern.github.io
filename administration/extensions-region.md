---
layout: document
category: Administration
published: true
title: Extensions region
description: The extensions region appears to the higher user roles if any of the admin-side plugins that employ it are installed.
---

# Extensions region TODO

The Extensions administration region is not an out-of-the-box feature. It appears to the higher [user roles](https://docs.textpattern.io/administration/user-roles-and-privileges) if any of the admin-side plugins that employ it are installed.

When relevant, the Extensions administration region will be seen in the administration navigation from all admin-side views *except* when you are in context of the **Plugins** panel, even for the administrator. This behaviour ensures being able to safely deactivate and/or remove outdated or buggy plugins if they are causing problems. To access the **Extensions** panels from the **Plugins** panel, move to anywhere else in the admin-side first, and the \***Extensions** region will appear in the navigation again.

## Plugins that use the Extensions region

When you upload a plugin that uses the **Extensions** region, a new
panel option will appear under the region that provides the plugin's
associated functionality or configuration controls. The following table
identifies the *supported* plugins that will do this, and their
corresponding panel labels. (Orphaned or otherwise abandoned plugins are
not listed here, intentionally.)

notextile.

<div itemscope itemtype="http://schema.org/Table">
  Plugin                                                                                                       Extensions panel label[^1]
  ------------------------------------------------------------------------------------------------------------ ----------------------------
  "arc_redirect":http://forum.textpattern.com/viewtopic.php?id=36705                                          arc_redirect
  "adi_notes":http://forum.textpattern.com/viewtopic.php?id=27957                                             adi_notes
  "asy_jpcache":http://forum.textpattern.com/viewtopic.php?id=8352                                            ?
  [glz_custom_fields](http://forum.textpattern.com/viewtopic.php?id=23996)[^2]                               Custom Fields
  [ied_plugin_composer](https://github.com/Bloke/ied_plugin_composer)                                        Plugin Composer
  "msd_admin_colorpicker":http://forum.textpattern.com/viewtopic.php?id=26742                                ?
  "msd_google_map":http://forum.textpattern.com/viewtopic.php?id=30493                                       ?
  "rah_change_passwords":http://forum.textpattern.com/viewtopic.php?id=28696                                 ?
  "rah_post_versions":http://forum.textpattern.com/viewtopic.php?id=33855                                    ?
  "rah_tabtor":http://forum.textpattern.com/viewtopic.php?id=34815                                            ?
  "smd_admin_themes":http://forum.textpattern.com/viewtopic.php?id=30952                                     ?
  "smd_bio":http://forum.textpattern.com/viewtopic.php?id=31496                                               Bio config
  "smd_redirect":https://github.com/Bloke/smd_redirect                                                       Redirects
  "smd_tags":http://forum.textpattern.com/viewtopic.php?id=28621                                              smd_tags
  "smd_where_used":http://textpattern.org/plugins/984/smd_where_used                                       Where used
  "tru_tags":http://forum.textpattern.com/viewtopic.php?id=15084                                              ?

notextile.

</div>

## Unconventional panel placement

The use of the **Extensions** region is a convention adopted by plugin
developers to put administration-side plugin preferences and other
functional controls in a logical place, and that's a good thing when it
can be done.

Not all administration-side plugins use the **Extensions** region,
however. Some plugins will add their associated admin-side panel in one
of the core regions. This may happen when panel placement is decided
with respect to functional context over convention. Another reason may
be a concern for having too many plugin panels under the **Extensions**
region, though this is likely a moot issue for most Textpattern users.

Either way, it can be a little confusing when your hunting for plugin
panel functionality and it's not where you expect it to be. The issue is
still evolving and plugin developers will likely settle on a standard
process eventually, as well on a convention for creating plugin panel
labels.

[^1]: \[todo:note about UI element guidelines\]

[^2]: This plugin provides functionality that may arrive in core by Textpattern version 4.6 or the version after.
