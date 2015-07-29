h1. Comment emails aren't received [todo]

Textpattern uses PHP's built-in mail functions to send email.  Email should work on any properly configured system.  Unfortunately, not all web hosts configure PHP's mail settings correctly - particularly on Windows servers.

Additionally, some servers perform spam filtering on outgoing email, or block messages that don't have a recognized @From:@ address.

Ask your web host's technical support about PHP mail to find out if it's properly configured, and whether there are any restrictions.  Textpattern uses the Publisher user's email address as the @From:@ address when sending password emails, and the article author's email address when sending comment notifications.

If you're running Textpattern on your own server, please check your "email settings":http://www.php.net/manual/en/ref.mail.php in php.ini.

On Windows servers, or Unix servers that block or restrict access to sendmail, you'll need to set @STMP@ and @smtp_port@.
