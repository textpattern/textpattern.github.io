h1. Where can I download .htaccess? [todo]

The .htaccess file is inside the main directory in both the .zip and .tar.gz downloads.  Some file browsers (particularly on macOS) don't display files beginning with a '.' by default, but it's there, honest.

You can also fetch it from the "subversion repository (4.0.7 release)":http://svn.textpattern.com/releases/4.0.7/source/.htaccess.

If you're planning on using clean URLs, you'll need to make sure you upload this file to your website.  The safest way to do this is usually to upload the 'textpattern-4.0.7' _folder_ to your server, then moving it to the correct place, rather than selecting and uploading the _contents_ of the 'textpattern-4.0.7' folder.

Some servers require manual changes to .htaccess for Clean URLs to work, and others don't support it at all.  You'll find more information in  "this FAQ":/faq/66/404-error-when-linking-to-article-pages.
