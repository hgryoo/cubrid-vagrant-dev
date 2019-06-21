#install chocolately
$ChocoInstallPath = "$env:SystemDrive\ProgramData\Chocolatey\bin"

if (!(Test-Path $ChocoInstallPath)) {
  iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
}

chocolatey feature enable -n=allowGlobalConfirmation
choco install jdk8 --force -y
choco install cmake winflexbison wixtoolset -y
choco install ant -y
choco install git -y

if (!(Test-Path /Users/vagrant/.ssh)) {
 mkdir C:\Users\vagrant\.ssh
}

# Copy ssh keys
# cp C:\shares\.ssh\* C:\Users\vagrant\.ssh\