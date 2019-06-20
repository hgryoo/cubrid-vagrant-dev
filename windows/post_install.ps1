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