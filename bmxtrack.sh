#!/bin/bash
# Author: Daniel Toczala, dtocala@us.ibm.com or dtoczala@gmail.com
# Based on Bluemix Admin Script by: Leigh Williamson, leighw@us.ibm.com - https://github.com/leighawilliamson/bmxadmin
#
# Dependencies:
# Requires the Bluemix CLI which can be downloaded from http://clis.ng.bluemix.net/ui/home.html
# Requires use of an APIKey to login to Bluemix: https://console.bluemix.net/iam/?env_id=ibm:yp:us-south#/apikeys

# Note: if the Bluemix CLI is not up to date, this script will fail or hang.  
# If this occurs, exit out of the script, and update your version of the Bluemix CLI.

# Set default values to be used if no alternative is passed in on the command line
endpoint="https://api.ng.bluemix.net"
org="myOrg"
apiKeyFile="apiKey.json"
log_file="bmxtrack.log"
space="dev"
help=""

#
# Parse any arguments passed in on the command line
#
while getopts he:l:a:o:s: option
do
 case "${option}"
 in
 h) help="true";;
 e) endpoint=${OPTARG};;
 l) log_file=${OPTARG};;
 a) apiKeyFile=${OPTARG};;
 o) org=${OPTARG};;
 s) space=${OPTARG};;
 esac
done

if [ $help = "true" ]
then
	echo "usage: bmxtrack.sh [-h ] [-e <endpoint>] [-l <log file>] [-a <apiKey file>] [-o <organization>]"
	exit
fi

#
# Initialize & clear the log file
#
echo " " > $log_file 
echo "Starting script" 2>&1 | tee -a $log_file
echo " " 2>&1 | tee -a $log_file

#
# Log the environment used for this execution of the script
#
echo "Values used in this run of the script:" 2>&1 | tee -a $log_file
echo "Endpoint: $endpoint" 2>&1 | tee -a $log_file
echo "Log file: $log_file" 2>&1 | tee -a $log_file
echo "ApiKey file: $apiKeyFile" 2>&1 | tee -a $log_file
echo "Organization: $org" 2>&1 | tee -a $log_file
echo "Space: $space" 2>&1 | tee -a $log_file
echo " " 2>&1 | tee -a $log_file

#
# Now set your Bluemix API endpoint
#
echo "Setting CLI endpoint..." $endpoint
bx api $endpoint  >> $log_file
echo "  "  2>&1 | tee -a $log_file

#
# Log into Bluemix
#
echo "Logging in using: " $apiKeyFile 2>&1 | tee -a $log_file
bx login --apikey @$apiKeyFile -o $org -s $space >> $log_file
echo "  "  2>&1 | tee -a $log_file

#
# Now dump out the account usage for the current month
#
echo "Checking account usage for this month..." 2>&1 | tee -a $log_file
bx billing account-usage >> $log_file
<<<<<<< Updated upstream
echo "  "  2>&1 | tee -a $log_file

#
# Now dump out the org summary for the current month
#
echo "Checking Bluemix org summary for this month..." 2>&1 | tee -a $log_file
bx billing orgs-usage-summary >> $log_file
echo "  "  2>&1 | tee -a $log_file

#
=======
echo "  "  2>&1 | tee -a $log_file

#
# Now dump out the account usage for the current month
#
echo "Checking Bluemix org summary for this month..." 2>&1 | tee -a $log_file
bx billing orgs-usage-summary >> $log_file
echo "  "  2>&1 | tee -a $log_file


#
>>>>>>> Stashed changes
# Script completed, wrap up the log file
#
echo "Script complete!" 2>&1 | tee -a $log_file
echo "Look in $log_file file for details of script execution."
