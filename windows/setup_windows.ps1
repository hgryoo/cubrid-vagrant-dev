#install chocolately
$ChocoInstallPath = "$env:SystemDrive\ProgramData\Chocolatey\bin"

if (!(Test-Path $ChocoInstallPath)) {
  iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
}

chocolatey feature enable -n=allowGlobalConfirmation
choco install jdk8 --force
choco install cmake winflexbison wixtoolset
choco install ant
choco install git

if (!(Test-Path /Users/vagrant/.ssh)) {
 mkdir C:\Users\vagrant\.ssh
}

Copy-Item "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Redist\MSVC\14.16.27012\MergeModules\*" -Destination "C:\Program Files (x86)\Common Files\Merge Modules"

# Copy ssh keys
# cp C:\shares\.ssh\* C:\Users\vagrant\.ssh\