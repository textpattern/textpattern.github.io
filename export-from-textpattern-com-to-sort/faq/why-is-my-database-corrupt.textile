h1. Why is my database corrupt? [todo]

It's possible for Textpattern's database to become corrupted.  There are several possible causes:

* A server crash
* Server hardware failure
* A MySQL bug

It should not be possible for a user application like Textpattern to damage a MySQL table.  (It might be possible for Textpattern to trigger a bug in MySQL, but the fault in that case lies with MySQL).

Occasional database corruption is a risk on shared hosting services, but should be rare.  If you're experiencing frequent corruption problems you should talk to your hosting company, and consider moving to a more reliable service.

In most cases a corrupt table can be repaired easily with little or no permanent damage.  Many hosting companies and "web hosting":/hosting control panels provide a quick method of checking and repairing MySQL tables, so check their knowledge base and documentation.

The MySQL manual has a section on "checking and repairing tables":http://dev.mysql.com/doc/mysql/en/table-maintenance.html.  TextDrive customers will find phpMyAdmin table repair instructions in the "knowledge base":http://help.textdrive.com/index.php?pg=kb.page&id=115.

There is also "a Textpattern plugin (rss_admin_db_manager)":http://www.wilshireone.com/textpattern-plugins/rss_admin_db_manager which can allow you to repair tables in your Textpattern database.

In severe cases a corrupt table can cause data loss.  You'll need to restore a "backup":http://textpattern.com/faq/107/how-do-i-back-up-textpattern if this is the case.