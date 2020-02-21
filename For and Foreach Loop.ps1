for ($i = 1; $i -lt 99; $i++)
{ 
    $i
}



##############################

foreach ($item in (Get-Process).Name)
{
   
   
   Write-Host $item 
}