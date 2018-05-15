#!/bin/bash
file=$(pwd)'/repositories'
echo $file
if [ -e $file ]
then
  echo exists
  if [[ $(tail -1 $file) != "" ]]
  then
    echo "" >> $file
  fi
  cat $file | while read line
  do
    if [[ $line != "" && $line != "#"* ]]
    then
      directory=""
      link=""
      action=""
      stage=1
      for word in $line
      do
        case $stage in
          1)
            directory=$word
            stage=2
            ;;
          2)
            link=$word
            stage=3
            ;;
          3)
            action=$word
            stage=4
            ;;
          *)
            echo ""
        esac
      done
      #Actual Script
      
      
      
      
    fi
  done
else
  echo "#Use as following:" > repositories
  echo "#{directory} {github link} {action = pull or push}" >> repositories
fi