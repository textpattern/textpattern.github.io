h1. How To Contribute Patches [todo]

You can fetch the latest development source of Textpattern with <txp:permlink id="275" title="Subversion">Subversion</txp:permlink> (SVN). There are "various SVN clients":http://google.com/search?q=svn+client available, for multiple platforms. Tutorials for a couple popular choices can be found in "Textpattern Documentation":http://textpattern.net/wiki/index.php?title=Designer_and_Developer_Interests.

What follows is a quick style guide, to be followed when modifying Textpattern source files to make patches for submission.

h2. Patch Style Guide

# Use UNIX (LF) line feeds/endings rather than Windows (CR+LF) or Mac (CR)[1]
# Use "Real" or actual tabs, rather than spaces[1]
# When naming your patch file, make the name descriptive, and include the current revision number. e.g. fix_category_bug_r1375.patch
# Create ["a new issue":http://code.google.com/p/textpattern/issues/entry?template=User%20enhancement%20request]. Describe what your patch is for. Attach it, if possible, to your issue. If you're unable to do so, upload it somewhere where it can be downloaded, and include a full url to the file.[2]

h2. Notes

fn1. Every decent text editor should allow you to change your line feed and tab settings, as well as what you want your defaults for these two settings to be.

fn2. Patches can also be sent in to the public "developers' mailing list":http://lists.textpattern.com/mailman/listinfo/txp-dev.