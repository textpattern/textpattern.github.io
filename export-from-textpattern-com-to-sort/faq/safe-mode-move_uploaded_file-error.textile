h1. Safe Mode move_uploaded_file error [todo]

Your hosting company has set PHP's "upload_tmp_dir setting":http://php.net/manual/en/ini.core.php#ini.upload-tmp-dir incorrectly.  You'll need to ask them to fix it.

The upload_tmp_dir setting must refer to a filesystem directory that is accessible and writable by the PHP server process.  In _Safe Mode_, _upload_tmp_dir_ must be within _open_basedir_.  See "here":http://bugs.php.net/38934 and "here":http://bugs.php.net/37236 for technical information.
