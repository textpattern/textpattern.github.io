---
layout: document
category: Administration
published: true
title: Extensions region
description: The extensions administration region appears to the higher user roles if any of the administration-side plugins that employ it are installed.
---

# Extensions region

The Extensions administration region is not an out-of-the-box feature. It appears to the higher [user roles](/administration/user-roles-and-privileges) if any of the administration-side plugins that employ it are installed.

When relevant, the Extensions administration region will be seen in the administration navigation from all administration-side views *except* when you are in context of the [Plugins panel](/administration/plugins-panel), even for the administrator. This behaviour ensures being able to safely deactivate and/or remove outdated or buggy plugins if they are causing problems. To access the Extensions administration region from the Plugins panel, move to anywhere else in the administration-side first, and the Extensions administration region will appear in the navigation again.

When you upload a plugin that uses the Extensions administration region, a new panel option will appear under the region that provides the plugin's associated functionality or configuration controls.

## Unconventional panel placement

The use of the Extensions administration region is a convention adopted by plugin developers to put administration-side plugin preferences and other functional controls in a logical place, and that's a good thing when it can be done.

Not all administration-side plugins use the Extensions administration region, however. Some plugins will add their associated administration-side panel in one of the core regions. This may happen when panel placement is decided with respect to functional context over convention. Another reason may be a concern for having too many plugin panels under the Extensions administration region, though this is likely a moot issue for most Textpattern users.

[Related: Home administration region](/administration/home-region)
