#!/bin/bash

FILE=${1:-"template.7"}
TITLE=${2:-"Man-Pages Example"}
SECTION=${3:-"Man-Page Section"}
SECTION_NUM=${4:-"7"}
VER=${5:-"1.0"}
DATE="$(date +'%D')"

case $1 in
	help)
		echo "Usage: numan {FILE} {TITLE} {SECTION} {SECTION_NUMBER} {VERSION_NUMBER}"
		exit 1
esac

touch $FILE
printf ".%b\" $SECTION - $TITLE\n" '\\' > $PWD/$FILE

printf ".%b\" Add Description Here\n\n" '\\' >> $PWD/$FILE
printf ".TH $SECTION $SECTION_NUM \"$DATE\" \"$VER\" \"$TITLE\"\n\n" >> $PWD/$FILE
printf ".SH NAME\n\n" >> $PWD/$FILE
printf ".SH DESCRIPTION\n\n" >> $PWD/$FILE
printf ".SH EXAMPLES\n\n" >> $PWD/$FILE
printf ".SH SEE ALSO\n\n" >> $PWD/$FILE
printf ".SH AUTHOR\n\n" >> $PWD/$FILE
