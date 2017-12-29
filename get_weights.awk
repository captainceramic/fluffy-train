#!/usr/bin/awk -f

# This script prints everything except the first column
# of the piped-in text file.
# Based on: https://stackoverflow.com/questions/2626274/print-all-but-the-first-three-columns
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
