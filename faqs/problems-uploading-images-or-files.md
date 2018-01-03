h1. Problems uploading images or files [todo]

In order to use the Textpattern administration interface to upload images and files (via *content > images* or *content > files*), you'll need to ensure Textpattern has access to the necessary directories.

Both image and file uploads require write access to a temporary directory.  Textpattern attempts to find a writable temp directory during installation, and will automatically use it if one is found.

If no writable temporary directory was found, Textpattern will display a warning message on your *admin > diagnostics* page.

If you've recently moved Textpattern to a new server, you might need to alter the temporary directory setting to point to a new location.

To force Textpattern to search for a new temporary directory:

1. Go to *admin > preferences > advanced preferences*

2. Find the "Temp folder" setting, under "Admin"

3. Delete the contents of the Temp folder setting, and select the Save button.

If Textpattern is able to find a suitable temporary directory, it will automatically fill in the new setting.  If the Temp folder setting stays blank, you'll need to set it manually:

1. On the *admin > diagnostics* page, make a note of the _Textpattern path_ setting.  Typically it looks something like @/home/foo/public_html/textpattern@.

1. On your web server, using an FTP client, shell access or a file manager provided by your hosting company, find the @tmp@ folder located inside the _Textpattern path_ directory.

2. Change the permissions on this @tmp@ folder to make it writable by the web server process.  Your hosting company may provide specific instructions on this.  On a Unix server, you may have to make the directory "world writable" by setting its permissions to @777@, but before you do this, always consult your webhost, because @777@ permissions are a serious security risk on shared webhosts and frowned upon in other hosting setups, so it's safer to first try @700@ or (if that fails) @711@ or @755@ permissions.

3. On the *admin > preferences > advanced* page, change the _Temp folder_ setting to the full path to this _tmp_ folder.  If your _Textpattern path_ is @/home/foo/public_html/textpattern@, that means your _Temp folder_ setting should be @/home/foo/public_html/textpattern/tmp@.

Regardless of whether the temp directory is detected automatically or set manually, you'll also need to make the @files@ and @images@ directories writable.  These are located in the same parent directory that contains your _Textpattern path_ - using the above example, @/home/foo/public_html/images@ and @/home/foo/public_html/files@.

Using the same method described in Step 2 above, change the permissions on both of these directories to make them writable by the web server process.

Once the Temp folder is set correctly and writable, and the images and files folders are writable, file and image uploads should work correctly.
