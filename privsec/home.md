# Changing $HOME for B and profit

$HOME... always full of... crap.

## Worry no more!

```
#!/bin/sh
# wrap.sh
# usage: wrap.sh <program + args>

BIN=$1
export HOME="${HOME}/opt/$(basename "$BIN")"
[ -d "$HOME" ] || mkdir -p "$HOME"
# run
${BIN}
```

```console
$ wrap.sh firefox
# opens firefox, but tricks it to think $HOME/opt/firefox/ is the homedir
```

No more crap in `~`.

`:)`
