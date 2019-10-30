param (
    [parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [string]$DownloadLocation
)

# Get the Items
$ItemsToDelete = Get-ChildItem -Path $DownloadLocation -Recurse

# Delete the Items
foreach($Item in $ItemsToDelete) {

    Remove-Item $Item.FullName -Force

}