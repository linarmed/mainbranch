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
    '20' = 10
    '21' = 10
}

echo ("Startime: " + ($startTime).ToString())
$startTime = [DateTime]::Now

foreach ($Number in $ToCheck)
{
    
    foreach ($i in 0..($TypeCountMap[$Number] - 1))
    {
        $Wildcard = "P$Number`T$i`I*"
    }
}

echo ""
$endTime = [DateTime]::Now
echo ("Duration: " + ($endTime - $startTime).ToString())
echo ""

