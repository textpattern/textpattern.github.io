---
layout: document
category: Installation
published: false
title: Content Security Policy
description: Content Security Policy requirements and recommendations for Textpattern CMS.
---

# Content Security Policy

[Content Security Policy](https://en.wikipedia.org/wiki/Content_Security_Policy) (CSP) is a computer security standard introduced to prevent cross-site scripting (XSS), clickjacking and other code injection attacks resulting from execution of malicious content in the trusted web page context. CSP provides a standard method for website owners to declare approved origins of content that browsers should be allowed to load on that website. Covered types include JavaScript, CSS, HTML frames, web workers, fonts, images, embeddable objects such as Java applets, ActiveX, audio and video files, and other HTML5 features. CSP is widely-supported by modern and legacy browsers.

## Minimum CSP requirements for Textpattern

Work is underway to clarify minimum requirements for Textpattern 4.8 onwards, and considerations are made in the development process to avoid unnecessary or frivolous rules. In the interim, consider the following table as a work-in-progress for appropriate CSP rules for the Textpattern 4.7 release series using the default front side ('Four Point Seven') and admin side ('Hive') themes.

CSP rules for a Textpattern CMS instance will vary according to its content, HTML scaffold, use of external and/or third-party services such as a content delivery network (CDN), hosted fonts (e.g. Google Fonts), embedded content (e.g. Twitter tweets, Disqus comments etc), and any elements used by the Textpattern site, whether local or remote.

These rules relate to Textpattern core and should be used as a starting point for production sites, paying particular attention to existing content as outlined in the paragraph above.

<div class="tabular-data" tabindex="0" aria-labelledby="table1-caption" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption id="table1-caption" itemprop="about">CSP policies list.</caption>
        <thead>
            <tr>
                <th scope="col">CSP header</th>
                <th scope="col">Textpattern 4.7</th>
                <th scope="col">Notes</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">default-src</th>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">font-src</th>
                <td></td>
                <td>Front side theme may use Google-hosted font and associated CSS.</td>
            </tr>
            <tr>
                <th scope="row">img-src</th>
                <td></td>
                <td>Core images are served locally as SVG and PNG, author images are JPG, PNG and GIF.</td>
            </tr>
            <tr>
                <th scope="row">media-src</th>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <th scope="row">object-src</th>
                <td></td>
                <td>Shockwave Flash (SWF) files can still exist as Images, though new uploads are deprecated.</td>
            </tr>
            <tr>
                <th scope="row">script-src</th>
                <td></td>
                <td>Some scripts are inline, some are served as files.</td>
            </tr>
            <tr>
                <th scope="row">style-src</th>
                <td></td>
                <td>Front side theme uses Google-hosted font and associated CSS.</td>
            </tr>
        </tbody>
    </table>
</div>
