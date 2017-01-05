h1. What does the Production Status setting do? [todo]

Textpattern's _Production Status_ setting (on *admin > preferences*) changes several aspects of Textpattern's behaviour.

*Live* mode is intended for fully tested production sites.

In Live mode, all internal PHP error messages are suppressed, to eliminate the possibility of leaking sensitive information when something goes wrong.  Browser caching features are enabled (4.0.4+ only).

*Testing* mode should be used when you are making changes to page templates, forms, CSS, configuration settings, or installing or updating plugins.

In Testing mode, PHP error and warning messages will be displayed to the user on public pages.  Textpattern will attempt to warn about errors encountered in page templates and forms.  Performance information will be included in HTML comments at the bottom of every Textpattern page.  Browser caching is disabled.

*Debug* mode should be used for diagnosing problems in Textpattern templates, plugins and PHP code.

PHP notices will be displayed, in addition to the errors and warnings shown in Testing mode.  A complete _Tag Trace_ is included in HTML comments at the bottom of every page, listing all the Textpattern tags encountered on that page.  Browser caching is disabled.

It's normal to see some PHP notices in Debug mode.  By itself, a PHP notice is not an indicator that something is wrong; it's there to help PHP developers find potential problems.
