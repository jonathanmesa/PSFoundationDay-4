########################################
Do 
{
    Write-Host -ForegroundColor White "Your code will always run AT LEAST once."
} 

While ($false) 
####################################################################################

do
{
   $x += 1
   Write-Host $x
}
while ($x -le 100)


###############################
#If there is no end condition the loop will be forever:
Do 
{
    Write-Host -ForegroundColor Yellow "You won't have to Ctrl+C this because it will only run once."
}

Until ($true) 