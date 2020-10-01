#!/bin/bash

while read str
do
if [[ "$str" = *"(WW)"* && "$str" != "(WW) warning"* ]]
then
echo -e ${str//"(WW)"/"\033[1;33m Warning \033[0m"}
fi
done < "/var/log/anaconda/X.log"

while read str
do
if [[ "$str" = *"(II)"* && "$str" != *"(II) informational"* ]]
then
echo -e ${str//"(II)"/"\033[34m Information \033[0m"}
fi
done < "/var/log/anaconda/X.log"

