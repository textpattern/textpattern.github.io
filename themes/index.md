---
layout: landing
category: Themes
published: true
title: Themes index
description: Getting started with front-end and admin-side themes for Textpattern. 
---

# Textpattern themes

Themes have arrived in Textpattern. This page is your waypoint for finding what’s currently available and getting started.

## Themes website

There is a new themes site coming. Few details are available at this point, but presumably it will be a mecca for finding and sharing front-side and admin-side Textpattern themes.

[Follow along with site development](https://github.com/textpattern/textpattern-themes-website). 

## Front-end themes

With the arrival of Textpattern 4.7 comes new core theming functionality for the front-end: 

* [Textpattern gains Themes support](https://textpattern.com/weblog/403/textpattern-cms-gains-themes-support) (developer overview on theme functionality)
* [Themes panel](https://docs.textpattern.io/administration/themes-panel) (administration doc)
* (Insert slick theme tutorial here.)
* (Insert another slickier theme tutorial here.)

## Admin-side themes

The process for admin-side themes is still the same:

* Admin-side theme creation
* Admin-side theme installation

When designing admin-side themes, use the markup of a core admin-side theme from the latest stable release as a model. The easiest way is to duplicate a core admin-side theme folder and files (either 'Hive' or 'Classic'), rename the folder to your new theme name (either a single word or a hyphenated word; i.e “mytheme” or “my-theme”), select the new theme from the Admin preferences, and develop your new theme directly in place in the `/textpattern/admin-themes` directory so changes reflect on your website as you work. 

Following are relevant core resources if you’d like to take a more independent approach:

* [Hive admin-side theme source](https://github.com/philwareham/textpattern-hive-admin-theme)
* [Hive admin-side theme design patterns](http://design-patterns.textpattern.io/)
* [Classic admin-side theme source](https://github.com/philwareham/textpattern-classic-admin-theme)
* [Classic admin-side theme design patterns](http://design-patterns-classic.textpattern.io/)

All packaged themes, like above, are added to `/textpattern/admin-themes` in your Textpattern installation. This makes them available from the Preferences panel of the admin-side.