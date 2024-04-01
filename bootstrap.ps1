# todo create restore point

# install winget preview to get access to experimental features
# note: this method of install does not support auto updates
# https://learn.microsoft.com/en-us/windows/package-manager/winget/#install-winget-preview-version-developers-only
$wingetInstallFile = "winget.msixbundle"
Invoke-WebRequest -Uri https://aka.ms/getwingetpreview -OutFile $wingetInstallFile
Add-AppPackage -Path $wingetInstallFile
Remove-Item -Path $wingetInstallFile

# apply configuration
winget configure --file ./configurations/configuration.dsc.yaml
