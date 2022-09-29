pointer starts at 0

pointer is at 0 and need to go to temp0 (cell 0) so do nothing
temp0         [-]
pointer is at 0 and need to go to temp1 (at cell 1) so move one position to the right
temp1        >[-]
pointer is at 1 and need to go to temp2 (at cell 2) so move another position to the right
temp2        >[-]
pointer at 2 and needs to go to 3 so move another position to the right
temp3        >[-]
pointer at 3 and needs to go to 4 so move another position to the right
temp4        >[-]
pointer at 4 and needs to go to 5 so move another position to the right
temp5        >[-]

pointer at 5 and needs to go to 6 so move one to the right
randomh   >[
    pointer at 6 and needs to go to 0 so move 6 to the left
    temp0    <<<<<<+
    pointer at 0 and needs to go to 6 so move 6 to the right
    randomh  >>>>>>-]