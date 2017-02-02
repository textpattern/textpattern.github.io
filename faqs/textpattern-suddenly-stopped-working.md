h1. Textpattern suddenly stopped working [todo]

Software doesn't wear out or change by itself.  If your copy of Textpattern stopped working, it's because something on the server has changed.  The most likely causes of sudden unexplained problems are:

* Server upgrades and configuration changes.  Check your hosting company's news announcements or ask them if they've changed anything on your server recently.  In particular, hosting companies have been known to upgrade MySQL versions or move databases without following the necessary procedures for ensuring data integrity.

* Database or filesystem corruption.  A server crash or hardware failure can cause data and files to be lost or corrupted.  See "this FAQ":http://textpattern.com/faq/226/why-is-my-database-corrupt for more information about repairing a corrupt database.

* Textpattern modifications or plugins.  Have you installed a new plugin, Textpattern update, or modified one of Textpattern's files recently?  In some cases these changes can cause problems that aren't noticed till some time later.

If your Textpattern site has suddenly stopped working, here are some steps you should take:

1. Check both the public website and the Textpattern administration interface to see if they are working.  Some problems affect only one or the other.

2. If you can log in to the Textpattern admin interface, view the *admin > diagnostics* page in both Low and High detail modes.  Textpattern should report any major database corruption issues.  See "this FAQ":http://textpattern.com/faq/226/why-is-my-database-corrupt for information on repairing these problems.

3. Check with your hosting company to see if they've upgraded or changed something recently, or moved your account to a new server.

4. If you can log in to the Textpattern admin interface, try disabling plugins one by one (on the *admin > plugins* tab).

5. Upload fresh copies of Textpattern's files to your server, to replace any that might have been modified or damaged.  This won't affect content stored in your database.  Make sure you upload all files in all subdirectories.

If none of these steps uncover the problem, you should raise a technical support ticket with your web hosting company.
