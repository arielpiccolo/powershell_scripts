cls

# getting data and settiing up paths
$folders = Get-Content C:\__.csv                            #<< enter and complete the  path to csv folders list
[string]$path_to_folder_destination = 'C:\__new_location__' #<< eneter and complete the destination path

# getting current working dir
$working_dir = (Get-Item .).FullName

# some basic err handling
$folder_non_existant = @()


# for loop
foreach ($folder in $folders){
    
        
    if (Test-Path $folder) {
        Move-Item $folder -Destination $path_to_folder_destination
        
    }
    else {
        $folder_non_existant += $folder | Out-File  $working_dir\failed.txt -Append  -Force
    }
            
     
}
