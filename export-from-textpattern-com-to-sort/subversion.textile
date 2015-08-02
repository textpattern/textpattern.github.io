h1. Subversion (now Github) [todo]

The Textpattern source code is maintained on "Github":https://github.com/textpattern/textpattern. From there you can clone the repo, make changes to it and issue a Pull Request so we can merge your amendments in. You can also raise an issue if you find a defect or have a feature request.

There are "beginner guides for using git":http://www.sitepoint.com/git-for-beginners/ but if you need any specific help that's not answered elsewhere, head on over to the "forum":http://forum.textpattern.com and ask your question there.

--

*%{color: #900;}IMPORTANT: The remainder of this article is for historical purposes only. It is no longer current, so please ignore it.%*

The following assumes you have a properly installed copy of "Subversion":http://subversion.tigris.org/, and a working knowledge of the command line.

*%{color: #900;}Warning:%* Textpattern-current is the developers' working copy of the Textpattern source code. It includes the latest bug fixes and features, but the most recent updates have usually received only light testing. It is not recommended for use on a live site. Use at your own risk, make backups first, etc.

h2. How do I fetch the current version of Textpattern?

bc. > cd /path/to/txp
> svn co http://textpattern.googlecode.com/svn/development/4.x
A 4.x/textpattern
A 4.x/textpattern/license.txt
A 4.x/textpattern/tmp
[..etc..]

h2. How do I find out which subversion revision I have?

bc. > cd /path/to/txp/4.x
> svn log -q -r BASE
------------------------------------------------------------------------
r105 | zem | 2005-02-25 11:17:30 +1100 (Fri, 25 Feb 2005)
------------------------------------------------------------------------

h2. How do I find out what the latest available revision is?

bc. > cd /path/to/txp/4.x
> svn log -q -r HEAD
------------------------------------------------------------------------
r108 | zem | 2005-02-26 10:41:17 +1100 (Sat, 26 Feb 2005)
------------------------------------------------------------------------

h2. How do I update to the latest revision?

bc. > cd /path/to/txp/4.x
> svn update
U textpattern/include/txp_prefs.php
U textpattern/lib/txplib_misc.php
U textpattern/_update.php
Updated to revision 108.

h2. How do I see what's changed between my last update and the latest revision?

bc. > cd /path/to/txp/4.x
> svn log -r BASE:HEAD
------------------------------------------------------------------------
r105 | zem | 2005-02-25 11:17:30 +1100 (Fri, 25 Feb 2005) | 1 line
fix date permlinks in recent_articles and some other tags
------------------------------------------------------------------------
r106 | zem | 2005-02-25 14:34:22 +1100 (Fri, 25 Feb 2005) | 1 line
fix typo in get_uploaded_file() (thanks Manfre)
------------------------------------------------------------------------
r107 | zem | 2005-02-26 10:33:18 +1100 (Sat, 26 Feb 2005) | 1 line
remove extra stripslashes
------------------------------------------------------------------------
r108 | zem | 2005-02-26 10:41:17 +1100 (Sat, 26 Feb 2005) | 1 line
fix handling of Windows tempdir paths
------------------------------------------------------------------------

h2. How do I update to a specific revision, or revert to a previous revision?

bc. > cd /path/to/txp/4.x
> svn update -r 105
U textpattern/include/txp_prefs.php
U textpattern/lib/txplib_misc.php
U textpattern/_update.php
Updated to revision 105.

h2. What's the best way to upload a copy of Textpattern-current to my web site?

bc. > cd /path/to/txp
> svn export 4.x test

Then zip or tar the contents of @/path/to/txp/test@, upload it to your web site, and unzip/untar in the appropriate place.

Subversion export won't overwrite an existing directory, so you'll need to erase or rename @/path/to/txp/test@ before each subsequent export, or use @svn export --force 4.x test@.

h2. How do I submit a patch to the developers?

After editing files in /path/to/txp/4.x:

bc. > cd /path/to/txp/4.x
> svn update
> svn diff > /path/to/txp/myfile.patch

...then email @/path/to/txp/myfile.patch@ <txp:permlink id="276" title="How To Contribute Patches">to the developers</txp:permlink>. Use a descriptive filename, including the current revision number (e.g. "fix_category_bug_r108.patch"). If your update includes new files, use @svn add path/to/myfile.php@ to make sure they're included in the patch.

Make sure you examine the patch file to ensure it doesn't include any unintentional changes. In particular, whitespace differences (typically caused by a text editor converting tabs to spaces) can inflate the size of a patch. If that seems to be the case, try this instead:

bc. > svn diff --diff-cmd diff -x -w > /path/to/txp/myfile.patch

h3. Important

While a patch may include changes to multiple files, each patch should include only one thing - one bugfix, or one new feature. If you have more than one independent bugfix or feature to submit, you should break them up and send them as separate patches.

Make sure each patch is against a clean copy of the current revision, i.e. it doesn't include the changes submitted in previous patches. @svn revert -R@ will restore a pristine working copy from the repository (this will overwrite your local changes, so back them up elsewhere first).

h2. Windows

For those of you who use windows, there is a nice GUI client called "TortoiseSVN":http://tortoisesvn.tigris.org/ - with "a good user manual":http://tortoisesvn.net/support too. It-s a right-click menu integrated tool which makes your life easy if you don-t know too much about SVN.

Just install it, create an empty folder, and right click TortoiseSVN > Checkout... on the new SVN menu.

Point there to the URL of the repo you want to browse contents from, and you've got the repo contents on your directory.

You can do all things listed above with "TortoiseSVN":http://tortoisesvn.tigris.org/, but be sure to read "the manual":http://tortoisesvn.net/support first.