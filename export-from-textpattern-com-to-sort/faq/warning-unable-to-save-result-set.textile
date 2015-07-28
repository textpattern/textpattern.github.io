h1. Warning: Unable to save result set.. [todo]

 <br /><br />

bq. Warning: mysql_query() [function.mysql-query]: Unable to save result set in /home/somewhere/public_html/blog/textpattern/lib/txplib_db.php on line 53

The "Unable to save result set" error is generally associated with major MySQL problems, like a corrupt table or faulty install.  It is not caused by Textpattern.

In some cases we've found that repairing the MySQL database fixes this, even though CHECK TABLE reported no problems at all.

The PHP manual has a "FAQ topic":http://www.php.net/manual/en/faq.databases.php#faq.databases.upgraded on a PHP installation problem that can cause this error.

The MySQL manual has a section on "checking and repairing tables":http://dev.mysql.com/doc/mysql/en/table-maintenance.html.

For "TextDrive":http://textdrive.com/ users, the "TxD Knowledge Base":http://kb.textdrive.com/ has step-by-step instructions on "how to repair a table":http://kb.textdrive.com/article/repairing-a-mysql-table-myisam.

If your hosting company provides phpMyAdmin, you can select a table, then use the "Repair table" option under the Operations tab.

There is also "a Textpattern plugin (rss_admin_db_manager)":http://www.wilshireone.com/textpattern-plugins/rss_admin_db_manager which can allow you to repair tables in your Textpattern database.