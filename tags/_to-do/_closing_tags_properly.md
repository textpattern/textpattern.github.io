[todo:pw]

Textpattern tags behave like XML tags insofar as they must be *closed* correctly.

Any containing tag must have both an opening tag and a corresponding closing tag (marked with a preceding slash):

```html
<txp:some_tag>
  ...
</txp:some_tag>
```


If the tag is a conditional tag, check to make sure that any "else":/home/www/zendstudio/dokuwiki/bin/doku.php?id=else tag is employed correctly:

*Right*:

```html
<txp:if_some_condition>
  ...true branch...
<txp:else />
  ...false branch...
</txp:if_some_condition>
```


*Wrong*:

<ul>
<li>```html
<txp:else>
```

</li>
<li>```html
</txp:else>
```

</li>
<li>```html
</txp:else />
```

</li>
</ul>
```

Single (self-closing) tags must have a single slash at the end:

```html
<txp:some_single_tag with="attributes" />
```


Also check that the angle brackets have not been HTML encoded by mistake, e.g.:

bc. &#60;txp:some_tag /&#62;


