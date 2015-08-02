h1. "Notice: undefined variable.." and similar messages [todo]

When your Production Status is set to Debugging, it's not uncommon to see PHP Notices similar to this:

bc.. Notice: Undefined index: permlink in 
	.../textpattern/lib/txplib_misc.php(412) : 
	eval()'d code on line 26


p. Debugging mode is intended for just that: debugging problems. If everything is working fine, there's no reason to turn on Debugging.

Notices in debug mode are not unusual, and by themselves aren't an indicator of something wrong. If the only symptom you have is that there are notices produced when Production Status is set to Debugging, then there's nothing wrong, and you can safely ignore them.

By itself, with no other symptoms, a Notice is not a bug, so please don't report it as such.

On the other hand, if something is failing to work, the messages produced in debug mode might be helpful in tracking down the source of the problem.
