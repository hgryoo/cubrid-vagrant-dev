Copy-Item "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Redist\MSVC\14.16.27012\MergeModules\*" -Destination "C:\Program Files (x86)\Common Files\Merge Modules"

if (!(Test-Path cubrid)) {
git clone https://github.com/cubrid/cubrid.git cubrid
}

cd cubrid

# * append the result of the following command into VERSION file
# git rev-list --count HEAD

# * build command
# win/build.bat /out ${OUTPUT_DIR} dist

# C:\Users\vagrant\Documents\cubrid\dist

# $cubexe = Get-ChildItem -Path C:\Users\vagrant\Documents\cubrid\dist\CUBRID*.msi -File | Select-Object Name
# Start-Process -FilePath "C:\Users\vagrant\Documents\cubrid\dist\$($cubexe.Name)"