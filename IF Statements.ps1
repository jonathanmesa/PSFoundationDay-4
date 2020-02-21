$x =  Read-Host "Enter value for x"
$y = Read-Host "Enter value for Y"

if ($x -gt $y)
{
  Write-Host " $x is gt $y"  
}
else {
Write-Host " $x is not  gt $y" 

}




##################################################################################################
$Language = (Get-CimInstance –ClassName Win32_OperatingSystem).OSLanguage

if ($Language -eq "1033")
{
    Write-Host "Language = English US" -ForegroundColor Magenta
}
elseif ($Language –eq "1078")
{
    Write-Host "Language = Afrikaans" -Foregroundcolor Green
}
else
{
    Write-Host "Another Language" -ForegroundColor Cyan

