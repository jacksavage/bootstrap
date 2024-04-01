# todo create restore point

# install winget preview to get access to experimental features
# note: this method of install does not support auto updates
# https://learn.microsoft.com/en-us/windows/package-manager/winget/#install-winget-preview-version-developers-only
$wingetInstallFile = "winget.msixbundle"
Invoke-WebRequest -Uri https://aka.ms/getwingetpreview -OutFile $wingetInstallFile
Add-AppPackage -Path $wingetInstallFile
Remove-Item -Path $wingetInstallFile

# install git
winget install --id Git.Git -e --source winget
$env:PATH += ";${env:ProgramFiles}\Git\cmd"

# clone the repo
git clone "https://github.com/jacksavage/bootstrap.git"
Set-Location -Path "./bootstrap"

# test configuration
# https://learn.microsoft.com/en-us/windows/package-manager/winget/configure#configure-subcommands
winget configure test --file ./configurations/configuration.dsc.yaml
