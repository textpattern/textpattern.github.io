h1. Warning: function has been disabled for security reasons [todo]

This means your hosting company or server administrator has disabled one or PHP functions that are used by Textpattern.

Usually they do this in an attempt to tighten security, perhaps after a flaw has been found in an old or poorly written PHP application.

Textpattern requires a fully functional PHP environment to work properly.  PHP with arbitrary functions disabled is not fully functional.

Textpattern has an excellent security record.  The development team regularly audits the code to check for potential security holes, particularly those that have been exploited in other PHP applications.  To date, no known exploits have been released.

You should ask your hosting company to consider removing the block on those functions, particularly @parse_ini_file@, or at least provide an exception for Textpattern.  Textpattern does not use @parse_ini_file@ in an insecure manner.  Disabling that function does not increase security.

If your hosting company insists on continuing to block functions, you should consider switching to a new host that provides a "complete PHP environment":http://team.textpattern.com/hosts.
