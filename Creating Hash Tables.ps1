#Creating a Hash table, Not the bracket difference:
$hash = @{}
$Hash = @{Type='Pipe' ; Material='Coper' ; shape='Round' ; Size='Big'}   
$Hash

Creating a Hash table, using ConvertFrom-StringData: (do this multiple times note the order is random)
$string = @"
Name = Waldo
Favorite game = Hide and seek
Shirt color = Red
Glasses = Yes
Gender = male
Favorite Quote = Where is waldo
1 = the number one 
"@ 
$waldo = ConvertFrom-StringData -StringData $string 
$waldo 

#Create a hash table using group object with the parameter "-ashashtable":
$Process_as_hashtable = Get-Process | Group-Object ProcessName -AsHashTable -AsString 
$Process_as_hashtable 
$Process_as_hashtable.svchost 