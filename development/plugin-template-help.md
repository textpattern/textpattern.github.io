---
layout: document
category: Development
published: true
title: Plugin template
description: Textpattern plugins are perhaps best thought of as functions supplementary to those found in Textpattern core.
---

# Plugin template

Textpattern plugins are perhaps best thought of as functions supplementary to those found in Textpattern core.

Functions residing in your plugin can respond to `<txp:abc_your_tag />` and `<txp:abc_your_tag>bar</txp:abc_your_tag>` tags found in Page templates, Form templates, Articles and other dynamic content containers in Textpattern. A [Textpattern plugin template is available on GitHub](https://github.com/textpattern/textpattern-plugin-template) for plugin distribution.

**Contents**

* Table of contents
{:toc}

## Template package contents

In addition to the LICENSE and README files, the [plugin template](https://github.com/textpattern/textpattern-plugin-template)
contains the following:

-   *zem_tpl.php* - Contains the code to compile plugins into the format required by the Textpattern plugin installer.
-   *zem_plugin.php* - Is the template itself. Make a copy of this file and edit it to write your plugin.
-   *zem_example.php* - Is an example plugin that demonstrates both public-side tags and administration-side user interface features.

## Typical template use

Typical commands (via command-line) that you'll probably use:

    $ cp zem_plugin.php abc_myplugin.php
    [edit abc_myplugin.php]
    $ php abc_myplugin.php > abc_myplugin-0.1.txt

`abc_myplugin-0.1.txt` is the finished plugin, ready to install.

## Helpful notes

Important and helpful notes:

1. For public tags, whatever is returned by the plugin function will be output by the corresponding `<txp:function_name />` tag.
2. Public tags **must** be registered or they will not be available.
3. Plugin functions have access to all the functions available to *publish.php*, including everything in *textpattern/lib* and the entire class loader library.
4. If you would like to pass capture attributes in the `<txp:plugin_name />` tag, these will be passed as the first argument to the function as an associative array (`$varname => $value`). Use the `lAtts()` function to parse them and set defaults.
5. If you would like to capture content between a pari of open-closing container tags such as `<txp:abc_your_tag>bar</txp:abc_your_tag>`, this will be passed as the second argument to the function as a string.
6. Do not use `<?php ?>` tags within the plugin source.

## Speedy development

It speeds up development tremendously if you do the following:

1.  Make sure plugin name and plugin filename correspond; e.g. **zem_test** should be in *zem_test.php*.
2.  Create a directory, `/full/path/to/dev/plugins`.
3.  Drop your uncompiled plugins in that directory. Do not put *zem_tpl.php* in the same directory.
4.  In the **Preferences** panel, set the plugin cache directory to `/full/path/to/dev/plugins`.

Now during development you can skip the compile, upload, and activate steps (and you're not confined to editing in the admin panel or copy/paste). Simply edit the file directly in the cache directory, and it will be immediately available on page refresh.
