$Value=1 
$Extension =".zip"

foreach ($url in get-content E:\XML\Builds\ComponentWorkload.txt) 

{

$Filename=("ComponentPackage")
$Filename = "$Filename$Value$Extension"
invoke-webrequest -uri $url -outfile E:\ComponentStaging\$Filename 
$Value=$Value+1

}

move-Item -force -path E:\ComponentStaging\*.zip -Destination \\<FileShare>\PortalTemp\Components\
