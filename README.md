# kirkiano.github.io

kirkiano main site


## Dev installation (Mac OS)

```
make install_rbenv
```
If X-Code dev tools have not yet been installed, this
will take more time.

Add `eval "$(rbenv init - bash)"` to `~/.bash_profile`.
Do not try to evaluate this manually in every shell;
you will eventually forget to do so and it will cause
confusion. Trying to incorporate it as a reusable target
in Makefile is also not practical.

Next run:
```
make install_ruby
```
This too may take some time.
See the Makefile for the actual Ruby version installed.

Finally:
```
make install_gems
```

`rbenv`'s [README](https://github.com/rbenv/rbenv#readme)
is generally helpful.

To uninstall a gem: `gem uninstall <gem-name>`.

## Serve

```
make serve
```
Ignore the following error if shown in the output:
```
ERROR NoMethodError: undefined method `tainted?' for "`/favicon.ico' not found.":String
```

## Build

```make build```