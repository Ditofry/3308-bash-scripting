# 1) Accept a file name as the first command line argument
# 2) Read in the data file
# 3) Calculate the average of the scores
# 4) Sort the output by last name then first name
# 5) Format the output as shown below
while read sid first last g1 g2 g3           
do           
	average=$(( (g1+g2+g3)/3 ))
	echo "$average [$sid] $last, $first"           
done < $1 | sort -k 3 -k 2 


