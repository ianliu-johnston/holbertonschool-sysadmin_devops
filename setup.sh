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
echo -e "a.out\n*.swp\n~*\n_betty-s\n_betty-d\n__pycache__\n" >> .gitignore
#Create the files
echo "Creating the files and directory structure"
echo "Creating tests directory"
mkdir tests
touch $(grep File: $INPUT | cut -d \> -f3 | cut -d \< -f1 | tr -d ',')
#Setup templates for the files, depending on their type.
echo '#!/usr/bin/python3' > py_template
echo "REPLACE" >> py_template
echo "    return (0)" >> py_template
echo "print(REPLACE)" >> py_template
echo '#!/bin/bash' > sh_template
echo -e "The TEST Module:\n" > test_template
echo "    >>> TEST_FXN = __import__(\"TEST\").TEST_FXN" >> test_template
echo -e "\nMake Sure Documentation Exists:\n" >> test_template
echo "    >>> module_documentation = __import__(\"TEST\").__doc__" >> test_template
echo "    >>> print(len(module_documentation) > 0)" >> test_template
echo "    True" >> test_template
echo "" >> test_template
echo "    >>> function_documentation = __import__(\"TEST\").TEST_FXN.__doc__" >> test_template
echo "    >>> print(len(function_documentation) > 0)" >> test_template
echo "    True" >> test_template
echo -e "\nCorrect Usage:\n" >> test_template
echo "    >>> print(TEST_FXN(1, 2))" >> test_template
echo "    3" >> test_template
echo -e "\nOn Errors:\n" >> test_template
echo "    >>> print(TEST_FXN(4, \"School\"))" >> test_template
echo "    Traceback (most recent call last):" >> test_template
echo "    TypeError: b must be an integer" >> test_template
find . -type f -name "*.sh" -exec cp sh_template '{}' \; -exec chmod u+x '{}' \;
find . -type f -name "*.py" -exec cp py_template '{}' \; -exec chmod u+x '{}' \;
find ./tests/ -type f -name "*.txt" -exec cp test_template '{}' \;
rm *template
# Check if any complete-the-code downloads are present.
COMPLETE_THE_CODE=$(grep -e "source code</a>" -e "here</a>" $INPUT | sed 's/<a href=\"/\n/g' | grep "http" | cut -d \" -f1 | sed 's/github/raw.githubusercontent/;s|blob/||')
if [[ $COMPLETE_THE_CODE ]]; then
	echo Getting assignment: $COMPLETE_THE_CODE
	wget -N -q $COMPLETE_THE_CODE
	find . -type f -name "*_py" -exec rename -f 's/_py/\.py/' '{}' \; -exec chmod u+x '{}' \;
fi
#Prototypes
grep Prototype: $INPUT | cut -d \> -f3 | cut -d \< -f1 >> prototypes
I=0
while read c; do
	I=$(($I+1))
	PROTO=$(echo $c | rev | cut -c 2- | rev)
	NAME=$(echo $PROTO | sed 's/def //')
	FXN_FILENAME=$(ls -1 | grep "[0-9]-" | sort -h | grep -n "" | grep "$I:" | cut -d : -f2)
	TEST_FILENAME=$(echo $FXN_FILENAME | sed 's/.py/.txt/')
	TEST=$(echo $FXN_FILENAME | cut -d '.' -f1)
	TEST_FXN=$(echo $NAME | cut -d '(' -f1)
	sed -i "s/REPLACE/$PROTO:/g;s/&quot;/\"/g" $FXN_FILENAME
	sed -i "\$s/$PROTO/$NAME/;\$s/://g" $FXN_FILENAME
	## For test Replacement:
	sed -i "s/TEST_FXN/$TEST_FXN/g" tests/$TEST_FILENAME
	sed -i "s/TEST/$TEST/g;" tests/$TEST_FILENAME
done<prototypes
rm prototypes
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
#find . -depth -type f -empty -exec rm '{}' \;
#mv $INPUT /vagrant/htmlfiles/
#rm ../$INPUT
echo "Done."
