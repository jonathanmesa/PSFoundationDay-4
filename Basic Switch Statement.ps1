$input = "One"
Switch ($input)
{
      "One" { Write-Host "it's a one " }
      "One" { Write-Host "it's a one too " }
      "Two" { Write-Host "$_" } 
    "Three" { Write-Host "$_" }
      "One" { Write-Host "hey here is another one " }
      default {}
} 

##################################
$x= 0
switch ($x)
{
    'value1' {}
    {$_ -in 'A','B','C'} {}
    'value3' {}
    '0'  {Write-Host heyyyy I found a 0}
    Default {write-host none of these }
}