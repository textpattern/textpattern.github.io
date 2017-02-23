---
layout: landing
category: Themes
published: true
title: Theme design
description: Textpattern theme designs - either building from scratch, or using a pre-built theme.
---

# Theme design

Beginning with Textpattern version 4.5, there are some exciting improvements with the underlying markup of Textpattern's default front-and admin-side themes, and even more in version 4.6. This means it will be considerably easier to make custom themes of your own that will have all the modern code, semantics, and functionality already in them (like responsive behaviour). All you need to do is create beautiful skins on top of the code.

## Front-end theme design

Front-end theme design is approached just like you probably approach any website design effort; you either build your theme from scratch, or start with someone else's code and tweak your model as needed. However, because the context here is with sharing themes with other people (whether free or at cost), you also need to take into account theme construction that is portable; i.e. can be packaged up for distribution and importation later.

To this end, there are two approaches, and you have to decide which one is more to your liking, both as a theme creator and as a user of other people's themes.

### Manual approach

This is the puritan's method. In this way you develop from scratch, host your code somewhere in downloadable package form (e.g. at GitHub), and document your folder/file tree in great detail so someone can unpack and load the files where they need to go to function correctly.

This isn't really different from how you would approach designing any website. The most important thing in this case is your documentation for people who will use your design - it needs to be clear and easy to use!

### Plugin approach

In this way you rely on a plugin to help manage the construction, portability, and use of a given front-end theme. The most relevant plugin to use in this case is **cxc_template**:

* [GitHub source code](https://github.com/yauh/txp-cxc-templates).
* [Forum help thread](https://forum.textpattern.com/viewtopic.php?id=35319).

Follow the plugin's own documentation, and use the forum help thread if you have problems.

### Design approach tips

Regardless of which approach you take, here are some tips that will help along the way:

1. Before you begin, think about the kind of content your theme will best present, and write some sample web copy to use in the theme prototype, which will help lead how your theme's information architecture is structured. This helps ensure your design best supports a given genre, whether a blog, magazine, real estate site, whatever.
2. Sketch or (loosely) mockup the theme design your want to create. Don't pour your time/effort into a full-glossy mockup; just have enough sketch idea to help lead your prototype direction, where you can then refine directly in the code.
3. Find an existing theme that has design patterns that most closely match what you want in your own theme design. Use this code as your model. Unless you really know the code history of the designer whose theme you're modelling from, you might be better off using Textpattern's own default theme.
4. Open up a copy of the model theme in your editor of choice and replace the model's code patterns and presentation with your own design code and images. Sky's the limit - have fun!

## Admin-side theme design

The approach to an admin-side theme is similar in principle to doing a front-end theme:

1. Conceive the design you want via a sketch or mockup.
2. Find a similar admin-theme to model from.

**Tip:** You're encouraged to use one of the native themes that ships with Textpattern as a model for your first custom admin theme attempt, for the simple fact the code in these themes reflects the most up to date HTML/CSS improvements of Textpattern's admin-side markup.

### Admin theme file tree structure

Your admin theme files should be packaged into a single folder. The folder should be a single word or hyphenated word name of your theme.

### Adding admin themes to your site

All packaged themes, like above, are added to `/textpattern/admin-themes` in your Textpattern installation. This makes them available from the Preferences administration panel of the admin-side.

In fact, you could simply duplicate an out-of-box theme folder and files (whether 'Hive' or 'Classic'), rename the folder to your new theme name, select the new theme from the admin preferences, and develop your new theme directly in place in the `/textpattern/admin-themes` directory so changes reflect on your website as you work.

### Admin-side theme development reference

The Hive and Classic themes are available on GitHub at the following repositories:

* [Hive admin theme source code on GitHub](https://github.com/philwareham/textpattern-hive-admin-theme).
* [Classic admin theme source code on GitHub](https://github.com/philwareham/textpattern-classic-admin-theme).

You might also find these admin-side development reference guides for 'Hive' and 'Classic' themes helpful:

* [Hive admin theme design patterns](http://design-patterns.textpattern.io/).
* [Classic admin theme design patterns](http://design-patterns-classic.textpattern.io/).
