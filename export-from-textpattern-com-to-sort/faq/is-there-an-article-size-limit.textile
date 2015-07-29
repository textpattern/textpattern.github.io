h1. Is there an article size limit? [todo]

Textpattern uses a MySQL @mediumtext@ field for article bodies.  This limits the maximum size to about 16 megabytes per article -- including any HTML tags that form part of the article body, but not counting images or files, since these are stored separately.

You're more likely to run into a "PHP memory limit":http://textpattern.com/faq/123/fatal-error-allowed-memory-size  than reach the article storage limit.  Some hosts set the PHP memory limit to 8 megabytes.

The limit on comment size is 64 kilobytes.

