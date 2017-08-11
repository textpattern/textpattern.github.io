---
layout: document
category: Themes
published: true
title: Creating and using admin-side themes
description: Admin-side themes allow Textpattern administrators (and publishers) to choose a specific theme for the administration panels.
---

# Creating and using admin-side themes TODO

Admin-side themes allow Textpattern administrators (and publishers) to choose a specific theme for the administration panels, from the list of options via the Admin Preferences.

The core admin-side theme options are:

* Hive
* Hive (Flat Neutral)
* Classic

To change the admin-side theme, go to the [Preferences administration panel](https://docs.textpattern.io/administration/preferences-panel), and within the **Admin** section select the theme you want from the 'Admin-side theme' control.

Administrators can also allow account holders to choose their own admin-side theme on an individual basis, which is done by installing the [smd_admin_themes](https://github.com/Bloke/smd_admin_themes) plugin.

That's all great. But it gets even better by installing your own admin-side themes and making them available via the options noted above. You can choose to add an existing admin theme, or create one of your own.

From hereon we talk about **creating a new admin theme**.

## Creating admin themes

There are two ways to create themes: from scratch or by *inheriting*
much of the theme code from one of the existing core admin themes. Let's
start with the basics of doing it by scratch.

### Creating an admin from scratch

Your new theme will have a specific file structure and name, as well particular code patterns.

#### File structure and name

Every theme will be created within its own folder, which will then be uploaded to `/textpattern/admin-themes/`. Thus, a theme named `foo_theme` will be stored as `/textpattern/admin-themes/foo_theme/`.

Within your folder will be the required PHP file, and any additional subdirectories and support files like CSS and JavaScript files, as needed.

Your folder and the principle PHP file inside it must have a common but unique name; common in that they will be the same, but unique in that they will not share the same name with any other admin theme used in that instance of Textpattern. **No name clashes allowed!**

For example:

    foo_theme
           â”œ foo_theme.php
           â”œ css
               â”” bar.css
           â”œ js
               â”” bar.js
           â”œ screenshot.jpg
           â”” README.txt

To avoid name clashes, and especially if you're going to [share your
themes with the public](http://textgarden.org) (whether freely or at
cost), we recommend that you [reserve a name
prefix](/home/www/zendstudio/dokuwiki/bin/doku.php?id=registered_textpattern_developer_prefixes)
that is thereafter (and for eternity) only used by you to prefix your
themes (and plugins, should you create any). Your prefix must be three
alphanumeric characters. Register your prefix by adding it to the list.
**Do not edit or use anyone else's prefix!**

##### Code specifics {#code_specifics}

An admin theme will draw fractions of the admin-side user interface:

<ul>
<li>
<p>
Entries in the HTML

</p>
    <head>

<p>
element:

</p>
    html_head()

</li>
<li>
<p>
Navigation menu and other header markup

</p>
    header()

</li>
<li>
<p>
Footer

</p>
    footer()

</li>
</ul>
**IMPORTANT**: although it's possible to completely redesign (change the
code of) the header and footer of the admin-side page, *don't do it* or
you risk breaking things.

For example, the DOM element having ID

    <nowiki>messagepane</nowiki>

is important for providing system feedback messages. If you removed it
from your custom

    header()

function, code that relies on it would stop working, and users would not
get such messages.

If you must rename elements as it is integral to your theme, consider
leaving the existing items intact, adding your own and then setting the
originals to

    display:none

via CSS.

Optionally, a theme may contain administrative data in its

    manifest()

method. Current items are indicated in Table 1.

**Table 1:** Data items currently available in the theme manifest.|
title| a human-friendly name for your theme. Without this item, the
theme name will be the same as the folder name |

author

You :)

author_uri

URL to your home page

version

Some version information that increments as the theme is revized. No
versioning convention is enforced. Note that the built-in themes use a
programmatic way of displaying the version based on the

    $prefs

array. This keeps it in step with Textpattern but **it is not
recommended to do this for your own themes**: you should use an actual
numeric version number instead.

description

Brief reason why this theme exists, what it offers, or simply some
marketing blurb about how great it is.

help

A hyperlink to some documentation about the theme.

For code examples, see the code in your files at:

<ul>
<li>
    ../textpattern/lib/txplib_theme.php

</li>
<li>
    ../textpattern/theme/classic/classic.php

</li>
</ul>
##### CSS and JavaScript {#css_and_javascript}

This is out of scope of Textpattern documentation, but if you need help
with CSS and JavaScript, feel free to ask in the [Support
Forum](https://forum.textpattern.com/) or [G+
Community](https://plus.google.com/u/0/communities/111366418300163664690).

### Extending admin themes via inheritance {#extending-admin-themes-via-inheritance .sectionedit3#extending_admin_themes_via_inheritance}

You can create new admin-side themes that extend from one of the core
themes. This allows you to customize smaller amounts (by extension)
while reusing (inheriting) most of the CSS, JavaScript, and so forth
from one of the core theme packages.

For example, the **Remora** admin theme makes use of this technique by
extending from the **Classic** theme.

Inheritance kicks off by including one line into the theme's .php file:

    theme::based_on('classic');

Note in this example it's extending from the **Classic** theme. But if
you wanted to extend from the **Hive** theme, then just change

    'classic'

with

    'hive'

.

**Note:** If you install a theme that itself inherits from another theme, *they must both be installed for the theme to function*. Errors will likely result if the source theme is disabled or removed. To avoid such problems, always inherit from the core admin themes.
