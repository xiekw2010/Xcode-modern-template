folderName="Modern Template"

installDirectory=~/Library/Developer/Xcode/Templates/Project\ Templates/"$folderName"

echo "Templates will be uninstalled from $installDirectory"

if [ -d "$installDirectory" ]
then
	rm -rf "$installDirectory"
fi
