#You can`t add an item to a array as it is fixed size:
$array = @()
$array.add("test")

#If you want to add something to an array you need to recreate the array:
$array = @()
$array += "test"
$array += "ok"
$array += Get-PhysicalDisk
$array 

#Changing object items in an array:
$array[0] = "New value"
$array.set(1,"Methode new value")
$array 