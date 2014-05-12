# bashpass #

A strong password generator written in Bash. Inspired by OpenWall's
pwqgen utility, part of the **passwdqc** toolkit.  It tries to
generate easy to remember but hard to crack passwords. 

## Requirements ##

* GNU sed
* GNU coreutils
* Bash version 4+
* A myspell dictionary file (usually installed with the hunspell
  package of your Linux distribution) *or* your own word list file.

## Installation ##

* Run `make install`

## Usage ##

By default bashpass will attempt to use a myspell dictionary file in
the locale of the shell it is running under (i.e., whatever the
**LANG** environment variable is set to). You can specify your own
word list as well (see options below).  The default password length
will be three words separated by a random punctuation/number
character but this can also be changed.

### Options ###

* `-n` : number of words to use in the password. Defaults to '3'.
* `-d` : path to a word list file to use to generate the password.
  Defaults to the myspell dictionary of the running shell's locale
  (using the **LANG** environment variable).

### Using your own word list ###

The format of the word list file specified y the `-d` option should be
a list of words, one per line.  i.e.:

```shell
correct
battery
horse
staple
etc.
```
## Limitations ##

* Only tested for the English language using the en_US myspell
  dictionary.

## References ##

* http://arstechnica.com/security/2012/08/passwords-under-assault/
* http://www.openwall.com/passwdqc/
* https://xkcd.com/936/
