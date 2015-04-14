#!/usr/bin/env bash

# Default the folder name to "Yiyan Template".
folderName="Yiyan Template"

# Ensure that at most one argument has been passed in.
if [ "$#" -eq 1 ]
then
	folderName=$1
elif [ "$#" -gt 1 ]
then
	echo -e "This script takes one argument at most.\\ne.g. install.sh \"$folderName\""
	exit 1
fi

# Determine the install directory.
installDirectory=~/Library/Developer/Xcode/Templates/Project\ Templates/"$folderName"

echo "Templates will be installed to $installDirectory"

# Delete the install directory if it already exists to prevent deleted files from lingering.
if [ -d "$installDirectory" ]
then
	rm -r "$installDirectory"
fi

# Create the install directory.
mkdir -p "$installDirectory"

# Copy all of the xctemplate folders into the install directory.
cp -r *.xctemplate "$installDirectory"

mkdir -p "$installDirectory"/"Base.xctemplate/Supporting Files/"
mkdir -p "$installDirectory"/"Simple Application.xctemplate/Vendors/"
mkdir -p "$installDirectory"/"Simple Application.xctemplate/Common/"
mkdir -p "$installDirectory"/"Simple Application.xctemplate/Classes/"
mkdir -p "$installDirectory"/"Simple Application.xctemplate/Controllers/"
mkdir -p "$installDirectory"/"Simple Application.xctemplate/Categories/"
mkdir -p "$installDirectory"/"Simple Application.xctemplate/Views/"
mkdir -p "$installDirectory"/"Simple Application.xctemplate/Resources/"
mkdir -p "$installDirectory"/"Simple Application.xctemplate/Models/"
