#!/bin/bash

A=$1
B=$2

if [ $# -ne 2 ]; then
 echo "Please use this script quest2.sh /localation/of/logfile.log ErrorCode"
fi

if ! [ -e $A ]; then
   echo "log file does not exist"
   exit 1
fi

if [ -z $B ]; then
  echo "Errorcode Can not be null"
  exit 1
fi

statusCount=`cat $A | grep -w "$B" | wc -l`

echo "The count of the Errorcode $B  in log file is: $statusCount" 
 





