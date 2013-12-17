#************************** TO GET THE DATE AND TIME FROM SYSTEM **********#

DATE="`date '+%m-%d-%Y   %r'`"
echo "THE DATE AND TIME IS : $DATE " >> assignment.log
echo -e " " >> assignment.log


#************************** TO CHECK THE HOSTNAME YOU ARE RUNNING **********#



echo "THE HOST NAME IS  :- "" "   >> assignment.log
$(hostname >> assignment.log) 
echo -e " " >> assignment.log

#************************** TO CHECK THE OS & VERSION NO. YOU ARE RUNNING **********#


if [ "$(uname -s)" == 'FreeBSD' ]; then
  OS='freebsd'


elif [ -f "/etc/redhat-release" ]; then
  RHV=$(egrep -o 'Fedora|CentOS|Red.Hat' /etc/redhat-release)
  case $RHV in
    Fedora)  OS='fedora';;
    CentOS)  OS='centos';;
   Red.Hat)  OS='redhat';;
  esac

# Check for debian_version
elif [ -f "/etc/debian_version" ]; then
  OS='Debian'

# Check for arch-release
elif [ -f "/etc/arch-release" ]; then
  OS='Arch'

# Check for SuSE-release
elif [ -f "/etc/SuSE-release" ]; then
  OS='Suse'

fi


# Tell the user the operating system found.
echo  "You are Running the [ $OS ] Operating System." >> assignment.log
echo -e "" >> assignment.log


# Tell the user the operating system version details found.
echo "THE VERSION DETAILS ARE  :-" >> assignment.log
$(uname -mrsn >> assignment.log)
echo -e "" >> assignment.log

#************************** FULL PATH TO DIRECTORY YOU ARE RUNNING **********#
echo "THE PATH UPTO THE .sh IS :-" >> assignment.log
$( readlink -f t.sh >> assignment.log)
echo -e "" >> assignment.log

# OR

echo "THE CURRENT DIRECTORY IS :-"  >> assignment.log
$(pwd >> assignment.log)
echo -e "" >> assignment.log

#************************** USER LOGGED INTO THE SYSTEM **********#
echo "THE USERS LOGGED INTO SYSTEM ARE :-" >> assignment.log
$(who >> assignment.log)
echo -e "" >> assignment.log

#************************** GROUPS  **********#
echo "GROUPS YOU BELONG TO  :-" >> assignment.log
$(groups >> assignment.log) 
echo -e "" >> assignment.log

#************************** FILES LOCATED IN YOUR HOME DIRECTORY  **********#
echo "FILES LOCATED IN YOUR HOME DIRECTORY & SUBDIRECTORIES :-" >> assignment.log
$(ls -LR >> assignment.log) 


#===================================================================================================#



 
