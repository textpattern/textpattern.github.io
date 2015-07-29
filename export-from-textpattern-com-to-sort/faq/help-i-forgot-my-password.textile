h1. Help, I forgot my password! [todo]

A _publisher_ can reset any user's password.  Provided there's at least one publisher who can log in, ask them to reset your password for you.

If you're the only user with _publisher_ privileges (or the only Textpattern user at all), you'll need to access the database directly to reset your password.  Most web hosting accounts provide direct MySQL access using a program called phpMyAdmin, or via the command line.  If you're not sure how to access either of these, ask your hosting company's tech support.

With phpMyAdmin, or at the MySQL command prompt, run the following query:

bq. @update txp_users set pass=password(lower('pass')) where name='user';@

..where @pass@ is the new password, and @user@ is the login username.

