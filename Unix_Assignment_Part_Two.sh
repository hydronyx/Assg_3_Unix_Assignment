#************************** RENAME THE FILES STARTING WITH TXT  **********#

#! /bin/bash

cd ASSG

dt=$(date +_%Y-%m-%d-%H-%M-%S)

echo -e "  $dt \n " >> assignment.log 

for file in *.txt
do
    name=${file%.*}
    mv $file  ${name}_${dt}.txt

    echo -e "" >> assignment.log
    echo -n " ==> Renamed $file  to ${name}_${dt}.txt  " >> assignment.log 
    
done

ls *.txt


#************************** RENAME THE FILES STARTING WITH TXT  **********#


      
	for x_files in $( echo x*.* );
 
		do
		 echo -e " \n" 
		 echo -n " Enter New Name for $x_files  :  " 
      	 	 
 
     	 	 read input 
     		 mv "$x_files" "$input"

		 echo -e "\n " >> assignment.log 
		 
     	 	 echo -n " --> Renamed $x_files  to $input " >> assignment.log   
      	  	
      	 	
        done




#************************ CREATE FOLDER "public_html" ***********************#


mkdir public_html

chmod 777 public_html

cd public_html

touch readme.txt



#***************Move first 4 files from assignment folder to public_html folde*****************#

ls|sort -V
z=0

for file in $(ls ~/ASSG);
	do 
           
		if [ $z -eq 4 ] 
		then 
			break
		else 
	  		  mv "./ASSG/$file" ./ASSG/public_html/
		fi 
	z=$(expr $z + 1)
done




























