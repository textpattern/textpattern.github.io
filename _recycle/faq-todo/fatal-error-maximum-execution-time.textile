h1. Fatal error: Maximum execution time.. [todo]

Some servers set a time limit on PHP scripts, to stop long operations from continuing indefinitely.

Some Textpattern functions can take several minutes to execute (specifically, uploading files and importing article data).  This can sometimes exceed the default time limit set by hosting companies.  Textpattern attempts to automatically raise the PHP script time limit where possible.  If you've received a _maximum execution time_ error, it means Textpattern was unable to raise its time limit, so you'll have to do it manually.

The procedure for raising the time limit is system dependent.  Please see the "PHP manual":http://php.net/manual/en/ref.info.php#ini.max-execution-time for details, and check your hosting company's documentation for more information.

