---
layout: document
category: FAQs
published: true
title: "Will you add my code to Textpattern?"
description: We accept most, but not all code that is submitted for inclusion in the Textpattern core.
tags:
 - Development FAQs
---

# Will you add my code to Textpattern?

We accept most, but not all code that is submitted for inclusion in the Textpattern core. Sometimes we'll accept part of a patch, or include a modified or abridged version.

Textpattern is open source, so you don't need our permission to make your own modifications or extensions. However, if you want to maximize the chances it will be accepted and included in the official distribution, here is a quick guide to the Textpattern development philosophy.

## Do the simplest thing that could possibly work

Is there a shorter or easier way to achieve the same result? Then do it that way. Less code means fewer bugs.

Don't reinvent the wheel. Is there already a function in PHP or Textpattern that makes your job easier? Use it.

## Minimize assumptions

Don't try to solve a problem unless you've tested it. This is particularly important for performance enhancements: measure the speed before and after - is the improvement really significant? If not, the simplest solution might be to leave it alone.

Similarly, don't write a bunch of functions or tag attributes on the assumption that they might be useful in the future. Unless you have a use case, leave it out.

## Make it testable

This is the most important part. The development team won't include your code in the core unless they're confident they can support and maintain it - after all, they're the ones who will receive the bugs reports and cries for help. The more you can do to help test your code, the better: examples of input and expected output, a test plan, notes on what you have and haven't tested.

Scripted unit tests are becoming increasingly important in the Textpattern release process. You can make your code more testable by using a [functional design](https://en.wikipedia.org/wiki/Functional_design) with minimal coupling. A function that can be run in isolation, and returns a value based on its arguments, is easy to test. A function that prints output based on global variables, database records and configuration values is much harder to test (conveniently, Textpattern tag handler functions are usually easy to test).

Sure, we break our own rules sometimes. But, as a rule, we err on the side of simplicity.
