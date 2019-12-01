h1. How do I back up Textpattern? [todo]

Currently, there is no built-in backup or export function in Textpattern.  You can use several tools designed for the purpose:

*phpMyAdmin* is supplied by most web hosts.  The phpMyAdmin FAQ has a brief "explanation":https://www.phpmyadmin.net/documentation/#faq6_4 of how to back up and restore.

*mysqldump* generates SQL backups that can be restored using phpMyAdmin or with the mysql command-line client.  See the "MySQL manual":http://dev.mysql.com/doc/mysql/en/mysqldump.html for details.

*rss_admin_db_manager* is a Textpattern plugin that includes backup and restore functions.  Read more "here":http://www.wilshireone.com/textpattern-plugins/rss_admin_db_manager.

If your server runs *Unix*, and has a *cron* function, here's a sample crontab entry for an automatic weekly backup:

bq. <notextile>0 0 * * 0     mysqldump -Qc -u mydbusername --password=mydbpassword mydbname | gzip > $HOME/txp_backup-`date '+%Y%m%d'`.sql.gz</notextile>

If you don't know what a crontab is, or how to test one, we recommend instead using one of the other options listed above. 

*AutoMySQLBackup* is an open source Unix shell script which automates the process of rotating daily, weekly, and monthly "MySQL backups":http://sourceforge.net/projects/automysqlbackup/.

The remark regarding crontabs applies here as well.