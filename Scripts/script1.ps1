param(
    [Parameter(Mandatory=$true)]
    [ValidateSet('5', '6','10','11', '12', '13', '14', '15', '16', '17', '20', '21')] 
    [string]
    $Number
)

$TypeCountMap = @{
    '5' = 9
    '6' = 9
    '10' = 9
    '11' = 9
    '12' = 9
    '13' = 9
    '14' = 9
    '15' = 9
    '16' = 9
    '17' = 9
    '20' = 5
    '21' = 5
}


foreach ($Number in $ToCheck)
{
    
    foreach ($i in 0..($TypeCountMap[$Number] - 1))
    {
        $Wildcard = "P$Number`T$i`I*"
        $AddressWildcard = "*@P$Number`T$i`I*"
    }
}
