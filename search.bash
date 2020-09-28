#!/bin/bash
cd ~/
if (grep -r -n $2 $1)
then
echo "has found"
else
echo "nothing found"
fi
