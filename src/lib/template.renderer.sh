#!/bin/bash

function render()
{
    File="$1"
    IFS=""
    while read -r line; do
        while [[ "$line" =~ (\$[\{\(]?[a-zA-Z_][a-zA-Z_0-9]*((:-)?.*)?[\}\)]) ]]; do
            LHS=${BASH_REMATCH[1]}
            RHS="$(eval echo -e "\"$LHS\"")"
            line=${line//"$LHS"/"$RHS"}
        done
        echo -e "$line"
    done < $File
}
