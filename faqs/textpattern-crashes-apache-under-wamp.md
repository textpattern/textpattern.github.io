h1. Textpattern crashes Apache under WAMP [todo]

A "known bug":http://bugs.php.net/bug.php?id=33292 in either PHP or Apache causes the Apache process to crash during Textpattern setup on certain versions of WAMP (PHP 5, Apache/1.3.33).

The bug is triggered by the apache_get_modules() function call.

There are no plans to alter Textpattern to work around the problem, since the bug is in the web server itself.  We think it's reasonable to include "a web server that doesn't crash" in the list of Textpattern system requirements.

See also "this forum thread":https://forum.textpattern.io/viewtopic.php?pid=77282#p77282 and "weblog post":https://textpattern.com/weblog/69/textpattern-and-wamp.
