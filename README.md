# bashpass #

A strong password generator written in Bash. Inspired by OpenWall's
pwqgen utility, part of the **passwdqc** toolkit.  It tries to
generate easy to remember but hard to crack passwords.

## Requirements ##

* GNU sed
* GNU grep
* GNU coreutils
* Bash
* A myspell dictionary file (usually installed with the hunspell
  package of your Linux distribution) *or* your own word list file
  (see note below).

## Installation ##

* Run `make install` to install bashpass system-wide.  Else it can be
  run from any path.

## Usage ##

By default bashpass will attempt to use a myspell dictionary file in
the locale of the shell it is running under (i.e., whatever the
**LANG** environment variable is set to). You can specify your own
word list as well (see options below).  The default password length
will be three words separated by a random punctuation/number
character but this can also be changed.

For example, run without any options, bashpass will generate
passwords like *behalves9plangent^Buber*.  See the options below for
other variants that bashpass can generate.

### Options ###

* `-n` : number of words to use in the password. Defaults to '3'.
* `-d` : path to a word list file to use to generate the password.
  Defaults to the myspell dictionary of the running shell's locale
  (using the **LANG** environment variable).
* `-b` : *bracketize* the words in the password (i.e., put a random
  set of brackets around each of the words). This generates passwords
  like *(Catullus)8{Chomsky}%(Bremen)*.
* `-s` : *surround* the password with extra symbol characters (i.e.,
  add a symbol on the front and end of the password). This generates
  passwords like *0budded$snugger+uppity%*.

The `-b` and `-s` options can be combined.

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

Note that using your own word list can significantly change the
entropy of the passwords generated, potentially resulting in easier to
crack passwords...

## Limitations ##

* Only tested for the English language using the en_US and en_GB myspell
  dictionaries.

## References ##

* http://arstechnica.com/security/2012/08/passwords-under-assault/
* http://www.openwall.com/passwdqc/
* https://xkcd.com/936/
