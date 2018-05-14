#!/bin/bash
file=$((pwd))'/repositories'

if [ -e $file ]
then
  cat $file | while read line
  do
    if [[ $line != "#"* ]]
    then
      directory
      link
      action
      for word in $line
      do
        echo $line
      done
    fi
  done
else
  echo "#Use as following:" > repositories
  echo "#{directory} {github link} {action = pull or push}" >> repositories
fi