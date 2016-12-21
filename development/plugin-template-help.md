---
layout: document
category: Administration
published: true
title: Plugin template
description: Textpattern plugins are perhaps best thought of as functions supplementary to those found in Textpattern core.
---

# Plugin template

Textpattern plugins are perhaps best thought of as functions supplementary to those found in Textpattern core.

Functions residing in this file respond to `<txp:foo />` and `<txp:foo>bar</txp:foo>` tags found in [Page templates](http://docs.textpattern.io/themes/page-templates-explained), [Form templates](http://docs.textpattern.io/themes/form-templates-explained), @@Articles@@ and other dynamic content containers in Textpattern. A [Textpattern plugin template is available on GitHub](https://github.com/textpattern/textpattern-plugin-template) for plugin distribution.

On this page:

-   [Template package contents](#sec1)
-   [Typical template use](#sec2)
-   [Helpful notes](#sec3)
-   [Speedy development](#sec4)

Template package contents {#sec1}
-------------------------

In addition to the LICENSE and README files, the [plugin
template](https://github.com/textpattern/textpattern-plugin-template)
contains the following:

-   *zem_tpl.php* -- Contains the code to compile plugins into the
    format required by the Textpattern plugin installer.
-   *zem_plugin.php* -- Is the template itself. Make a copy of this
    file and edit it to write your plugin.
-   *zem_example.php* -- Is an example plugin that demonstrates both
    public-side tags and admin-side user interface features.

Typical template use {#sec2}
--------------------

Typical commands (via command-line) that you'll probably use:

    $ cp zem_plugin.php abc_myplugin.php
    [edit abc_myplugin.php]
    $ php abc_myplugin.php > abc_myplugin-0.1.txt

`abc_myplugin-0.1.txt` is the finished plugin, ready to install.

Helpful notes {#sec3}
-------------

Important and helpful notes:

1.  Whatever is returned by the plugin function will be output by the
    corresponding `<txp:plugin_name />` tag.
2.  Plugin functions have access to all the functions available to
    *publish.php*, including everything in *textpattern/lib*. (Further
    reference on these resources is forthcoming.)
3.  If you would like to pass variables to the plugin function(s) via
    paramaters in the `<txp:plugin_name />` tag, these will be passed as
    the first argument to the function as an associative array
    (`$varname => $value`).
4.  If you would like to pass a variable to the plugin function by
    enclosing it in `<txp:foo>bar</txp:foo>`, this will be passed as the
    second argument to the function as a string.
5.  Do not use `<?php ?>` tags within the plugin source.

Speedy development {#sect4}
------------------

It speeds up development tremendously if you do the following:

1.  Make sure plugin name and plugin filename correspond; e.g.
    **zem_test** should be in *zem_test.php*.
2.  Create a directory, */full/path/dev/plugins*.
3.  Drop your uncompiled plugins in that directory. Do not put
    *zem_tpl.php* in the same directory.
4.  In the **Advanced preferences** panel of the admin-side, set plugin
    cache directory to */full/path/dev/plugins*.

Now during development you can skip the compile, upload, activate steps
(and you're not confined to editing in the admin panel or copy/paste).
Simply edit the file in the tmp dir, it will be included on each run.
