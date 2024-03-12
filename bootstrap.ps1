# stop if winget not available
# https://learn.microsoft.com/en-us/windows/package-manager/winget/
Get-Command -Name winget -ErrorAction Stop

# install 1pass
winget install --id AgileBits.1Password.CLI --source winget --exact
winget install --id AgileBits.1Password --source winget --exact

# add my account and sign in
op account add

