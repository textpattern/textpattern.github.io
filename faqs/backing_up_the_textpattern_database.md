\\n[mininav_tutorials](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?id=&media=mininav_tutorials)

This section will describe how to back up your Textpattern installation.

In a nutshell what you will be doing is backing up your current
installation (saving your database and installation files on your server
or Hard Disk). Regular backups of your Database and Files is highly
recommended, especially before making changes (e.g. upgrading to a new
release) to your Textpattern installation.

Below are some way you can back up your Database and Files.

### Backing up with phpMyAdmin {#backing-up-with-phpmyadmin .sectionedit1#backing_up_with_phpmyadmin}

In order to back up your database using phpMyAdmin is first to check and
see if you have phpMyAdmin installed. phpMyAdmin is a tool written in
PHP intended to handle the administration of MySQL over the Web.
Currently it can create and drop databases, create/drop/alter tables,
delete/edit/add fields, execute any SQL statement, manage keys on
fields. Visit the
[phpMyAdmin](https://www.phpmyadmin.net/home_page/index.php) website to
download if you dont have it installed, its free.

<ol>
<li>
Login to phpMyAdmin, using the web address have were you installed it
to.

</li>
<li>
In the left column you should see a drop down menu given you a list of
your Database's you currenty have available to you. Select the database
in which you setup during your installation

</li>
<li>
<p>
On the right side of the screen you should now be able to see a list of
all the tables in database. At the top of the screen you should see

</p>
    Structure, SQL, Search, Query, Export, Operations, and Drop

<p>
You are going to want to select

</p>
    Export

<p>
.

</p>
</li>
<li>
In the box you will want to select all the tables that are related to
Textpattern. IE:textpattern and the other tables with a txp_ prefix.

</li>
<li>
Select SQL as your as the Export option.

</li>
<li>
Under the SQL Options box there is no need to change anything so skip
this step.

</li>
<li>
<p>
In the last box check the option

</p>
    Save as file

<p>
this well allow you to save your database backup to your hard disk for
buring to a cd. Enter a filename in the

</p>
    File name template

<p>
box. Un-Check

</p>
    remember template

<p>
.

</p>
</li>
<li>
Now you can go ahead and select a compression method. And than click Go.

</li>
</ol>
**Note:** Reading the
[phpMyAdmin](https://www.phpmyadmin.net/home_page/index.php)
documentation, which has more detailed backup information, is suggested.

### Backing up with Rob Sable rss_admin_db_manager Plugin {#backing-up-with-rob-sable-rss_admin_db_manager-plugin .sectionedit2#backing_up_with_rob_sable_rss_admin_db_manager_plugin}

This is probably the easiest route to go, when it comes to backing up
your Database. Rob Sable has made a great plugin that allows you to
maintain the Textpattern database directly from the Textpattern Admin
Interface. You can get Rob's plugin from his website
[rss_admin_db_manager](http://www.wilshireone.com/textpattern-plugins/rss_admin_db_manager).

After you install the plugin you well see a new tab at the top of your
screen between

    Admin

and

    View Site

, this is were you well access the db_manager.

<ol>
<li>
<p>
Click on the

</p>
    extensions

<p>
tab and than click on the

</p>
    db backup

<p>
tab.

</p>
</li>
<li>
Under the text “Create a new backup of the beta database” select .sql
file or gzipped file (Compressed File). By default these files well be
stored on the server in the Files folder.

</li>
<li>
Open your FTP program and download the backed up .sql or gzipped file to
your hard disk and burn to a cd.

</li>
</ol>
### Backing up your Files and Images {#backing-up-your-files-and-images .sectionedit3#backing_up_your_files_and_images}

Backing up your files and images is just as important as backing up your
Database. Backing up your files and images is easy to do just by opening
your FTP program and downloading your files and images directory to your
hard disk and burning them onto a CD along side with your database back
up.
