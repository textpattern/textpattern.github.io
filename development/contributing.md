---
layout: document
category: Development
published: true
title: "Contributing"
tags:
  - Development
  - Contributing
---

# Contributing

If you want to help with the development of Textpattern CMS, there are plenty of ways to get involved. Please take a moment to review this document in order to make the contribution process easy and effective for everyone.

## Who can contribute?

Anyone can contribute. You do not have to ask for permission.

## How can I contribute?

### Help with translations

To make corrections to existing translations, or to add new ones, [please follow these instructions](https://github.com/textpattern/textpacks/blob/master/README.md).

### Write documentation

The page you're reading now is part of the documentation project. Spot any errors? Want to add more documents or fix others? Want to convert and clean up our Textile docs to Markdown so they can be served from here? Then please [clone the documentation repo](https://github.com/textpattern/textpattern.github.io), make changes and submit a Pull Request.

### Contribute code

Core developers and project maintainers accept Pull Requests. The [main code repository](https://github.com/textpattern/textpattern) is split into at least three branches:

* `master`: for stable releases only. Core devs only ever merge production-ready code here at release time.
* `maint-x.y.z`: for patching the most recent stable release.
* `dev`: for development of the next major version.

There may be other branches with partially-completed features awaiting merge, but the above are always present. Once you have cloned/forked the repository, ensure you have checked out the correct branch before submitting a Pull Request.

The general steps for Pull Requests:

* Switch to the correct branch (`git checkout branch-name`), where `branch-name` is either `maint-x.y.z` to patch or bug fix the existing stable product, or `dev` for a feature/fix to go in the next major version.
* Pick an [existing issue](https://github.com/textpattern/textpattern/issues) you intend to work on, or [create a new issue](https://github.com/textpattern/textpattern/issues/new) if no existing issue matches your topic.
* Make a new branch for your work.
* Hack along.
* Push your changes to your fork on GitHub.
* Visit your repository's page on GitHub and click the 'Pull Request' button.
* Label the pull request with a clear title and description.

### Coding standard

The project follows the [PSR-0](https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-0.md) and [PSR-2](https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-2-coding-style-guide-meta.md) standards with PHP 5.3 style namespacing. You can use [PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer) to make sure your additions follow them, too:

~~~ ShellSession
$ ./vendor/bin/phpcs --standard=phpcs.xml *.php textpattern
~~~

### Versioning

The project follows [Semantic Versioning](http://semver.org/) and the `major.minor.patch` format.

## License

[GNU General Public License, version 2](https://github.com/textpattern/textpattern/blob/master/LICENSE.txt). By contributing to the project, you agree to license your additions under the GPLv2 license.

## Code of conduct

As contributors and maintainers of this project, and in the interest of fostering an open and welcoming community, we pledge to respect all people who contribute through reporting issues, posting feature requests, updating documentation, submitting pull requests or patches, and other activities.

We are committed to making participation in this project a harassment-free experience for everyone, regardless of level of experience, gender, gender identity and expression, sexual orientation, disability, personal appearance, body size, race, ethnicity, age, religion, or nationality.

Project maintainers have the right and responsibility to remove, edit, or reject comments, commits, code, documentation edits, issues, and other contributions that are not aligned to this code of conduct, or to ban temporarily or permanently any contributor for other behaviours that they deem inappropriate, threatening, offensive, or harmful.
