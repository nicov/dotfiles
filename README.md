dotfiles
========

## Installation

```
git clone https://github.com/nicov/dotfiles $HOME/.dotfiles
~/.dotfiles/script/install
```

### Ajouter dans ~/.bashrc

```
if [ -d $HOME/.bashrc.d ]; then
  for x in $HOME/.bashrc.d/* ; do
    test -f "$x" || continue
    test -x "$x" || continue
  . "$x"
  done
fi
```

Pense-bête
----------

- En mode insertion, la touche % permet de passer d'un caractère "entrant" à un caractère "fermant".
- gj: down on display line.
- gk: up one display line.
- g0: to first character of display line.
- g^: to first nonblank character of display line.
- g$: to end of display line.

### Text Objects

| Text Object | Selection                  | Text Object | Selection                  |
|-------------|----------------------------|-------------|----------------------------|
| a) or ab    | A pair of (parentheses)    | i) or ib    | Inside of (parentheses)    |
| a} or aB    | A pair of {braces}         | i} or ib    | Inside of {braces}         |
| a]          | A pair of [brackets]       | i]          | Inside of [brackets]       |
| a>          | A pair of <angle brackets> | i>          | Inside of <angle brackets> |
| a'          | A pair of 'single quotes'  | i'          | Inside of 'single quotes'  |
| a"          | A pair of "double quotes"  | i"          | Inside of "double quotes"  |
| a`          | A pair of `backticks`      | i`          | Inside of `backticks`      |
| at          | A pair of <xml>tags</xml>  | it          | Inside of <xml>tags</xml>  |
