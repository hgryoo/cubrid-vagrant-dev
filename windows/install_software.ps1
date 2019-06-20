Write-Host "Installing Visual Studio 2017. This may take a while..."
$exe = Get-ChildItem -Path C:\vagrant\vs_*.exe -File | Select-Object Name
Start-Process -FilePath "C:\vagrant\$($exe.Name)" -ArgumentList (
'--add Microsoft.Component.MSBuild',
'--add Microsoft.VisualStudio.Component.TextTemplating',
'--add Component.Linux.CMake',
'--add Component.MDD.Linux',
'--add Microsoft.VisualStudio.Component.VC.CoreIde',
'--add Microsoft.VisualStudio.Component.CoreEditor',
'--add Microsoft.VisualStudio.Component.VC.140',
'--add Microsoft.VisualStudio.Component.VC.Tools.x86.x64',
'--add Microsoft.Component.VC.Runtime.UCRTSDK',
'--add Microsoft.VisualStudio.Component.VC.ATLMFC',
'--add Microsoft.VisualStudio.Component.VC.CLI.Support',
'--lang en-US',
'--wait',
'--passive',
'--norestart'
) -Wait

# please refer module ids of Visual Studio 2017 :
# https://docs.microsoft.com/ko-kr/visualstudio/install/workload-component-id-vs-build-tools?view=vs-2017

# If you need jdk-7
# $exe = Get-ChildItem -Path C:\vagrant\jdk-7*.exe -File | Select-Object Name
# Start-Process -FilePath "C:\vagrant\$($exe.Name)" -ArgumentList (
# '/quiet /qn /norestart /l* jdk7_install.log'
# ) -Wait -Passthru
