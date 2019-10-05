---
layout: document
category: FAQs
published: true
title: "FAQ: How to reset an admin password"
description: Resetting an administrator password stored in the database via SQL.
---

# FAQ: How to reset an admin password

There are a few ways to reset a Textpattern password:

* Visit the admin-side login page and click _Forgot password?_ then submit your username. Instructions for resetting it will be sent to the email address stored in your Textpattern user account.
* If you cannot remember your login name or do not have access to the email address any more, a Publisher can reset any user's password. Provided there's at least one publisher who can log in, ask them to reset your password for you and/or change your email address details.
* If you're the only user with Publisher privileges (or the only Textpattern user at all), and need to change your password, you'll need to access the database directly. This guide is for you.

## Resetting the password via SQL

Most web hosting accounts provide direct MySQL access using a program called _phpMyAdmin_ (or an equivalent). Some provide command line access to an SQL environment. If you're not sure how to access MySQL, ask your hosting company's tech support.

Within phpMyAdmin, or at the MySQL command prompt, run the following query if you're using any version of MySQL below v8.0:

``` sql
update txp_users set pass=PASSWORD(LOWER('my_pass')) where name='user';
```

where `my_pass` is the new password, and `user` is the login username of the account you wish to change.

If your host is running MySQL v8.0 or higher, you will not be able to use the `PASSWORD()` function. Use the following query instead:

``` sql
update txp_users set pass=CONCAT('*', SHA1(UNHEX(SHA1('my_pass')))) where name='user';
```

Once you have executed one of the above statements, you will be able to login to Textpattern with your username and new password.
