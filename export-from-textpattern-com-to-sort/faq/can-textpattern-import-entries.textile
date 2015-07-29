h1. Can Textpattern import entries from.. [todo]

Textpattern has a built-in import function that supports the following applications and formats:

* b2
* Blogger
* Movable Type
* WordPress

In addition, Textpattern can import from any application that supports the "Movable Type Import Format":http://www.sixapart.com/movabletype/docs/mtimport.

If you need to import data from an application that isn't supported here, your options are:

* Write a script or template to export your data using the MT Import Format.

This is how the Blogger import works: you create a template that displays articles in the "MT format":http://textbook.textpattern.net/wiki/index.php?title=Importing_from_Blogger, and save the output as your export file.

* Write your own import script for Textpattern.

The easiest way to do this is to copy one of the existing scripts and modify it to suit.  The scripts are located in "textpattern/include/import/":http://code.google.com/p/textpattern/source/browse#svn%2Fdevelopment%2F4.x%2Ftextpattern%2Finclude%2Fimport.  If you're importing directly from a MySQL database, the simplest script to start with is import_b2.php.
