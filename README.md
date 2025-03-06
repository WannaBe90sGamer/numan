# numan
Numan (New Man) is a program that creates a pre-formatted man-page file for you

## Installation:
Download the bin file of the script from the "Releases" tab\
Move the downloaded bin file to your path (typically "/usr/bin")\
Lastly, Restart your terminal if needed, and it shall be installed

## How To Use:
numan {FILE} {TITLE} {SECTION} {SECTION_NUMBER} {VERSION_NUMBER}\
\
FILE = Name of the output file ("e.g. "Rust (Templates).7")\
TITLE = Title of the new man page (e.g. "Rust Templates")\
SECTION = The section name of the man file (e.g. "Rust Documentation")\
SECTION_NUMBER = The section number of the man file (e.g. "7")\
VERSION_NUMBER = The version of the program (e.g. "1.0")\
\
Note: **ALL ARGUMENTS ARE OPTIONAL, BUT MUST BE IN THIS ORDER IF USED**

## Example Usage:
numan 'Rust (Templates).7'\
\
Creates a new pre-formatted manfile in the current directory with the file name "Rust (Templates).7".\
Requires user to manually edit the manfile to provide the title, section name, section number, and version number.

## Troubleshooting:
**Permission Denied:**\
File Permissions Method:\
sudo chmod u+wx /usr/bin/numan\
Provides the program with execute and write privileges if it doesn't already have them.\
\
File Owner Method (only if "File Permissions Method" doesn't work):\
sudo chown $USER /usr/bin/numan\
Changes ownership of the file to the current user.\
