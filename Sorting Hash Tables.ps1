#Adding a key value pair happens unorderd nor sorted:
$myhouse = @{}
$myhouse["hasadoor"] = $true
$myhouse.hasawindow = $false
$myhouse.Add("hasagarage",$false)
$myhouse["hasadoor1"] = $true
$myhouse.hasawindow1 = $false
$myhouse.Add("hasagarage1",$false)
$myhouse["hasadoor2"] = $true
$myhouse.hasawindow2 = $false
$myhouse.Add("hasagarage2",$false)
$myhouse

#Sorting the table only works if you use the enumeration method:
$myhouse | Sort-Object -Property name
$myhouse.keys | Sort-Object     #           --->> you can sort on keys but that is just a KeyCollection so you can`t see the value anymore.

$myhouse.GetEnumerator() | Sort-Object -Property name

#If you want to keep the order you add key / values you need to declare it as ordered:
#\$myhouse = [ordered]@{}
$myhouse["hasadoor"] = $true
$myhouse.hasawindow = $false
$myhouse.Add("hasagarage",$false)
$myhouse["hasadoor1"] = $true
$myhouse.hasawindow1 = $false
$myhouse.Add("hasagarage1",$false)
$myhouse["hasadoor2"] = $true
$myhouse.hasawindow2 = $false
$myhouse.Add("hasagarage2",$false)
$myhouse 