h1. Did someone hack my site? [todo]

_Attempted_ security breaches are a daily occurrence at popular web sites.  Vandals regularly scan thousands of web sites at a time for known security holes in common software.  Only a small fraction of those sites will be vulnerable.  On sites that aren't, the only side effect will usually be a puzzling entry in the traffic log.

*In 4 years, there have been no confirmed reports of a successfully exploited security hole in a properly maintained Textpattern web site.*

There have been occasional reports of hacked Textpattern sites.  In all cases these have been traced to security holes in _other applications_, or in the web server itself, which were used to take complete control of the user's account.  There is nothing Textpattern can do to defend against security holes in other applications.  It's up to you and your hosting company to keep your applications and server up-to-date with security patches.

The Textpattern development team takes security seriously.  We don't expect our record to remain perfect forever.  But we do take a proactive approach to security, regularly auditing the Textpattern source code for potential holes.  We don't wait for the bad guys to find them first.

There are several steps you can take to maximize the security of your web site:

* Keep your copy of Textpattern up to date.
* Keep your plugins up to date. 
* Check the *admin > diagnostics* page for security warnings.
* If you use other PHP or CGI applications in the same account, like a photo gallery or form mail application, make sure they are maintained and up-to-date.
* Don't leave test code or unused PHP/CGI applications on your server.
* Pay attention to security announcements from your hosting company or server admin.
* If you maintain your own server, keep it up to date with security patches.

Please note that the Textpattern development team has no control over the quality or security of plugins, add-ons and modifications.  It's up to you to evaluate the security of third-party code.

If you think you have found a security problem in Textpattern, *please do not publish sensitive information* until the development team has had time to respond.  Information about potential security problems should be reported to <txp:email email="security@textpattern.com" linktext="security at textpattern dot com" />.