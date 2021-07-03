---
layout: document
category: Construction and Presentation
published: true
title: Creating a custom administration theme
description: Administration themes allow Textpattern administrators (and publishers) to choose a specific theme for the presentation and layout of back-end panels.
---

# Creating a custom administration theme

The recommended procedure for creating custom back-end themes is the same as it was prior to Textpattern 4.7. You can create a back-end theme from scratch, if you really like the hard way, but we strongly recommend the approach documented here, especially if it's your first attempt at an administration theme.

**Contents**

* Table of contents
{:toc}

## Duplicate and modify a core theme

Core themes are maintained and reflect the latest markup per stable release of Textpattern. Thus duplicating a core theme ensures theme markup is current too.

**Step 1:**

Browse the _/textpattern/admin-themes_ directory to find the three core theme subdirectories already there:

* classic
* hive
* hiveneutral

A given subdirectory has the following contents:

* assets
	* css
	* img
	* js
* themename.php
* manifest.json
* ReadMe.txt
* screenshot.png
{: .list-directory}

The child directories of the *assets* directory may vary, but it will likely include the *css* and *img* directories at the very least. The *js* directory is for JavaScript, should you need it. You may not even use images or JavaScript in your own theme, in which case you could remove these directories.

The filename of the *themename.php* MUST be identical to the name of the theme's directory.

**Step 2:**

Pick one of the core theme directories and duplicate it by whatever method you prefer. Often there is a Duplicate feature in your file manager's right menu options. Using that will provide you with a duplicate directory called _themename copy_. So if you duplicated the _hive_ theme directory, you'd have _hive copy_.

**Step 3:**

Rename your copy directory to whatever theme name you want, but don't try to be overly clever. The name must not have any blank spaces, and hyphens and underscores are the only non-alphanumeric character allowed. In addition, your theme may not start with a number. For example, these are acceptable:

* _mytheme_
* _my-theme_

Whatever name you use for the directory, use it for the *.php* file name inside the directory too (i.e. *mytheme.php*). We recommend you adopt the naming convention of _three-letter-prefix_theme-name_ where the [three letter prefix](/development/plugin-developer-prefixes) is one that uniquely identifies your 'brand'. 

Leave all other directory and file names alone. You will simply edit their contents, if necessary, not their names.

Delete the _screenshot.png_ file if not needed, or replace it with one you will use.

**Step 4:**

Log in to the back-end. Go to Admin > Preferences > Admin, look for the **Administration-side theme** preference and select the newly added theme (step 3).

**Step 5:**

Edit your new theme files as desired. By having selected the theme in step 4, you easily see the changes reflected in the administration panels as you work.

Keeping everything contained in the theme directory makes it easy to switch back to one of the core themes, should you need a break from your own lovely work.

## Future administration themes

In the future, if you create another back-end theme, you can  duplicate your initial custom theme, or really start from scratch (a blank slate). Either way, you'll be better informed, having learned from the duplication process originally.

## Deeper diving

You may study the Classic or Hive themes in more detail:

* [Hive administration theme source](https://github.com/philwareham/textpattern-hive-admin-theme)
* [Hive administration theme design patterns](http://design-patterns.textpattern.com/)
* [Classic administration theme source](https://github.com/philwareham/textpattern-classic-admin-theme)
* [Classic administration theme design patterns](http://design-patterns-classic.textpattern.com/)
