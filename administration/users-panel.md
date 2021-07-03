---
layout: document
category: Administration
published: true
title: Users panel
description: The Users panel is where user accounts are accessed and managed.
---

# Users panel

The Users panel is where user accounts are accessed and managed.

On this page:

* [User accounts table](#user-accounts-table)
  * [Add new author button](#add-new-author-button)
  * [Change your password button](#change-your-password-button)
  * [Administrator controls](#administrator-controls)
* [User data form](#user-data-form)
* [Extending user account functionality](#extending-user-account-functionality)
  * [Administration-side management and data extension](#administration-side-management-and-data-extension)
  * [Autonomous registration, log in, and data access/submission](#autonomous-registration-log-in-and-data-accesssubmission)

## User accounts table

The default view of the **Users** panel is the user accounts table, which displays the following data for each user:

* **Login** (username; links to user's account/profile data)
* **Real name**
* **Email**
* **Privileges** (in this sense, *role type*)[^1]
* **Last log in** (date and time)

Associated with the user accounts table (at top of table) are two data editing buttons: **Add new author** and **Change your password**. Their respective labels suggest who can see and use them.

### Add new author button

The administrator, and any user having a 'Publisher' role[^2], can see and use the **Add new author** button to create a new user account. Administrators and Publishers can also edit any user account by selecting the username in the **Login** column, which opens up the user data form.

All other users with lesser roles will see their account record only, and will not see the **Add new author** button.

### Change your password button

All users can see and use the **Change your password** button at the top of the table, which functions in context of the logged in user. When selected, it opens the **Change your password** form, which consists of a single field for your new password, and a checkbox option to have the new password emailed to you, if desired.

### Administrator controls

Administrators and Publisher can see and use a selection list control under the user accounts table. The control menu works in relation to the check boxes that begin each table record.

## User data form

Administrators, publishers, and the account owner can open the user account data form by selecting the username in the **Login** column of the user accounts table.

As the data form makes clear, only the **Real name**, **Email**, and **Privileges** data is editable. **Login** names (usernames) can not be edited here[^3], and the last login date/time values are not displayed.

Only an administrator or Publisher can change a user's privileges, which can be done here or using the administrator controls mentioned above.

## Extending user account functionality

It's common for site owners of multi-user sites to extend Textpattern's core functionality around user account management. The specifics of such extension is beyond scope of this documentation, but we can point you in the right direction if you want to explore it.[^4]

There are two convenient contexts for talking about user accounts extension:

1. Administration-side management and data extension
2. Autonomous (self) registration, log in, and data access/submission

### Administration-side management and data extension

The most popular approach for administration-side extension of user accounts, indeed what should nearly be core functionality, is to install and use two plugins that work together:

* [smd_user_manager](https://forum.textpattern.com/viewtopic.php?id=36558) - This plugin provides a much richer set of features for managing user accounts, including modifying the core user roles and privileges.
* [smd_bio](https://forum.textpattern.com/viewtopic.php?id=31496) - This plugin extends the user account data itself, so you can create user bios or profiles having any data structure you want and display that data on the front-side of a website.[^5]

### Autonomous registration, log in, and data access/submission

There are situations (membership communities, employee intranets, magazine article contributions, etc.) where people may not need physical access to the administration-side, but still need user accounts to access specific information, contribute content, or edit their own account details. Various plugins can help with the initial setup of this front-side access, which effectively abstracts the administration-side UI panels away from such users. Depending on what you need or want to do, there are various plugins to try:

* [cbe_frontauth](https://forum.textpattern.com/viewtopic.php?id=36552) - A plugin that enables front-side log in abilities for *existing* account holders. This plugin is often used in combination with [cbe_members](https://forum.textpattern.com/viewtopic.php?id=37760).
* [mem_self_register](https://forum.textpattern.com/viewtopic.php?id=8520) - A plugin similar to cbe_frontauth, but also enables the ability to register an account too. This plugin is often used in combination with [mem_form](https://forum.textpattern.com/viewtopic.php?id=25247).
* [ign_password_protect](https://forum.textpattern.com/viewtopic.php?id=8799) - A plugin that enables you to password protect part or all of a website's front-end, and create varying rights of access to the protected areas.

## Pages and users listed per page

At the very bottom of the list you will find a pagination and links for next and previous pages if there are more pages. You can also change the number of users listed per page by selecting another value from the number range.

[Next: Plugins panel](/administration/plugins-panel)

[^1]: See [User roles and privileges](/administration/user-roles-and-privileges) for how roles and privileges match up.

[^2]: A Publisher has the same rights and power as the site administrator, but can not delete or demote the administrator account. The administrator can delete or demote the Publisher at any time. The only way to change the administrator account is to do so directly in the users table of the database. This might need done, for example, when a website is being delivered to a client and ongoing support from the original site administrator (builder) is no longer needed or wanted.

[^3]: The only way to change a username is to change the value directly in the database table using phpMyAdmin, the command-line, or by whatever other means the database administrators prefers.

[^4]: User accounts extension requires the installation and use of various plugins. The plugins mentioned here are reliably maintained.

[^5]: This plugin adds a **Bio config** panel option to the [Extensions region](/administration/extensions-region), as an example of how the Extensions region is used.
