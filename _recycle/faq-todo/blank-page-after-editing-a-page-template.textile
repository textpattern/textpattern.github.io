h1. Blank page after editing a page template [todo]

This usually means an error has occured but is not displayed because you're running in Live mode.  Setting the Production Status preference to *Live* suppresses all error messages.  When a fatal error occurs in Live mode, the result is a blank page.

Go to *textpattern > admin > preferences*, and set Production Status to *Testing*, then view the problem page again.  You should see a more informative error message this time.

It's always a good idea to use Testing mode when editing templates and forms.  Switch to Live mode only when you're certain everything works.

(Debugging mode is intended only for developers; it's normal to see some spurious messages in this mode)

If you're still seeing a blank page even in *Testing* mode, the most likely cause is a syntax error in one of your @<txp:...>@ tags.  Common problems to look for include:

* "unclosed tags":http://textpattern.com/faq/72/warning-missing-argument-2-for 
* @<txp:else>@ instead of @<txp:else />@
* @</txp:foo />@ instead of @</txp:foo>@
* @&#60;txp:foo@ instead of @<txp:foo>@
