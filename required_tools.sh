#!/bin/bash
#//+ ITS_ function to easily check the,
#// operating systems presense of any needed package.

#/#/ Define any tools needed here seperated only by a "\:space:"\
needed_tool=' yad pastebin cat echo curl '

#//* Begin System Tool Search
require_tools ()
{
    local NOT_AVAIL=""
    for TOOL in $needed_tool; do
        if [ "`which $TOOL`" 2> /dev/null == "" ]; then
	NOT_AVAIL="$NOT_AVAIL $TOOL";
    fi
    done
    if [[ "$NOT_AVAIL" != "" ]]; then
	echo "ERROR: The following required tool(s) cannot be found: $NOT_AVAIL"
        exit 3
    fi
}

# Check file system tools before we start
require_tools || exit 1
