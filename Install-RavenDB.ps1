# Definitions
$RavenDB_ZIP = 'C:\Windows\Temp\RavenDB_Server.zip'
$RavenDB_Install_DIR = "C:\RavenDB" 

try {    
    # RaveDB installation directory
    mkdir $RavenDB_Install_DIR

    if (!(Test-Path($RavenDB_Install_DIR))) {
        Write-Error "Directory for RavenDB installtion was not created!"  
    }

    # Extract RavenDB.zip to installation directory
    Write-Output "Extracting RavenDB..."
    Expand-Archive $RavenDB_ZIP $RavenDB_Install_DIR # -Verbose
    Write-Output "Extracting RavenDB done!"    
    Get-ChildItem $RavenDB_Install_DIR

    # Remove zip with installation
    Remove-Item $RavenDB_ZIP
}
catch [System.Exception] {
    return -1
}