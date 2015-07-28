h1. Fatal error: Call to undefined function.. [todo]

bq. Fatal error: Call to undefined function: formatmentionslink() in /home/somewhere/textpattern/lib/txplib_misc.php(429) : eval()’d code on line 172

bq. Fatal error: Call to undefined function: checkcommentsallowed()

These and similar errors immediately after an *upgrade* are usually caused by one of two things:

* Old plugins that haven't been updated to work with the current version of Textpattern
* Not updating or uploading all of Textpattern's files correctly.  Make sure you upload all the files in all subdirectories.

Similar errors immediately after *installation* usually indicate:

* An incorrect @txpath@ setting in config.php.  The value automatically detected by the setup process is almost always correct, so don't change it unless you know what you're doing.
* Textpattern .php files that are missing or in the wrong location.
