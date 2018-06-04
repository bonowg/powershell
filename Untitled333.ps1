[int]$liczba
$liczba = "SDfSDF"
$liczba
[string]$tab1="one,two,three,four"
$tab1 | Get-Member
$tab2 = $tab1.Split(",")
$tab2
$tab2 -is [int]