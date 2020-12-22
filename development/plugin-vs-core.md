---
layout: document
category: Development
published: true
title: Plugin versus core features
description: A common discussion point is whether or not the functionality of a given plugin should be integrated into the core code of Textpattern.
---

# Plugin versus core features

A common discussion point raised in the Textpattern CMS support forum - again and again - is whether or not the functionality of a given plugin should be integrated into the core code of Textpattern. One could certainly argue the merits of doing so, depending on the functionality in question, but the philosophy behind core development is to keep core code light, secure, and extendable; not bloated, slow, buggy, and complex.

Developers have followed that philosophical standpoint for over ten years by not integrating every function or feature that someone says *should* be in core. We attempt to break that idea down here. Of all the plugin development documentation, this page is more about perspective than how-to.

**Contents**

* Table of contents
{:toc}

## A functional idea is born

When a new feature idea pops up, it usually does so in the [Feature ideas](https://forum.textpattern.com/viewforum.php?id=2) area of the support forum. Someone, perhaps you, bravely steps forth and says "feature X should be in core". We say "bravely" because 99% of the time a core developer and a few veteran community members will descend on the thread with a response like "it ain't gonna happen", or "make a plugin".

Supported feature ideas usually result from proposals to improve what is already developed, like UI changes, the way a form works, or whatever, but straight up new feature ideas, or old feature ideas that are thrown at the wall again and again, rarely stick.

That's all manifestation of the core development philosophy, and it's not a bad thing.

## Core code

A 'core' feature, is something that is available natively within Textpattern, without any plugins involved.

### Core code advantages

Core features have some advantages over a plugin:

**Code quality:** Not that plugins authors write bad code, but the general rating of Textpattern code is excellent, and most plugin users don't know enough PHP to rate the plugins they use. When a feature is core, you can be sure it won't break a shared hosting server, for example.

**Ascendant/descendant compatibility:** Textpattern's core developers extensively test new features, when added, to ensure they won't break older ones, and that old features won't stop working in the future.[^1]

**Debugging:** By fact that everyone installs Textpattern but not the same plugins, the odds of bugs being discovered in a core feature, or that might affect other core features, are far greater and thus code is generally much better (i.e. code quality, again).

### New core feature caveats

New core features can't and shouldn't be added (and aren't) without thinking it through. They have inherent issues:

**Bloatware:** An endearing term meaning 'bloated software', or feature bloat, which is a result of adding too many features in the core code. This is a problem with many software projects, but not Textpattern. Fifty lines of code and a button somewhere in the backend might not seem like a lot. But add this one, and that one, and another one too, and so forth, and you'll get thousands of lines of code for trivial features that not everyone needs or wants. This *will* slow down software, making your website sluggish for no good reason at all.

**Confusing UI/UX:** An increasing number of features, and their associated UI distractions, will confuse new Textpattern users because they won't know where to start, or won't understand how to achieve a particular objective when there are many options to use. The underlying philosophy behind Textpattern can be summed up in two words: _Just write_. It is a tool to let you write content and publish it with as little distraction as possible.

**Wrongly assumptive**. Software can't read the minds of end users any more than developers who create the software can, so neither should make assumptions about what end users want any more than other end users should decide for each other.[^2] Users of software are often annoyed by excessive features they don't need but have to turn off or hide every time, often through cumbersome hacks to the core code that have to be repeated or conserved and repeated every time the system is updated. Ideal software is minimal, clean, and secure - allowing users to add features as they want them, not make them remove, hide, turn off, or opt out of them.[^3]

**Developer constraints:** Developers of Textpattern's core are deliberately few. They also don't get paid for what they do, thus don't have a lot of time outside of their 'day jobs' to maintain existing code and make reasonable advances on it, let alone fulfill feature requests. An increased number of features would mean more code to debug and check for compatibility, which would require more time they don't have, and so on. In short, you don't want them working on something someone else can do, and specialized functionality can be done by someone else as a plugin.

## Plugin code

Contrary to core functionality that is minimal and universally needed (for the most part), plugins provide specialized functionality that website owners/designers require on a case-by-case basis. Essentially, this is 'opting in' for functionality and features when a site owner wants them, but otherwise doesn't have to be distracted by it.

Plugins don't usually have hundreds of lines of code, thus are easier (and often faster) to improve, maintain, and debug, isolated from the core system.

### Plugin lifespan

Unlike core code, which is maintained in a centralized [Textpattern repository](/development/textpattern-source-code-repositories) as core developers come and go, plugins tend to have short lifespans and fall out of use. This is usually due to one of three situations:

1. The plugin developer abandons the community (for any number of personal reasons), leaving their existing plugins 'orphaned'.[^4]
2. The plugin becomes obsolete (and subsequently abandoned) by the introduction of a new and innovative plugin from someone else that provides the same capabilities, and then some.[^5]
3. The plugin functionality - or its essence - is rolled into core code.

### Plugin choice and risks

As you might realize by this point, when someone uses a plugin to provide specialized functionality, they are faced with some risks in that choice; risks they may not be aware of based on the status of the plugin (i.e. is it abandoned?) and how well it's been developed (quality of code). When it comes down to it, a bad plugin choice can be the root of many problems, from rendering other plugins inoperable, to rending the whole website inoperable, to being the cause of security weaknesses that can be exploited by malware and hackers.

## Conclusion

We've been talking about *features*, and whether they should be in core or a plugin.

New features rarely make it into core, so it's of little use to request such things. But existing features are often modified if it means improving them in some way, so feel free to point those opportunities out.

In rare cases, when there's enough value and desire from a large portion of the Textpattern community, new features are added to core, but they usually begin as plugins that were popular for a long while. In other words, there's a trial period; nothing happens fast, and nothing gets added on a whim, wish, or prayer.

Plugins provide specialized code that users can pick and choose based on their website objectives. As these plugins are not as commonly used as the core code itself, they tend to be buggier (lower code quality). Plugins also have a tendency to be abandoned over time, thus they become greater risks for use if not maintained.

So there's a couple of messages here to wrap up depending on who you are…

**Plugin users:**

If you're using plugins, make sure you're using plugins from reliable sources and developers. Do the background checking before you install anything.

If have feature requests, don't direct them to core, direct them to improve the plugins you use, or to the creation of a new plugin that provides that specialized function.

**Plugin developers:**

If you're [developing plugins](/development/), make sure you're not reinventing the wheel, and your code is good (following Textpattern best practices). And when time comes to abandon them, make it clear at all your plugin source locations that they are no longer supported - a common courtesy for the community.

[^1]: If you're developing plugins, make sure you understand the related [Disclaimer](/development/#disclaimer).

[^2]: Opposing opinions about the utility of any one feature always exist, of course, and Textpattern is not immune to this. For a long time, multi-lingual functionality was considered best handled through a plugin, and was, but Textpattern's large multi-lingual user base has lead to the effort to make multi-lingual handling core functionality. Similar situations are in progress for improved image handling, custom fields, and maybe one or two others that will appear in future versions; features that were handled by plugins alone for a long time. So it's not impossible to see features added to core, but it does take time, and a significant number of community members showing a keen desire for the changes - patch contributions also help.

[^3]: A fascinating reversal of feature/extension development is in the case of article commments. Comments are a core feature from legacy code. But as years have gone by and the nature of blogging has evolved against social media, the fashion for using comments on the web has waned. An increasing number of Textpattern users would like to see the [comments functionality removed from core](https://forum.textpattern.com/viewtopic.php?id=45956) entirely, rather than have to turn comments off and hide related elements from the UI if they don't want the distraction. The idea, rather, would be to turn this core feature into a plugin extension that users may install if they still value comments. There is no plan to remove core comments functionality at this time, nor would it likely be removed until a robust plugin replaced it, and patches were made to clean up the legacy code. Certainly a monster plugin idea to consider, and one that would be popular for users and non-users alike.

[^4]: 'Orphaned' and 'adopted' plugins are talked about in [plugin prefixes](/brand/author-prefixes-and-registration).

[^5]: This is the worst situation for expiring plugins, because their developers - bested and heartbroken - usually won't make it clear that a plugin of theirs has been made obsolete. They don't officially retire the plugin and tell the community it shouldn't be used. Thus there's often a certain percentage of 'detritus' plugins in the plugin pool, which are not safe to use, but which the unsuspecting user might use anyway because the plugin is still floating around and unmarked as hazardous.
