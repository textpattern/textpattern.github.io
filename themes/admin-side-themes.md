---
layout: document
category: Themes
published: true
title: Admin-side themes
description: Admin-side themes allow Textpattern administrators (and publishers) to choose a specific theme for the admin-side presentation and panels.
---

# Admin-side themes

The steps for creating and using admin-side themes is still the same as they were prior to Textpattern 4.7.

You could create an admin-side theme from scratch, but we strongly recommend you create one by duplicating an existing core theme instead then modifiy your copy as desired, especially  if it’s your first admin-side theme attempt. 

Core themes are maintained and reflect the latest markup per stable release of Textpattern, thus by duplicating a core theme you ensure your own theme markup is current too.

## Duplicating and modifying a core theme

**Step 1:**

In your Textpattern installation, browse the the _/textpattern/admin-themes_ directory. You’ll see three core theme folders already there:

* classic
* hive
* hiveneutral

A given admin-side theme folder has the following contents:

* _assets_ (folder)
	* _css_ (folder for stylesheet files)
	* _img_ (folder for image files)
	* _js_ (folder for JavaScript files)
* _themename.php_ (where file name is the theme folder name)
* _manifest.json_
* _ReadMe.txt_
* _screenshot.png_ (screenshot of the theme)

The child folders of the _assets_ folder may vary, but it will likely include the _css_ and _img_ folders at the very least. You may not even use images in your own theme, in which case you cold remove that folder too.

**Step 2:**

Pick one of the core theme folders and duplicate it by whatever method you prefer. Often there is a *Duplicate* feature in your file manager’s right menu options. Using that will provide you with a duplicate folder called _theme copy_. So if you duplicated the _classic_ theme folder, you’d have _classic copy_.

**Step 3:**

Rename your copy folder to whatever theme name you want, but don’t try to be overly clever. The name must not have any blank spaces, and hyphens should be the only non-alphanumeric character. For example:

* _mytheme_
* _my-theme_

Whatever you rename your duplicated folder, use the same name to rename the .php file inside of it (e.g. _mytheme.php_).

Leave all other folder and file names alone. You will simply edit their contents, if necessary, not their names.

You can delete the _screenshot.png_ file or replace it with your own theme image later. Whatever.

**Step 4:**

Log in to the admin-side of the Textpattern site and go to Admin > Preferences > Admin, look for the “Admin-side theme” preference and use the select menu to change to your newly duplicated theme by the new name (step 3).

**Step 5:**

Now, as you normally would when designing a website presentation, edit your new theme files as you desire.

By having selected the theme in step 4, you easily see the changes reflected in the admin-side as you work.

Also, by keeping everything contained in the theme folder, you can easily switch back to one of the core themes should you need a break from your own lovely work. ;)

## Future admin-side themes

In the future, if you create another admin-side theme, you can  duplicate your own initial theme, or really start from scratch (a blank slate). Either way, you’ll be better informed to succeed having initially understood the process from a core example. 

## Resources for the deep-divers

If you’d like to really study the _Classic_ or _Hive_ themes, the following resources are available:

* [Hive admin-side theme source](https://github.com/philwareham/textpattern-hive-admin-theme)
* [Hive admin-side theme design patterns](http://design-patterns.textpattern.io/)
* [Classic admin-side theme source](https://github.com/philwareham/textpattern-classic-admin-theme)
* [Classic admin-side theme design patterns](http://design-patterns-classic.textpattern.io/)

