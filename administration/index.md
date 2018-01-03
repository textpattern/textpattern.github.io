---
layout: landing
category: Administration
published: true
title: Textpattern administration
description: The administration side of Textpattern is where you configures and manages the website's content, architecture, presentation, and behaviour.
---

# Textpattern administration

The administration side of Textpattern is where you, and any [users](https://docs.textpattern.io/administration/users-panel) having sufficient [privileges](https://docs.textpattern.io/administration/user-roles-and-privileges), configures and manages the website's content, architecture, presentation, and behaviour (excluding what might need done via the web or database servers).

On this page:

* [Login location](#login-location)
* [Core administration regions and panels](#core-administration-regions-and-panels)
  * [Content](#content)
  * [Presentation](#presentation)
  * [Admin](#admin)
* [Extended administration regions](#extended-administration-regions)
  * [Home (Start)](#home-start)
  * [Extensions](#extensions)
* [Changing default login panel](#changing-default-login-panel)

## Login location

The typical admin login location for a new install of Textpattern is at `domain.tld/textpattern`.[^1] If you install Textpattern in a subdirectory, the login location would reflect that as `domain.tld/subdirectory/textpattern`.

[^1]: See [Textpattern security](https://docs.textpattern.io/administration/security) if you're worried about the login location being common knowledge.

## Core administration regions and panels

The administration side is organized into three primary regions: **Content**, **Presentation**, and **Admin**. Each region has a set of working panels, one of which serves as the default for when the primary region link is selected.

### Content

The **Content** region of the administration side has seven panels out-of-the-box, of which the **Write** panel is the default.

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
                <th scope="row"><a href="https://docs.textpattern.io/administration/write-panel"><strong>Write</strong></a> (default)</th>
                <td>Article editing fields and controls.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.io/administration/articles-panel"><strong>Articles</strong></a></th>
                <td>A table listing of all articles, and the ability to open one in full-edit mode in context of the <strong>Write</strong> panel.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.io/administration/images-panel"><strong>Images</strong></a></th>
                <td>A table listing of all images uploaded and functionality to manage them.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.io/administration/files-panel"><strong>Files</strong></a></th>
                <td>A table listing of all files uploaded and functionality to manage them.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.io/administration/links-panel"><strong>Links</strong></a></th>
                <td>A table listing of all links uploaded and functionality to manage them.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.io/administration/categories-panel"><strong>Categories</strong></a></th>
                <td>Functionality to create and manage topic categories for articles, images, links, and files.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.io/administration/comments-panel"><strong>Comments</strong></a></th>
                <td>A table of all article comments received and functionality to manage them.</td>
            </tr>
        </tbody>
    </table>
</div>

From Textpattern 4.6 onwards, when the "Accept comments?" preference is set to "No" in the **Preferences** panel, all comments functionality throughout the administration side will be hidden in the UI and the **Comments** panel link will be removed from the list of panel options in the **Content** region. This helps keep unwanted functionality from being a distraction. The comments functionality all comes back again if the preference is changed to "Yes". 

### Presentation

The **Presentation** region of the administration side has four panels out-of-the-box, of which the **Pages** panel is the default.

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
                <th scope="row"><a href="https://docs.textpattern.io/administration/sections-panel"><strong>Sections</strong></a></th>
                <td>A table listing of sections and functionality to create and manage them.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.io/administration/pages-panel"><strong>Pages</strong></a></th>
                <td>A list of HTML page templates and functionality to create and manage them. The "default" page displays by default.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.io/administration/forms-panel"><strong>Forms</strong></a></th>
                <td>A list of forms by type (Textpattern forms, not web forms for submitting data) and functionality to create and manage them. The "default" <strong>Article</strong> form type displays by default.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.io/administration/styles-panel"><strong>Styles</strong></a></th>
                <td>A list of CSS style files and functionality to create and manage them. The "default" style displays by default.</td>
            </tr>
        </tbody>
    </table>
</div>

### Admin

The **Admin** region of the administration side has seven panels out-of-the-box, of which the **Users** panel is the default.

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
                <th scope="row"><a href="https://docs.textpattern.io/administration/diagnostics-panel"><strong>Diagnostics</strong></a></th>
                <td>Feedback messages and data displays to troubleshoot system problems.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.io/administration/preferences-panel"><strong>Preferences</strong></a></th>
                <td>All configurable settings to make your site function correctly and as desired.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.io/administration/languages-panel"><strong>Languages</strong></a></th>
                <td>A list of language packs and the ability to update them.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.io/administration/users-panel"><strong>Users</strong></a></th>
                <td>A table listing of all user accounts and the functionality to manage them.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.io/administration/plugins-panel"><strong>Plugins</strong></a></th>
                <td>A table listing of installed plugins, and functionality to manage them.</td>
            </tr>
            <tr>
                <th scope="row"><a href="https://docs.textpattern.io/administration/visitor-logs-panel"><strong>Visitor logs</strong></a></th>
                <td>A display of all site traffic.</td>
            </tr>
        </tbody>
    </table>
</div>

From Textpattern 4.6 onwards, when the "Logging" preference is set to "None" in the **Preferences** panel, all logging functionality throughout the administration side will be hidden in the UI and the **Visitor logs** panel link will be removed from the list of panel options in the **Admin** region. This helps keep unwanted functionality from being a distraction. The comments functionality all comes back again if the preference is changed to "Yes". 

Examples of plugins that add additional panel options to the **Admin** region include `smd_faux_role` and `wet_snitch`.

## Extended administration regions

There are also two extended regions (not out-of-the-box) - **Home** and **Extensions** - which appear to the higher [user roles](https://docs.textpattern.io/administration/user-roles-and-privileges) if any of the admin-side plugins that make use of them are installed. These regions are not core features, but are worth describing here because they become part of the administration's navigation when relevant.

### Home (Start)

The [**Home**](https://docs.textpattern.io/administration/home-region) administration region is associated with dashboard development for multi-user websites. If you're not building a multi-user website, you will not be concerned with this, and even then you may not need the plugins that make this region appear.   

### Extensions

The [**Extensions**](https://docs.textpattern.io/administration/extensions-region) administration region is likely one you will see in the administration side eventually because several useful plugins make use of it.

## Changing default login panel

The default admin-side landing location changes once you initially set your language preferences. You'll find yourself landing on the [**Write**](https://docs.textpattern.io/administration/write-panel) panel from that point on, which is the default panel under the **Content** region.

You can change the default landing panel to whichever one you want using the "Default panel" preference under the **Admin** area of the [**Preferences**](https://docs.textpattern.io/administration/preferences-panel) panel.
