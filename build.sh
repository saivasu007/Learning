#! /bin/bash

## Clean up any existing plugins.txt file
if [ -f plugins.txt ]
then
	rm -f plugins.txt;
fi

## Iterate over the plugins text files and create a concatenated file with all the plugins
for PLUGINS in `ls *-plugins.txt`
do
	cat $PLUGINS >> plugins.txt
done
