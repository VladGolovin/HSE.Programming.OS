{
    if (addresses[$1] != 1 && substr($4, 2, 2) == day) { 
        addresses[$1] = 1;
    }
}
END {
    for(address in addresses) {
       print address | "sort"
    }
}
