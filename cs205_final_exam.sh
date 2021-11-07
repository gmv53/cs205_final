# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and 
# provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

# The "Avg." values should be calculated as mean values for the corresponding columns.

# The spacing and header formatting should match the above formatting description exactly.

# There should be a comment explaining the purpose of each line in your shell script. 

# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat.
# However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.

BEGIN{FS="\t"}
{
if (NR!=1){
TOTAL_POKEMON=$1
TOTAL_HP+=$5
AVG_HP=TOTAL_HP/TOTAL_POKEMON
TOTAL_ATK+=$6
AVG_ATK=TOTAL_ATK/TOTAL_POKEMON
}
}
END{

print "======= SUMMARY OF POKEMON.DAT ======"
print "   Total Pokemon: "TOTAL_POKEMON 
print "   Avg. HP: "AVG_HP
print "   Avg. Attack: "AVG_ATK
print "======= END SUMMARY ======="

}