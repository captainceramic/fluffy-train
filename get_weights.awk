#!/usr/bin/awk -f

# This script just prints the token, none of the other things.
BEGIN {}

{
    # Blank out first column.
    $1 = "";

    # I don't quite know why this works? 'Recalculate'?
    $0=$0;
    NF=NF;
    print;
}

END {}
