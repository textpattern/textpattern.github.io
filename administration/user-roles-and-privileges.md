---
layout: document
category: Administration
published: true
title: User roles and privileges
description: In addition to the administrator, several pre-defined user roles are provided for in Textpattern out-of-the-box.
---

# User roles and privileges

In addition to the administrator (the most powerful type of Textpattern account), several pre-defined user roles are provided for in Textpattern out-of-the-box. Each role has an associated set of administration privileges that are meant to help with leveraging the different responsibilities in a collaborative publishing workflow. If you are building a website for yourself (single user), you wouldn't be concerned with these roles. But if you are building a platform to support multi-user contributions, user roles and privileges are likely important factors to consider in your collaborative process.

**Contents**

* Table of contents
{:toc}

## Account types

Three general types of user accounts exist in Textpattern, conceptually speaking:

1. administrator account (sole, all-powerful)
2. publishing accounts (the range of roles and privileges)
3. frozen accounts (no rights at all)

More on these in the next sections.

### Administration account

Only one person has this account; the person who installs Textpattern (presumably you). Though an 'Administrator' can certainly serve in a publishing role, and is labeled 'Publisher' in the [Users panel](/administration/users-panel), an administrator isn't necessarily part of collaborative publishing workflow. Website administrators typically handle all server-side issues, update the system when new releases are made, backup the database on a regular schedule, and make decisions about website [security](/administration/security). If a website is a single-user site only, this is the only account you need.

### Publishing accounts

Publishing roles are taken into consideration when planning a collaborative publishing architecture around the day-to-day activities of producing content, evolving the presentation of the website, and so forth.[^users]

The six roles defined in Textpattern by default:[^custom]

* Publisher
* Managing Editor
* Copy Editor
* Staff Writer
* Freelancer
* Designer

The rest of this document is primarily concerned with these roles.

[^users]: The [smd_user_manager](https://github.com/Bloke/smd_user_manager) and [smd_bio](https://github.com/Bloke/smd_bio) plugins can be installed and used to expand user account data and produce published bios or user profiles generated from the expanded data.

[^custom]: The administrator can modify roles and privileges via plugins. For example, [rah_privileges](https://github.com/jools-r/rah_privileges/releases/tag/0.1.3) ([background](https://forum.textpattern.com/viewtopic.php?pid=310537#p310537)) can easily and quickly change a role’s access rights. And [smd_user_manager](https://github.com/Bloke/smd_user_manager) can modify the default role titles, altogether creating new role types and associated rights, as well create custom user groups for even finer control over roles and privileges. Follow the instructions that come with the plugins.

### Frozen accounts

Frozen accounts are those potentially having the status of 'None', meaning the accounts are preserved but the account holders are denied access to the administration side. This is useful for when collaborators that published content at one point (e.g. 'Copy Editor', 'Staff Writer') are no longer doing so; they've left the editorial team. Content from such accounts will remain safely on the public side of the website under the account names, but those users no longer have administration access to change or delete the content.

## Access to panels per role type

The tables in the following sections show all account types versus access to the panels and functionality, with emphasis on the six publishing roles (from 'Publisher' to 'Designer').[^access]

[^access]: Use of the [smd_faux_role](https://forum.textpattern.com/viewtopic.php?id=33462&p=2) plugin allows easier visualization of what a given role can see and do in the administration side. It's most effective when multiple user accounts exist and they have varying kinds of content contribution histories to compare with. The plugin ensures the administrator's status is not lost and can easily switch back to a Publisher's perspective (i.e. can see all functionality) at any time, even between logged-out sessions.

### Default panels access

Default panels represent all existing panels in a fresh install of the software.

#### Content panels

<div class="tabular-data" tabindex="0" aria-labelledby="table1-caption" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption id="table1-caption" itemprop="about">Table 1: Rights (<span class="success">Full</span><sup>&#x002a;</sup>, <span class="warning">Limited</span><sup>&#x2020;</sup>, <span class="error">Blocked</span><sup>&#x2021;</sup>) per role for Content panels.</caption>
        <thead>
            <tr>
                <th scope="col">Role</th>
                <th scope="col"><a href="/administration/write-panel">Write</a></th>
                <th scope="col"><a href="/administration/articles-panel">Articles</a></th>
                <th scope="col"><a href="/administration/images-panel">Images</a></th>
                <th scope="col"><a href="/administration/files-panel">Files</a></th>
                <th scope="col"><a href="/administration/links-panel">Links</a></th>
                <th scope="col"><a href="/administration/categories-panel">Categories</a></th>
                <th scope="col"><a href="/administration/comments-panel">Comments</a></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">Publisher</th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
            </tr>
            <tr>
                <th scope="row">Managing Editor</th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
            </tr>
            <tr>
                <th scope="row">Copy Editor</th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
            </tr>
            <tr>
                <th scope="row">Staff Writer</th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row">Freelancer</th>
                <td><span class="warning">Limited</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row">Designer</th>
                <td><span class="warning">Limited</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row">None</th>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
        </tbody>
				<tfoot>
					<tr><td colspan="8">
						<ol class="list--refmarks">
							<li>Full rights — The role has access to panel and no restrictions to functionality. See associated panel documentation via column headers.</li>
							<li>Limited rights — The role has access to panel but can only see or use some of the panel's functionality. See <a href="#limited-access-specifications">Limited access specifications</a>.</li>
							<li>Blocked — The role has no panel access, thus cannot see the panel link in the back-end navigation. Accounts having the status of 'None' cannot be used at all.</li>
						</ol>
					</td></tr>
				</tfoot>
    </table>
</div>

#### Presentation panels

<div class="tabular-data" tabindex="0" aria-labelledby="table2-caption" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption id="table2-caption" itemprop="about">Table 2: Rights (<span class="success">Full</span><sup>&#x002a;</sup>, <span class="warning">Limited</span><sup>&#x2020;</sup>, <span class="error">Blocked</span><sup>&#x2021;</sup>) per role for Presenation panels.</caption>
        <thead>
            <tr>
                <th scope="col">Role</th>
                <th scope="col"><a href="/administration/themes-panel">Themes</a></th>
                <th scope="col"><a href="/administration/sections-panel">Sections</a></th>
                <th scope="col"><a href="/administration/pages-panel">Pages</a></th>
                <th scope="col"><a href="/administration/forms-panel">Forms</a></th>
                <th scope="col"><a href="/administration/styles-panel">Styles</a></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">Publisher</th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
            </tr>
            <tr>
                <th scope="row">Managing Editor</th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
            </tr>
            <tr>
                <th scope="row">Copy Editor</th>
                <td><span class="error">Blocked</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row">Staff Writer</th>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row">Freelancer</th>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row">Designer</th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
            </tr>
            <tr>
                <th scope="row">None</th>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
        </tbody>
				<tfoot>
					<tr><td colspan="6">
						<ol class="list--refmarks">
							<li>Full rights — The role has access to panel and no restrictions to functionality. See associated panel documentation via column headers.</li>
							<li>Limited rights — The role has access to panel but can only see or use some of the panel's functionality. See <a href="#limited-access-specifications">Limited access specifications</a>.</li>
							<li>Blocked — The role has no panel access, thus cannot see the panel link in the back-end navigation. Accounts having the status of 'None' cannot be used at all.</li>
						</ol>
					</td></tr>
				</tfoot>
    </table>
</div>

#### Admin panels

<div class="tabular-data" tabindex="0" aria-labelledby="table3-caption" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption id="table3-caption" itemprop="about">Table 3: Rights (<span class="success">Full</span><sup>&#x002a;</sup>, <span class="warning">Limited</span><sup>&#x2020;</sup>, <span class="error">Blocked</span><sup>&#x2021;</sup>) per role for Admin panels.</caption>
        <thead>
            <tr>
                <th scope="col">Role</th>
                <th scope="col"><a href="/administration/diagnosticss-panel">Diagnosticss</a></th>
                <th scope="col"><a href="/administration/preferences-panel">Preferences</a></th>
                <th scope="col"><a href="/administration/languages-panel">Languages</a></th>
                <th scope="col"><a href="/administration/users-panel">Users</a></th>
                <th scope="col"><a href="/administration/plugins-panel">Plugins</a></th>
                <th scope="col"><a href="/administration/visitor-logs-panel">Visitor logs</a></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">Publisher</th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
								<td><span class="success">Full</span></td>
            </tr>
            <tr>
                <th scope="row">Managing Editor</th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="success">Full</span></td>
								<td><span class="success">Full</span></td>
            </tr>
            <tr>
                <th scope="row">Copy Editor</th>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="error">Blocked</span></td>
								<td><span class="success">Full</span></td>
            </tr>
            <tr>
                <th scope="row">Staff Writer</th>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="error">Blocked</span></td>
								<td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row">Freelancer</th>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="error">Blocked</span></td>
								<td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row">Designer</th>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="warning">Limited</span></td>
                <td><span class="error">Blocked</span></td>
								<td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row">None</th>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
								<td><span class="error">Blocked</span></td>
            </tr>
        </tbody>
				<tfoot>
					<tr><td colspan="7">
						<ol class="list--refmarks">
							<li>Full rights — The role has access to panel and no restrictions to functionality. See associated panel documentation via column headers.</li>
							<li>Limited rights — The role has access to panel but can only see or use some of the panel's functionality. See <a href="#limited-access-specifications">Limited access specifications</a>.</li>
							<li>Blocked — The role has no panel access, thus cannot see the panel link in the back-end navigation. Accounts having the status of 'None' cannot be used at all.</li>
						</ol>
					</td></tr>
				</tfoot>
    </table>
</div>

### Extended panels access

When certain administration plugins are installed, they will use — and cause the appearance of — one or both of two extended regions in the back-end:

* Home
* Extensions

These regions will appear in the navigation alongside Content, Presentation, and Admin. An administration plugin that uses these regions will trigger the appearance of them when installed, and will add its associated functionality to a panel under these regions, and/or, if more appropriate, to one of the default regions. The respective panels one might see in these regions depend on which plugins are installed that make use of them.

Table 4 represents the two extended regions. Unlike with default panels, the extended panels are generally not treated individually; rather, rights of access are treated at the top region level, thus why individual panels are not show here. A given role will either have access to the regions (thus all child panels) or won't see them at all.

<div class="tabular-data" tabindex="0" aria-labelledby="table4-caption" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption id="table4-caption" itemprop="about">Table 4: Rights (<span class="success">Full</span><sup>&#x002a;</sup>, <span class="warning">Limited</span><sup>&#x2020;</sup>, <span class="error">Blocked</span><sup>&#x2021;</sup>) per role for the extended regions, Home and Extensions.</caption>
        <thead>
            <tr>
                <th scope="col">Role</th>
                <th scope="col"><a href="/administration/home-region">Home</a></th>
                <th scope="col"><a href="/administration/extensions-region">Extensions</a></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">Publisher<sup>&#x00a7;</sup></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
            </tr>
            <tr>
                <th scope="row">Managing Editor<sup>&#x00a7;</sup></th>
                <td><span class="success">Full</span></td>
                <td><span class="success">Full</span></td>
            </tr>
            <tr>
                <th scope="row">Copy Editor</th>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row">Staff Writer</th>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row">Freelancer</th>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row">Designer</th>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
            <tr>
                <th scope="row">None</th>
                <td><span class="error">Blocked</span></td>
                <td><span class="error">Blocked</span></td>
            </tr>
        </tbody>
				<tfoot>
					<tr><td colspan="3">
						<ol class="list--refmarks">
							<li>Full rights — The role has access to panel and no restrictions to functionality. See associated panel documentation via column headers.</li>
							<li>Limited rights — The role has access to panel but can only see or use some of the panel's functionality. See <a href="#limited-access-specifications">Limited access specifications</a>.</li>
							<li>Blocked — The role has no panel access, thus cannot see the panel link in the back-end navigation. Accounts having the status of 'None' cannot be used at all.</li>
							<li>These roles will likely see the <a /administration/extensions-region">Extensions administration region</a>), too, which is used by many administration plugins.</li>
						</ol>
					</td></tr>
				</tfoot>
    </table>
</div>

It is possible that a given administration plugin may introduce finer rights control, which would alter the access pattern suggested in Table 4. For example, a developer may design an administration plugin that allows a Copy Editor or Staff Writer to have limited rights to the plugin's configuration functionality. If that plugin has a panel under Extensions, those two lower user roles will see the [Extensions region](/administration/extensions-region)  and only the associated plugin’s panel.

## Limited access specifications

For each publishing role having <span class="warning">Limited</span> access to a panel, the specific rights and restrictions for that panel are clarified in the following sections.

### Publisher

Publishers have the same scope of rights as the administrator (an account type described earlier), except a Publisher cannot delete the administrator's account, whereas an administrator can certainly delete the publisher's.

But the Administrator and Publisher don't compete. Unlike administrators, Publishers represent the top position of the editorial team, which is focused on website architecture, content, and design. Publishers may not actually work on all those things - from a collaborative standpoint they're more a decision maker than a doer - but they have the power in the CMS to step in and override something if necessary.

There should only be one Publisher, functionally speaking. Anyone who needed similar rights, but not the absolute same rights, should be a 'Managing Editor'.

### Managing Editor

Managing Editors are essentially the Publisher's right hand, a transition role from process governance to content production. A given website project might define specific responsibilities for the Managing Editor outside of the CMS, like recruiting freelance writers, maintaining the editorial calendar, and so on.

Managing Editors have the same privileges as Publishers throughout the administration side, with one exception:

* On the [Users panel](/administration/users-panel): They can see basic data types (Login, Real name, Email, Privileges, Last log in, etc) for all user accounts, and edit full account data for any inferior role, but cannot edit account data for Publishers or other Managing Editors.

In addition to the noted panel limitation, Managing Editors don't have as much detailed debugging info available to them either when the production status is higher.

### Copy Editor

Copy Editors aren't concerned with governance activities like the higher roles are. The Copy Editor's focus is specifically on editing the content produced by writers and making final preparations and/or checks before publishing. Such preps and checks might include formatting copy and adding images (or verifying that it's been done correctly), assigning output designators (the section and categories fields), adding custom field data and metadata, setting publishing date, and so forth.

Copy Editor privileges are pretty straight forward, either having full access to panels or no access at all, with one exception:

* On the [Users panel](/administration/users-panel): They can see basic data types for all user accounts, but they can only edit their own account data.

### Staff Writer

The Staff Writer is one of two roles primarily concerned with writing articles (the other being Freelancer). They don't need access to much of the administration side except those panels concerned with content, with a few limitations:

* On the [Write panel](/administration/write-panel): They can create, edit, publish, and delete their own articles. They can see the full articles of other user accounts, but not edit them in any way.
* On the [Images panel](/administration/images-panel): They can upload images and edit the ones they upload. They can see the images uploaded by other user accounts, but they cannot edit or delete those images.
* On the [Files panel](/administration/files-panel): They can upload files and edit the ones they upload. They can see the names of files uploaded by other user accounts, but they cannot edit or delete those files.
* On the [Users panel](/administration/users-panel): They can edit their own user account details, but not see anyone else's account information.

### Freelancer

Freelancers are external to the website's editorial team. You can think of them as 'guest authors'. Like Staff Writers, Freelancers write articles, but that's mostly it due to their external status. Limitations are:

* On the [Write panel](/administration/write-panel): They can create new 'Draft' articles and switch their status to 'Pending', but not publish them 'Live'. They can see the full articles of other user accounts, but not edit them in any way.
* On the [Users panel](/administration/users-panel): Same as Staff Writer.

### Designer

A Designer's focus is uniquely on site structure and presentation, but a Designer can see some content too to help inform presentational decisions. Limitations are:

* On the [Write panel](/administration/write-panel): They can see anyone's full article regardless of status, but not edit anyone else's articles in any way. Nor can a Designer create articles.
* On the [Users panel](/administration/users-panel): Same as Staff Writer.

## Multi-contributor security

It goes without saying that when granting roles to site contributors, be sure the people you are giving privileges to are trustworthy. The higher roles, like Publisher and Managing Editor, have a lot of power and can easily change things. But even lesser roles should be granted to people with some attention.

For example, the Designer role is restricted to those areas of the administration side that may play a role in presentation, including Page templates and Form templates. Such restrictions may seem sufficiently secure on the surface, but if the 'Allow PHP in pages?' preference is set to 'Yes' in the [Preferences panel](/administration/preferences-panel#allow-php-in-pages) panel, then a Designer *could* use PHP in Page templates and/or Form templates in a malicious way to gain administrator-like power and cause problems. Setting the preference to 'No' would prevent such a possibility.

When it comes down to it, security is a governance concern, relying just as much on smart human decisions as code lockdown. Don't give roles to people you can't trust and make sure your editorial workflows are documented so each contributor knows what's expected of them by role assignment.
