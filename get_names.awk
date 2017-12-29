#!/usr/bin/awk -f

# This script prints the first column of the piped-in text file.

BEGIN {}

{print $1;}

END {}
