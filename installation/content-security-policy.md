---
layout: document
category: Installation
published: false
title: Content Security Policy
description: Content Security Policy requirements and recommendations for Textpattern CMS.
---

# Content Security Policy

Content Security Policy (CSP) is a computer security standard introduced to prevent cross-site scripting (XSS), clickjacking and other code injection attacks resulting from execution of malicious content in the trusted web page context. CSP provides a standard method for website owners to declare approved origins of content that browsers should be allowed to load on that website—covered types are JavaScript, CSS, HTML frames, web workers, fonts, images, embeddable objects such as Java applets, ActiveX, audio and video files, and other HTML5 features. CSP is widely-supported by modern and legacy browsers.

CSP rules for a Textpattern CMS instance will vary according to its content, HTML scaffold, use of external and/or third-party services such as a content delivery network (CDN), hosted fonts (e.g. Google Fonts), embedded content (e.g. Twitter tweets, Disqus comments etc), and any elements used by the Textpattern site, whether local or remote.

## Minimum CSP requirements for Textpattern

Work is underway to clarify minimum requirements for Textpattern 4.8 onwards, and considerations are made in the development process to avoid unnecessary or frivolous rules. In the interim, consider the following table as a work-in-progress for appropriate CSP rules for the Textpattern 4.7 release series using the default front side ('Four Point Seven') and admin side ('Hive') themes.

| CSP header | Textpattern 4.7.1 | Notes |
|------------|-------------------|-------|
|`default-src`|||
|`font-src`|| Front side theme uses Google-hosted font and associated CSS. |
|`img-src`|||
|`media-src`|||
|`object-src`|||
|`script-src`|||
|`style-src`|| Front side theme uses Google-hosted font and associated CSS. |
