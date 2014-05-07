# Execute from most parent directory and this script will put all directory names and files into a csv file
# Edit filename.csv 
# EXAMPLE: Executing from C:\ will traverse and catalogue entire partition 

$scriptFiles = Get-ChildItem -Recurse 
$scriptFiles = $scriptFiles | select-object –property Name, Directory
$scriptFiles | export-csv –append -Path filename.csv
