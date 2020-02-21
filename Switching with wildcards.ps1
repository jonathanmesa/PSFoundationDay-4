##Switching with wildcards:
Switch -wildcard (Read-Host "What's your favorite Season?")
{
    "Fall" { Write-Host -ForegroundColor DarkYellow "$_" }
    "Winter" { Write-Host -ForegroundColor White "$_" }
    "Summer" { Write-Host -ForegroundColor Yellow "$_" }
    "Spring" { Write-Host -ForegroundColor Green "$_" }
    "*r*"    { Write-Host -ForegroundColor Magenta "There is a R in the season: $_" }
    Default  { Write-Error "The Season ($_) does not exist!" }
} 

Switching a array with statements:
$files = Get-ChildItem -Recurse -Path C:\Windows\System32 -ErrorAction SilentlyContinue | select -first 350 -skip 150
Switch ($files)
{
    { $_.length -gt 1MB } { Write-Host -ForegroundColor DarkCyan "$($_.fullname) is greater than 1MB" }
    { $_.extension -eq ".exe" } { Write-Host -ForegroundColor Red "$($_.fullname) is an executable" }
    { $_.LastAccessTime -lt (Get-Date).AddYears(-1) } { Write-Host -ForegroundColor Yellow "$($_.fullname) hasn't been accessed in a year." }
    { $_.Attributes -match  "Directory" } { Write-Host -ForegroundColor Green "$($_.fullname) is a Directory" }
} 

##########