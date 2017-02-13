#!/bin/bash
if [[ -z $1 ]]; then
	echo "Usage: ./setup.sh <html_file>"
	exit 1
fi
if [[ ! -r $1 ]]; then
	echo "File does not exist or is unreadable"
	exit 1
fi
INPUT=$1
DIR=$(grep Directory: $INPUT | head -1 | cut -d \> -f3 | cut -d \< -f1)
mkdir $DIR
cp $INPUT $DIR
cd $DIR
echo -e "a.out\n*.swp\n*~\n" >> .gitignore
#Create the files
touch $(grep File: $INPUT | cut -d \> -f3 | cut -d \< -f1 | tr -d ',')
#Setup templates for the files, depending on their type.
echo '#!/usr/bin/env bash' > sh_template
echo '#DESCRIPTION OF FUNCTIONALITY' >> sh_template
find . -type f -name "*[0-9]-*" -exec cp sh_template '{}' \; -exec chmod u+x '{}' \;
rm *template
# Check if any complete-the-code downloads are present.
COMPLETE_THE_CODE=$(grep -e "source code</a>" -e "here</a>" $INPUT | sed 's/<a href=\"/\n/g' | grep "http" | cut -d \" -f1 | sed 's/github/raw.githubusercontent/;s|blob/||')
if [[ $COMPLETE_THE_CODE ]]; then
	echo Getting assignment: $COMPLETE_THE_CODE
	wget -N -q $COMPLETE_THE_CODE
fi
#README.md
echo "Creating the README.md"
echo "#Holberton School - "$DIR > README.md
echo "Description" >> README.md
echo "" >> README.md
echo "## New commands / functions used:" >> README.md
echo "\`\`gcc\`\`" >> README.md
echo "" >> README.md
echo "## Helpful Links" >> README.md
A=$(grep -n "<h2>" $INPUT | grep -A1 "Readme" | cut -d : -f 1 | head -1)
B=$(grep -n "<h2>" $INPUT | grep -A1 "Readme" | cut -d : -f 1 | tail -1)
tail -n +$A $INPUT | head -n $(($B-$A)) | grep "<a href=" | sed 's/<a href=\"/\n/g' | grep "http"| cut -d \" -f1 | sed 's/^/* [link](/;s/$/)/' >> README.md
echo "" >> README.md
echo "## Description of Files" >> README.md
ls -1 | grep "[0-9]-" | sort -h | sed 's/^/<h6>/g;s/$/<\/h6>\n/g' >> README.md
echo "Done."
