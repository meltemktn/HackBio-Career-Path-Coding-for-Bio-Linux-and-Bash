#!/bin/bash


# Print your name 

echo "Meltem"

# Create a folder titled your name

mkdir meltem

cd meltem

# Create another directory called 'biocomputing' and change to that directory 

mkdir biocomputing 

cd ./biocomputing/

# Download these 3 files

wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk

# Move the ".fna" file to the folder titled your name

mv wildtype.fna ..

# Remove the duplicate ".gbk" file 


file="wildtype.gbk"

for eachfile in . ; do
	if [  -f ${file}.* ]; then
		rm ${file}.*
	fi
done


# Confirm if the ".fna" file is mutant or wild-type and print all the matching lines into a new file if mutant

cd ..

grep "tatatataat*****tg" wildtype.fna >  mutant.fna 

cat mutant.fna

# Count the number of files in the ".gbk" file

cd ./biocomputing

tail -n +2 ${file} | wc -l ${file} # To skip the first line of a file (and start piping data at the second line)

# Print the sequence length of the ".gbk" file 

#head ${file} -n 5

grep -F LOCUS ${file}| awk -F" " '{print $3}' 


# Print the source organism of the ".gbk" file

grep -F SOURCE ${file}| awk -F" " '{print $2, $3}' 


# Print all the gene names in the ".gbk" file

grep -F '/gene=' ${file}

# Clear the terminal space and list all the commands used today 

clear | history 

# List the files in the two folders

cd ..
ls -ltR 
