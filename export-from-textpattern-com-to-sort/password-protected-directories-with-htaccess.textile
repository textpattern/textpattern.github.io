h1. How do I get password-protected directories (with .htaccess) to co-exist with textpattern? [todo]

Please add the following lines to your .htaccess file:

@ErrorDocument 401 /[path_to_file]/myerror.html@
@ErrorDocument 403 /[path_to_file]/myerror.html@

Make sure you point to existing, static html files.

Explanation: HTTP Basic-Auth first sends @401 Unauthorized@ to request a password from the browser. The webserver tries to serve the corresponding, specified Errordocument. However when the ErrorDocument directive of your webserver is set wrongly, i.e. points to a non-existent file, Textpattern ends up handling the page-request. 

Also See:
 
* "Forum thread":http://forum.textpattern.com/viewtopic.php?pid=91244#p91244 (Thank you, "wet":http://wetzlmayr.com/article/textpattern-plugins!)
* "HTTP reponse codes":http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.2
* "Apache 2.x ErrorDocument directive":http://httpd.apache.org/docs/2.0/mod/core.html#errordocument ("1.3":http://httpd.apache.org/docs/1.3/mod/core.html#errordocument)
