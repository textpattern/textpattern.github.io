---
layout: document
category: Administration
published: true
title: User roles and privileges
description: In addition to the administrator, several pre-defined user roles are provided for in Textpattern out-of-the-box.
---

# User roles and privileges

In addition to the administrator (the most powerful type of Textpattern account), several pre-defined user roles are provided for in Textpattern out-of-the-box. Each role has an associated set of administration privileges that are meant to help with leveraging the different responsibilities in a collaborative publishing workflow. If you're building a Textpattern website for yourself (single user), you wouldn't be concerned with these roles. But if you're building a platform to support multi-user contributions, user roles and privileges are likely important factors in your publishing architecture design.

**On this page**:

* Table of contents
{:toc}

## Account types

There are three general types of user accounts in Textpattern, conceptually speaking:

1. administrator account (sole, all-powerful)
2. publishing accounts (the range of roles and privileges)
3. frozen accounts (no rights at all)

More on these in the next sections.

### Administrator account

Only one person has this account; the person who installs Textpattern (presumably you). Though an 'Administrator' can certainly serve in a publishing role, and is labeled 'Publisher' in the [Users panel](https://docs.textpattern.com/administration/users-panel), an administrator isn't necessarily part of collaborative publishing workflow. Site administrators typically handle all server-side issues, update the system when new releases are made, backup the database on a regular schedule, and make decisions about website [security](https://docs.textpattern.com/administration/security). If a website is only a single-user site, this is the only account you need.

### Publishing accounts

These are represented by the six roles defined in Textpattern, which are:

* Publisher
* Managing Editor
* Copy Editor
* Staff Writer
* Freelancer
* Designer

The roles are primarily what this page is concerned with. Publishing roles are taken into consideration when planning a collaborative publishing architecture around the day-to-day activities of producing content (and evolving the presentation).[^users]

[^users]: The [smd_user_manager](https://github.com/Bloke/smd_user_manager) and [smd_bio](https://github.com/Bloke/smd_bio) plugins can be installed and used to expand user account data and produce published bios or user profiles generated from the expanded data.

### Frozen accounts

Frozen accounts are those potentially having the status of 'None', meaning the accounts are preserved but the account holders are denied access to the administration side. This is useful for when collaborators that published content at one point (e.g. 'Copy Editor', 'Staff Writer') are no longer doing so; they've left the editorial team. Content from such accounts will remain safely on the public side of the website under the account names, but those users no longer have administration access to change or delete the content.

## Access to panels per role type

The tables in the following sections show all account types versus access to the panels and functionality, with emphasis on the six publishing roles (from 'Publisher' to 'Designer').[^access]

[^access]: Use of the [smd_faux_role](https://forum.textpattern.com/viewtopic.php?id=33462&p=2) plugin allows easier visualization of what a given role can see and do in the administration side. It's most effective when multiple user accounts exist and they have varying kinds of content contribution histories to compare against. The plugin ensures the administrator's status is not lost and can easily switch back to a Publisher's perspective (can see all functionality) at any time, even between logged-out sessions.

### Default panels access

Default panels represent all existing panels in a fresh install of the software (Table 1).

**Legend:**

* <span class="success">Full</span> means the account or role can access the panel and has no restrictions to functionality. See associated panel documentation in that case by selecting the panel name.
* <span class="warning">Limited</span> means the account or role can access the panel but does not have full read or write access to all functionality. See the 'limited access' descriptions in following sections.
* <span class="error">Blocked</span> means the account or role has no panel access and can not see the panel link in the administration UI (for accounts with 'None' status, the account cannot be used at all).

<div class="tabular-data" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption itemprop="about">Table 1: Core panels access per role</caption>
        <thead>
            <tr>
                <th scope="col">Panel</th>
                <th scope="col">Publisher</th>
                <th scope="col">Managing Editor</th>
                <th scope="col">Copy Editor</th>
                <th scope="col">Staff Writer</th>
                <th scope="col">Freelancer</th>
                <th scope="col">Designer</th>
                <th scope="col">None</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/write-panel">Write</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/articles-panel">Articles</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/images-panel">Images</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/files-panel">Files</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/links-panel">Links</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/categories-panel">Categories</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/comments-panel">Comments</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/sections-panel">Sections</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/pages-panel">Pages</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/forms-panel">Forms</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/styles-panel">Styles</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/diagnostics-panel">Diagnostics</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/preferences-panel">Preferences</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/languages-panel">Languages</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/users-panel">Users</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/plugins-panel">Plugins</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/visitor-logs-panel">Visitor logs</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
        </tbody>
    </table>
</div>

### Extended panels access

When certain administration plugins are installed, they will use — and cause the appearance of — one or both of two extended sections in the back-end:

* Home
* Extensions

These regions will appear in the navigation alongside Content, Presentation, and Admin. The administration plugin itself will add its associated functionality to a panel under these regions accordingly. The respective panels one might see in these regions depend on which plugins are installed that make use of them. 

Table 2 represents the two extended regions. Unlike with default panels, the extended panels are generally not treated individually; rather, roles are treated at the section level, thus why individual panels are not show here. A given role will either have access to the regions (thus all their panels) or won't see them at all.

<div class="tabular-data" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption itemprop="about">Table 2: Extended panels access per role</caption>
        <thead>
            <tr>
                <th scope="col">Panel</th>
                <th scope="col">Publisher</th>
                <th scope="col">Managing Editor</th>
                <th scope="col">Copy Editor</th>
                <th scope="col">Staff Writer</th>
                <th scope="col">Freelancer</th>
                <th scope="col">Designer</th>
                <th scope="col">None</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/home-region">Home</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/extensions-region">Extensions</a></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
        </tbody>
    </table>
</div>

Most likely anyone with Publisher and Managing Editor roles will see the [Extensions administration region](https://docs.textpattern.com/administration/extensions-region) eventually because so many useful administration plugins make use of it.

It is possible that a given administration plugin may introduce finer rights control, which would alter the access pattern suggested in Table 2. For example, a developer may design an administration plugin that allows a Copy Editor or Staff Writer to have limited rights to the plugin's configuration functionality. If that plugin has a panel under Extensions, those two lower user roles will see the [Extensions region](https://docs.textpattern.com/administration/extensions-region)  and only the associated plugin’s panel.

## Limited access specifications

For each publishing role having <span class="warning">Limited</span> access to a panel, the specific rights and restrictions for that panel are clarified in the following sections.

### Publisher limitations

Publishers have the same scope of rights as the administrator (an account type described earlier), except a Publisher cannot delete the administrator's account, whereas an administrator can certainly delete the publisher's.

But the Administrator and Publisher don't compete. Unlike administrators, Publishers represent the top position of the editorial team, which is focused on website architecture, content, and design. Publishers may not actually work on all those things - from a collaborative standpoint they're more a decision maker than a doer - but they have the power in the CMS to step in and override something if necessary.

There should only be one Publisher, functionally speaking. Anyone who needed similar rights, but not the absolute same rights, should be a 'Managing Editor'.

### Managing Editor limitations

Managing Editors are essentially the Publisher's right hand, a transition role from process governance to content production. A given website project might define specific responsibilities for the Managing Editor outside of the CMS, like recruiting freelance writers, maintaining the editorial calendar, and so on.

Managing Editors have the same privileges as Publishers throughout the administration side, with one exception:

* On the [Users panel](https://docs.textpattern.com/administration/users-panel): They can see basic data types (Login, Real name, Email, Privileges, Last log in, etc) for all user accounts, and edit full account data for any inferior role, but cannot edit account data for Publishers or other Managing Editors.

In addition to the noted panel limitation, Managing Editors don't have as much detailed debugging info available to them either when the production status is higher.

### Copy Editor limitations

Copy Editors aren't concerned with governance activities like the higher roles are. The Copy Editor's focus is specifically on editing the content produced by writers and making final preparations and/or checks before publishing. Such preps and checks might include formatting copy and adding images (or verifying that it's been done correctly), assigning output designators (the section and categories fields), adding custom field data and metadata, setting publishing date, and so forth.

Copy Editor privileges are pretty straight forward, either having full access to panels or no access at all, with one exception:

* On the [Users panel](https://docs.textpattern.com/administration/users-panel): They can see basic data types for all user accounts, but they can only edit their own account data.

### Staff Writer limitations

The Staff Writer is one of two roles primarily concerned with writing articles (the other being Freelancer). They don't need access to much of the administration side except those panels concerned with content, with a few limitations:

* On the [Write panel](https://docs.textpattern.com/administration/write-panel): They can create, edit, publish, and delete their own articles. They can see the full articles of other user accounts, but not edit them in any way.
* On the [Images panel](https://docs.textpattern.com/administration/images-panel): They can upload images and edit the ones they upload. They can see the images uploaded by other user accounts, but they cannot edit or delete those images.
* On the [Files panel](https://docs.textpattern.com/administration/files-panel):  They can upload files and edit the ones they upload. They can see the names of files uploaded by other user accounts, but they cannot edit or delete those files.
* On the [Users panel](https://docs.textpattern.com/administration/users-panel): They can edit their own user account details, but not see anyone else's account information.

### Freelancer limitations

Freelancers are external to the website's editorial team. You can think of them as 'guest authors'. Like Staff Writers, Freelancers write articles, but that's mostly it due to their external status. Limitations are:

* On the [Write panel](https://docs.textpattern.com/administration/write-panel): They can create new 'Draft' articles and switch their status to 'Pending', but not publish them 'Live'. They can see the full articles of other user accounts, but not edit them in any way.
* On the [Users panel](https://docs.textpattern.com/administration/users-panel): Same as Staff Writer.

### Designer limitations

A Designer's focus is uniquely on site structure and presentation, but a Designer can see some content too to help inform presentational decisions. Limitations are:

* On the [Write panel](https://docs.textpattern.com/administration/write-panel): They can see anyone's full article regardless of status, but not edit anyone else's articles in any way. Nor can a Designer create articles.
* On the [Users panel](https://docs.textpattern.com/administration/users-panel): Same as Staff Writer.

## Modifying user roles and privileges

You can go beyond assigning roles by installing the [smd_user_manager](https://github.com/Bloke/smd_user_manager) plugin and modify the default role titles, creating new role types, and changing the privileges a given role has.

The plugin also allows creating custom user groups in addition to changing individual roles, thus allowing fine-grained control over roles and privileges. Follow the instructions that come with the plugin.

## Multi-contributor security

It goes without saying that when granting roles to site contributors, be sure the people you're giving privileges to are trustworthy. The higher roles, like Publisher and Managing Editor, have a lot of power and can easily change things. But even lesser roles should be granted to people with some attention.

For example, the Designer role is restricted to those areas of the administration side that may play a role in presentation, including Page templates and Form templates. Such restrictions may seem sufficiently secure on the surface, but if the 'Allow PHP in pages?' preference is set to 'Yes' in the [Preferences panel](https://docs.textpattern.com/administration/preferences-panel#allow-php-in-pages) panel, then a Designer *could* use PHP in Page templates and/or Form templates in a malicious way to gain administrator-like power and cause problems. Setting the preference to 'No' would prevent such a possibility.

When it comes down to it, security is a governance concern, relying just as much on smart human decisions as code lockdown. Don't give roles to people you can't trust and make sure your editorial workflows are documented so each contributor knows what's expected of them by role assignment.