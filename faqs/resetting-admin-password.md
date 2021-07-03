---
layout: document
category: FAQs
published: true
title: "FAQ: How to reset an admin password"
description: Resetting an administrator password stored in the database via SQL.
---

# FAQ: How to reset an admin password

Your options for resetting a forgotten Textpattern account password.

**Contents**

* Table of contents
{:toc}

## Simple reset procedure

1. Go to the login page of the website's back-end; usually located at *example.com/textpattern* (unless the site administrator changed the default location).
2. Click the 'Forgot password?' link.
3. Enter your login name (username) in the resulting Name field.
4. Hit the **Reset password** button.

Instructions for resetting the password will be sent to the email address on record for the login name provided.

Administrators can not use this method. See last section.

## If you forgot your login name

If you cannot remember your login name, the website's administrator, or any other account holder with Publisher rights, can reset your password for you. This requires knowing who those people are and how to contact them, however.

## If you do not have access to account email address

See above for forgotten login name.

## Reset procedure for administrators

If you are the website's administrator and forgot your password, you'll need to access the database and change the password there.

Most web hosting accounts provide direct access to a MySQL database via phpMyAdmin (or an equivalent). Some provide command line access to an SQL environment. If you're not sure how to access MySQL, ask your hosting provider's tech support.

When you gain MySQL query access, run the following query, where `my password` is the new password, and `user` is the login name of the account you wish to change:

``` sql
UPDATE txp_users SET pass=CONCAT('*', SHA1(UNHEX(SHA1('my password')))) WHERE name='user';
```

You will then be able to login to Textpattern with your login username and new password.
