---
layout: landing
category: Administration
published: true
title: Textpattern administration
description: The back-end of Textpattern is where administrators build site architecture, configure behaviour, develop content, and create presentation.
---

# Textpattern administration

The back end of Textpattern is where administrators, and other [users](https://docs.textpattern.com/administration/users-panel) having sufficient [privileges](https://docs.textpattern.com/administration/user-roles-and-privileges), build site architecture, configure behaviour, develop content, and create presentation. (excluding what might need done via the web or database servers).

**On this page**:

* Table of contents
{:toc}

## Login location

The usual back-end login location for a new install of Textpattern is at <i>domain.tld/textpattern</i>.[^login] If you install Textpattern in a subdirectory, the login location would reflect that extra level (e.g. <i>example.com/subdirectory/textpattern</i>).

[^login]: See [Textpattern security](https://docs.textpattern.com/administration/security) if you're worried about the login location being common knowledge.

## Core administration regions and panels

The administration side is organized into three primary regions: Content, Presentation, and Admin. Each region has a set of working panels, one of which serves as the default for when the primary region link is selected.

### Content

The Content region of the administration side has seven panels out-of-the-box. The Write panel is the default.

<div class="tabular-data" itemscope itemtype="https://schema.org/Table">
    <table>
        <thead>
            <tr>
                <th class="t25" scope="col">Panel name</th>
                <th scope="col">What the panel provides you</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/write-panel">Write</a> (default)</th>
                <td>Article editing fields and controls.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/articles-panel">Articles</a></th>
                <td>A table listing of all articles, and the ability to open one in full-edit mode in context of the Write panel.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/images-panel">Images</a></th>
                <td>A table listing of all images uploaded and functionality to manage them.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/files-panel">Files</a></th>
                <td>A table listing of all files uploaded and functionality to manage them.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/links-panel">Links</a></th>
                <td>A table listing of all links uploaded and functionality to manage them.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/categories-panel">Categories</a></th>
                <td>Functionality to create and manage topic categories for articles, images, links, and files.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/comments-panel">Comments</a></th>
                <td>A table of all article comments received and functionality to manage them.</td>
            </tr>
        </tbody>
    </table>
</div>

From Textpattern 4.6 onwards, when the **Accept comments?** preference in the Site section of the Preferences panel is set to ‘No’, all comments functionality throughout the administration side will be hidden in the interface and the Comments panel link will be removed from the list of panel options in the Content region. This helps keep unwanted functionality from being a distraction. The comments functionality all comes back again if the preference is changed to ‘Yes’.

### Presentation

The Presentation region has five panels out-of-the-box. The Pages panel is the default.

<div class="tabular-data" itemscope itemtype="https://schema.org/Table">
    <table>
        <thead>
            <tr>
                <th class="t25" scope="col">Panel name</th>
                <th scope="col">What the panel provides you</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/themes-panel">Themes</a> <span class="footnote success"><strong>New v4.7.0</strong></span></th>
                <td>A table listing of themes and functionality to create and manage them.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/sections-panel">Sections</a></th>
                <td>A table listing of sections and functionality to create and manage them.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/pages-panel">Pages</a></th>
                <td>A list of HTML page templates and functionality to create and manage them. The <i><strong>default</strong></i> page displays by default.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/forms-panel">Forms</a></th>
                <td>A list of forms by type (Textpattern forms, not web forms for submitting data) and functionality to create and manage them. The <i><strong>default</strong></i> form in the  Article type is displayed by default.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/styles-panel">Styles</a></th>
                <td>A list of CSS style files and functionality to create and manage them. The <i><strong>default</strong></i> style displays by default.</td>
            </tr>
        </tbody>
    </table>
</div>

### Admin

The Admin region of the administration side has seven panels out-of-the-box, of which the Users panel is the default.

<div class="tabular-data" itemscope itemtype="https://schema.org/Table">
    <table>
        <thead>
            <tr>
                <th class="t25" scope="col">Panel name</th>
                <th scope="col">What the panel provides you</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/diagnostics-panel">Diagnostics</a></th>
                <td>Feedback messages and data displays to troubleshoot system problems.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/preferences-panel">Preferences</a></th>
                <td>All configurable settings to make your site function correctly and as desired.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/languages-panel">Languages</a></th>
                <td>A list of language packs and the ability to update them.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/users-panel">Users</a></th>
                <td>A table listing of all user accounts and the functionality to manage them.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/plugins-panel">Plugins</a></th>
                <td>A table listing of installed plugins, and functionality to manage them.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.com/administration/visitor-logs-panel">Visitor logs</a></th>
                <td>A display of all site traffic.</td>
            </tr>
        </tbody>
    </table>
</div>

From Textpattern 4.6 onwards, when the Logging preference is set to ‘None’ in the Site section of the Preferences panel, all logging functionality throughout the back end will be hidden in the interface and the **Visitor logs** panel link will be removed from the list of panel options in the Admin region. This helps keep unwanted functionality from being a distraction. The logging functionality all comes back again if the preference is changed to ‘Yes’.

Examples of plugins that add additional panel options to the Admin region include smd_faux_role and wet_snitch.

## Extended administration regions

There are also two extended regions (not out-of-the-box), Home and Extensions, which appear to the higher [user roles](https://docs.textpattern.com/administration/user-roles-and-privileges) if any plugins that make use of them are installed. These regions are not core features, but are worth describing here because they become part of the administration's navigation when relevant.

### Home (Start)

The [Home](https://docs.textpattern.com/administration/home-region) region is associated with dashboard development for multi-user websites. If you're not building a multi-user website, you will not be concerned with this, and even then you may not need the plugins that make this region appear.   

### Extensions

The [Extensions](https://docs.textpattern.com/administration/extensions-region) region is one you may see in the main menu of the back end eventually because several good plugins make use of it.

## Changing default login panel

The default admin-side landing location changes once you initially set your language preferences. You'll find yourself landing on the [Write](https://docs.textpattern.com/administration/write-panel) panel from that point on, which is the default panel under the Content region.

You can change the default landing panel to whichever one you want using the **Default panel** preference under the Admin area of the [Preferences](https://docs.textpattern.com/administration/preferences-panel) panel.
