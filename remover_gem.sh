#!/bin/bash

GEMS=`gem list --no-versions`
#for x in $GEMS ; do sudo gem uninstall $x -i /System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/gems/1.8; done
for x in $GEMS ; do sudo gem uninstall $x ;done
