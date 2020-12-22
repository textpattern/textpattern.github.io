---
layout: document
category: Development
published: true
title: Textpattern source code repositories
description: All Textpattern code repositories are maintained at GitHub and collectively detailed here for documentation convenience.
---

# Textpattern source code repositories

All Textpattern code repositories are maintained at GitHub and collectively detailed here for documentation convenience.

**Contents**

* Table of contents
{:toc}

## Source code options

The current stable release, the latest bleeding-edge development code, and the old legacy packages are all available.

### Production release

The production release - or *latest stable release* - is for the average user who wants the most secure version of Textpattern available. They are terminal branches (or 'snapshots') from the master repo at particular development milestones. When new production releases are available, the previous release becomes obsolete in terms of developer support, so always update your Textpattern installations to the latest stable release when they're available.

* [Zip file download](https://textpattern.com/latest.zip) (an immediate .zip package download from textpattern.com, no messing around)
* [Zip package options](https://textpattern.com/start) (choose either `.zip` or `.tar.gz`, as you prefer)

### Development branch

The *dev branch* is where core developers work toward each new stable release. In other words, it's work-in-progress![^1]. As such, this branch is ideal for plugin developers and feature testers, though it does draw a few *risk takers* too (people who throw caution to the wind and use development code for a production website).

The dev branch can be worked with as it exists at any given moment:

* [Dev branch](https://github.com/textpattern/textpattern)

[^1]: Core developers would like you to know that while the dev branch is intended to be stable and reliable, bugs and omissions are occasionally introduced between stable releases.

### Experimental branches

There are a number of *experimental branches*, each a separate tinkering on a particular new feature or three. The branches are not ready to merge into the dev branch yet, which is why they're experimental.

Experimental branches are a moving target, so they're not listed here to lower overhead, but you can find these branches by going to the [dev branch](https://github.com/textpattern/textpattern) in GitHub, selecting the **Branch** menu button (which will appear as "Branch: dev"), and choosing one of the other branch options in the drop-down list.

### Legacy packages

Legacy packages are [past stable releases](https://github.com/textpattern/textpattern/releases) back to Textpattern's beginning (most packages are accounted for). If for some nutty reason you want to play around in outdated code, this is where to go. Each package is available in the `.zip` and `.tar.gz` options. This code is not supported, and the older it gets the more broken it will be. You are strongly advised *not* to use outdated code for production websites.

## Working with GitHub

Where any of the `.zip` and `.tar.gz` packages are concerned, you won't need to worry about using GitHub or having a GitHub account. But if you're a GitHub user, or would like to be, there are two main ways of working with the [dev branch](https://github.com/textpattern/textpattern): either the GitHub GUI client or the git command-line client. Either way, you'll need to have a GitHub account, so if you don't have one, create one first.

When working with a repo in GitHub, you need to decide if you're going to *clone* it or *fork* it:

**Clone:** When cloning a repo, you've made the decision to contribute back to the dev repo branch, or whatever repo you may have cloned from. Cloning puts a copy of the repo on your local drive, where you can work on code (or copy, like this page, for example) on your own time and at your own pace. When ready to share back, you make a *pull request*, which is basically a request to the branch manager to merge your edits to the master repo's code. The branch manager can choose not to if your code is sketchy, but generally the intent is to collaborate harmoniously toward the good of all things.

**Fork:** When forking a repo, you've essentially made the decision to run rogue with the code. You can change code however you want, but it won't get merged back to the repo you forked from. You're on your own.

In context of Textpattern, it's assumed you're going to clone if contributing to core code, or fork if you just want a sandbox to play and experiment in; say for plugin development reasons.

### GitHub Desktop

The GitHub Desktop GUI client may not be as flexible as the command-line client, but unless you're a command-line Jedi master, the desktop client is easy to use.

First you'll need to [install the client](https://desktop.github.com/). Then fire it up and add your GitHub account details so GitHub and the client can 'communicate' with one another. Full usage instructions can be found within the [GitHub Desktop documentation](https://help.github.com/desktop/).

### Git command-line client

The command-line also requires a client, the [git command-line client](https://git-scm.com/downloads) is available for most operating systems.

Use the following command to clone the Textpattern dev branch repository to your local drive:

~~~ bash
$ git clone https://github.com/textpattern/textpattern.git
~~~

You can use [git config](https://www.kernel.org/pub/software/scm/git/docs/git-config.html) to set up a few things like your `user.name` and `user.email`. Then you're free to make changes, publish them to your own GitHub repo, and issue a 'Pull Request' to have your changes merged with the dev branch. Or just create a diff patch and send that to Textpattern developers.

The experimental branches mentioned earlier can be explored using this command:

~~~ bash
$ git checkout name-of-branch
~~~

You can see the list of available branches using the `git branch` command. To get back to your dev copy, use `git checkout dev`.
