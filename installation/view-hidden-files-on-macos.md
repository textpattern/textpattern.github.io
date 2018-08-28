---
layout: document
category: Installation
published: true
title: Viewing hidden files in macOS Finder
description: This article explains how to enable and disable visibility of hidden files in macOS Finder and file transfer applications.
---

# Viewing hidden files in macOS Finder and file transfer applications

Textpattern CMS releases include some files that have a `.` as the first character of the filename. These files are typically hidden in macOS Finder natively, though conversely many file transfer applications have a view option for showing these invisible files and some show all files by default.

On this page:

* [Overview](#overview)
  * [Enabling viewing of hidden files in macOS Finder](#enabling-viewing-of-hidden-files-in-macos-finder)
  * [Disabling viewing of hidden files in macOS Finder](#disabling-viewing-of-hidden-files-in-macos-finder)
* [Viewing hidden files in macOS file transfer applications](#viewing-hidden-files-in-macos-file-transfer-applications)
  * [Viewing hidden files in Cyberduck](#viewing-hidden-files-in-cyberduck)
  * [Viewing hidden files in FileZilla](#viewing-hidden-files-in-filezilla)
  * [Viewing hidden files in Transmit](#viewing-hidden-files-in-transmit)

# Overview

The root `.htaccess` file includes system & site configuration details when Textpattern runs on the Apache web server. Similarly, `files/.htaccess-dist` can be renamed to `files/.htaccess` and provide a level of control over how files are accessed on the Apache web server.

Non-Apache web servers that ignore or do not parse `.htaccess` files, e.g. Nginx and IIS, are unaffected by this as their equivalent configuration rules are located elsewhere. Textpattern administrators of non-Apache web servers are not required to follow these steps.

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

# Viewing hidden files in macOS file transfer applications

There are numerous applications to transfer (upload or download) files and directories to and from a web server using macOS. These include [Cyberduck](https://cyberduck.io), [FileZilla](https://filezilla-project.org) and [Transmit](https://panic.com/transmit/). Each of these applications includes an option to show or hide hidden files.

## Viewing hidden files in Cyberduck

* Open Cyberduck from Applications.
* From the _View_ menu, select _Show Hidden Files_.

A checkmark appears next to the _Show Hidden Files_ menu entry indicating that hidden files will be shown on both the local computer and remote server.

To re-hide hidden files, repeat the above process. The checkmark will disappear and hidden files will not be shown.

## Viewing hidden files in FileZilla

* Open FileZilla from Applications.
* From the _Server_ menu, select _Force showing hidden files_.

You may see an explanatory message appear in a dialog. This is expected. A checkmark appears next to the _Force showing hidden files_ menu entry indicating that hidden files will be shown on both the local computer and remote server.

To re-hide hidden files, repeat the above process. The checkmark will disappear and hidden files will not be shown.

## Viewing hidden files in Transmit

* Open Transmit from Applications.
* From the _View_ menu, select _Show Hidden Files_.

The _Show Hidden Files_ menu entry changes to _Hide Hidden Files_. Hidden files will be shown on both the local computer and remote server.

To re-hide hidden files, repeat the above process and select the _Hide Hidden Files_ menu entry. Hidden files will not be shown.
