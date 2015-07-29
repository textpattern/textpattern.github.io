h1. How fast is Textpattern? [todo]

To the best of our knowledge, Textpattern is at least as fast as any similar weblog/cms package, and often several times faster.  Out of the box, and running on modest server hardware, it can comfortably handle several page views per second (i.e. hundreds of thousands of hits per day).

"Sencer":http://sencer.de/ posted some "benchmarks":http://www.sencer.de/article/1036/wordpress-vs-textpattern-a-quick-performance-benchmark  that demonstrate a default Textpattern install is around 2-3 times faster than Wordpress.

Caching is normally of benefit only for web sites with *very* heavy traffic - in the order of many requests per second.  You'll find some information about caching "here":http://www.sencer.de/article/1198/weblog-software-benchmark-ii, including comparisons to other cached weblog packages.

On a fast server, Textpattern can serve dozens of hits per second _without caching_, and hundreds per second with caching installed [1].

Though there are several articles floating around that describe some methods of optimizing Textpattern's performance, most of these were written for older versions of Textpattern.  Our experience is that most of these optimizations make no significant difference in real-world tests, and some actually *degrade* performance.

If you're experiencing performance issues due to sudden heavy traffic (such as a "slashdotting":http://en.wikipedia.org/wiki/Slashdotting), you can temporarily reduce the server load by setting "Logging" to "None" (textpattern > admin > prefs).  Under normal circumstances, this has no significant performance benefit.

[1]. Source: TextDrive weblog, "Sencer's caching plugin for textpattern is snazzy":http://weblog.textdrive.com/article/73/sencers-caching-plugin-for-textpattern-is-snazzy.