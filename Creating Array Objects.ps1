#Creating an array using @():
$array = @()
$array.gettype()
$array

#Creating an array from multiple items:
$array2 = "test","shoe",(Get-Partition),"54321"
$array2.gettype()
$array2

#Creating an array from a command that returns a array:
$array3 = get-service | Select-Object -First 5
$array3.gettype()
$array3

#Casting a result into an array:
$array4 = get-service | Select-Object -First 1
$array4.gettype()
$array4