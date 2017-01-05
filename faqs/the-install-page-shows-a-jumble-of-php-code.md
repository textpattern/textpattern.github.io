h1. The install page shows a jumble of PHP code [todo]

Either one of two things is happening:

1. Your server isn't configured to interpret @.php@ files as programs.  

Ask your web host or server admin to set up the necessary @AddType@ magic.  If you're running your own server, please see the "PHP Installation instructions":http://www.php.net/manual/en/install.php.

2. You're trying to open Textpattern's PHP files directly from your own computer, perhaps using a @file:..@ URL.

If you want to run a Textpattern installation on your local machine for test purposes, and have all the necessary server software installed, make sure you access Textpattern via @http://..@ URLs.  If you use @file:..@ URL instead, your web browser will open the PHP files directly, bypassing the web server and PHP software.
