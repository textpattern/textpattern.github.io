---
layout: document
category: FAQs
published: true
title: "FAQ: 404 error unless I use index.php"
description: What to do if you get a 404 error (unless I use index.php).
tags:
 - Error warnings and notices FAQs
---

# FAQ: 404 error unless I use index.php

Uncomment (remove the `#` from) the following line in your `.htaccess` file:

~~~
#DirectoryIndex index.php index.html
~~~

If that doesn't help, or causes a 500 Internal Server error, contact your web host tech support and ask them about enabling `DirectoryIndex` for PHP files.
