$Outfile=
$scriptFiles = Get-ChildItem -Recurse 
$scriptFiles = $scriptFiles | select-object –property Name, Directory
$scriptFiles | export-csv –append -Path $outfile
