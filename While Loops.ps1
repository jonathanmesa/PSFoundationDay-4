#Using a forever while loop 

While ($true)
{
    Write-Host -ForegroundColor Yellow "Still True"
} 


#Using a while loop that will never start:
While ($false)
{
    Write-Host -ForegroundColor Red "Never Run"
} 


 while($val -ne 10)
     {
       $val += 1
       Write-Host $val -ForegroundColor Green
     }



#
While (!(Test-Connection winazcontoso03 -ErrorAction SilentlyContinue -count 1))
{
    Write-Host "Server still not Online!" -ForegroundColor Green
} 