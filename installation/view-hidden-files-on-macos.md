---
layout: document
category: Installation
published: false
title: Viewing hidden files in macOS Finder
description: This article explains how to enable and disable visibility of hidden files in macOS Finder.
---

# Viewing hidden files in macOS

Textpattern CMS releases include files that have a `.` as the first character of the filename. These files are typically hidden in macOS Finder natively, though conversely many file transfer applications have a view option for showing these invisible files and some show all files by default.

On this page:

* [Overview](#overview)
* [Enabling viewing of hidden files in macOS Finder](#enabling-viewing-of-hidden-files-in-macos-finder)
* [Disabling viewing of hidden files in macOS Finder](#disabling-viewing-of-hidden-files-in-macos-finder)

## Overview

The root `.htaccess` file includes system & site configuration details when Textpattern runs on the Apache web server. Similarly, `files/.htaccess-dist` can be renamed to `files/.htaccess` and provide a level of control over how files are accessed on the Apache web server.

Non-Apache web servers that ignore or do not parse `.htaccess` files, e.g. Nginx and IIS, are unaffected by this as their equivalent configuration rules are located elsewhere. Textpattern administrators are not required to follow these steps.

The process of enabling and subsequently disabling viewing of hidden files involves using the Terminal application. In both cases, a change is made to the macOS configuration and Finder is then relaunched to account for the change.

## Enabling viewing of hidden files in macOS Finder

* Open Terminal from Finder &rarr; Utilities.
* Type or copy & paste the following text as one line, then press Return or Enter:

~~~ shell
defaults write com.apple.finder AppleShowAllFiles TRUE
~~~

* Assuming no errors, type or copy & paste the following text as one line, then press Return or Enter:

~~~ shell
killall Finder
~~~

## Disabling viewing of hidden files in macOS Finder

* Open Terminal from Finder &rarr; Utilities.
* Type or copy & paste the following text as one line, then press Return or Enter:

~~~ shell
defaults write com.apple.finder AppleShowAllFiles FALSE
~~~

* Assuming no errors, type or copy & paste the following text as one line, then press Return or Enter:

~~~ shell
killall Finder
~~~
