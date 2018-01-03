#!/usr/bin/awk -f

# This script prints everything except the first column
# of the piped-in text file.
# Based on: https://stackoverflow.com/questions/2626274/print-all-but-the-first-three-columns
BEGIN {}

{
    # Blank out first column.
    $1 = "";

    # Set the $0 (full column) to the current value of the full column.
    $0 = $0;
    
    NF = NF;
    
    print;
}

END {}
