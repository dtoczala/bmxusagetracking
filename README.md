# Bluemix Usage Tracking

A Bluemix usage tracking script and tools

## bmxtrack.sh

### Author: Daniel Toczala, dtoczala@us.ibm.com or dtoczala@gmail.com
Based on Bluemix Admin Script by: Leigh Williamson, leighw@us.ibm.com - https://github.com/leighawilliamson/bmxadmin

### Usage
bmxtrack.sh [-h ] [-e <endpoint>] [-l <log file>] [-a <apiKey file>] [-o <organization>]

**or**

./bmxtrack.sh [-h ] [-e <endpoint>] [-l <log file>] [-a <apiKey file>] [-o <organization>]

results in logfile.txt

### Description
This is a simple bash script which takes command line input parameters, and does some basic pulling of usage data for a Bluemix account.

### Dependencies:
- Requires the Bluemix CLI which can be downloaded from http://clis.ng.bluemix.net/ui/home.html
- Requires use of an APIKey to login to Bluemix: https://console.bluemix.net/iam/?env_id=ibm:yp:us-south#/apikeys

### Notes: 
If the Bluemix CLI is not up to date, this script will fail or hang.  If this occurs, exit out of the script, and update your version of the Bluemix CLI.

## bmxusagetrack.py

### Author: Daniel Toczala, dtoczala@us.ibm.com or dtoczala@gmail.com

### Usage
TBD

### Description
This is a simple python routine which takes command line input parameters, and does some basic pulling of usage data for a Bluemix account.

### Dependencies:
- Requires the Bluemix CLI which can be downloaded from http://clis.ng.bluemix.net/ui/home.html
- Requires use of an APIKey to login to Bluemix: https://console.bluemix.net/iam/?env_id=ibm:yp:us-south#/apikeys

### Notes: 
If the Bluemix CLI is not up to date, this script will fail or hang.  If this occurs, exit out of the script, and update your version of the Bluemix CLI.
