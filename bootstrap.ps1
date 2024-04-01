# todo create restore point

# install winget preview to get access to experimental features
# note: this method of install does not support auto updates
# https://learn.microsoft.com/en-us/windows/package-manager/winget/#install-winget-preview-version-developers-only
$wingetInstallFile = "winget.msixbundle"
Invoke-WebRequest -Uri https://aka.ms/getwingetpreview -OutFile $wingetInstallFile
Add-AppPackage -Path $wingetInstallFile
Remove-Item -Path $wingetInstallFile

# stop if winget not available
# https://learn.microsoft.com/en-us/windows/package-manager/winget/
Get-Command -Name winget -ErrorAction Stop

# install 1pass
winget install --id AgileBits.1Password.CLI --source winget --exact
winget install --id AgileBits.1Password --source winget --exact

# add my account and sign in
op account add

