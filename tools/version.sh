#!/bin/sh

# Sorry about the Debian nonsense in here but the build system doesn't
# patch the file early enough and overriding it is a PITA
if test -s debian/changelog ; then
    dpkg-parsechangelog -SVersion | sed -e 's/.*://' -e 's/-.*//'
    exit
fi

cat version.txt