h1. Fatal error: xml_parser_create [todo]

bq. Fatal error: Call to undefined function: xml_parser_create() in /htdocs/www/CMS/textpattern/lib/IXRClass.php on line 147

Textpattern requires the "PHP XML library":http://www.php.net/manual/en/ref.xml.php, which is enabled by default in PHP 4.  It has been disabled on your server.

Some hosting companies (notably Modwest.com) disable PHP XML by default, but allow individual users to turn it on in their PHP configuration.  Please contact your host's technical support if you need help with this.

If you're running PHP on your own server, the installation instructions for PHP XML are listed on "this page":http://www.php.net/manual/en/ref.xml.php.  Please note that installing and configuring a web server is outside the scope of the Textpattern support forum.