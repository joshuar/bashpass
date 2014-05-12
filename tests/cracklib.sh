#!/usr/bin/env bash

iterations=$1

if type -P cracklib-check > /dev/null; then
    echo "Testing ${iterations} iterations against cracklib..."
    declare -i ok=0
    declare -i notok=0
    for i in `seq 1 ${iterations}`; do
        ../bashpass -d /usr/share/myspell/en_US.dic | cracklib-check 1> /dev/null 2>&1
        if [[ $? ]]; then
            ((ok++))
        else
            ((notok++))
        fi
    done
    echo "After ${iterations} iterations:"
    echo "  $ok passwords passed ."
    echo "  $notok passwords failed."
fi

exit 0
