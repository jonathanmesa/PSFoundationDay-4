#How break terminates the hole flow:
$array = "One", "Two", "Three"
Switch ($array)
{
      "One" { 
                Write-Host "$_" 
                Break
            }
      "Two" { 
                Write-Host "$_" 
                Break
            } 
    "Three" { 
                Write-Host "$_" 
                Break
            }
} 

#How continue only breaks the current iteration:
$array = "One", "Two", "Three"
Switch ($array)
{
      "One" { 
                Write-Host "$_" 
                Continue
            }
      "One" { 
                Write-Host "$_" 
                Continue
            }
      "Two" { 
                Write-Host "$_" 
                Continue
            } 
    "Three" { 
                Write-Host "$_" 
                Continue
            }
} 

##########