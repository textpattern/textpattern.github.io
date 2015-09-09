h1. How do I create a MySQL database? [todo]

As mentioned in the brief "installation instructions":http://textpattern.com/download/, Textpattern requires a MySQL database and user to be created before installation.

The procedure for creating a database and user varies between hosting companies.  Some hosts will create one for you.  Others provide a control panel like cPanel or Webmin with a MySQL management section.  You'll need to read the documentation provided by your host for more information.

You don't need to do anything other than create an empty database and a user with sufficient permissions to create and modify tables.

Once you have created or located your database, run the Textpattern installer and follow its directions.  (See also: " ??Detailed Installation Instructions?? ":http://textpattern.net/wiki/index.php?title=Detailed_Installation_Instructions.)

If you receive an "Access denied" or mysql_connect error during installation, it usually means that one or more of the MySQL parameters (host, database name, user name, password) are incorrect.  Double check those values, and consult your hosting company's technical support resources if problems persist.
