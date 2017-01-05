h1. Occasional "Database Unavailable" errors [todo]

_Intermittent_ errors like these are usually caused by an overloaded server.

*Database Unvailable* means Textpattern is unable to connect to the SQL database.  This can happen occasionally on some shared/virtual hosting servers when another user hogs all the available database resources.  If it happens regularly, ask your hosting company whether there's something they can do to fix the problem.

A *500 Internal Server* error could mean any number of things, from a server misconfiguration to a major crash.  Occasional intermittent 500 errors can happen on shared/virtual hosting servers when another user hogs all the available memory, cgi processes, or some other limited server resource.  Again, talk to your hosting company if it happens regularly.

If you're seeing Database Unavailable or 500 Internal Server errors on _every_ page view, without exception, then the problem is most likely a database server crash, or a misconfiguration.  In some cases we've seen hosting companies change important database or server settings without informing their customers first.

If this is the case, check the settings in your textpattern config.php file and make sure you can connect to the database using those settings in phpMyAdmin or similar.  If the database server is working, check your ".htaccess file":http://textpattern.com/faq/52/500-internal-server-error, and consider temporarily disabling it.  If problems persist, talk to your hosting company.
