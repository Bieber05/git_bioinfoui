#!/user/bin/bash
sequence_count=$(grep-c "^>" "$1")

if [$1 = > ]; then
echo "$sequence_count"

elif [! -f "$1" ] ; then
echo "Error: File '$1' not found"
exit

else
sequence_count=$(grep -c "^>" "$1")
echo "Total number of sequences: $sequence_count"

