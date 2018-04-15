param(
    [Parameter(Mandatory=$true)]
    [ValidateSet("4","8","16")] 
    [string]
    $Size,

    [Parameter(Mandatory=$true)]
    [string]
    $Prefix
)

$startTime = [DateTime]::Now
echo ("start time: " + ($startTime).ToString())

$CountMap = @{
    "16" = 20000, 3500, 4000, 3000, 800, 400, 70, 12, 4
    "8"  = 166, 50, 18, 3, 1
    "4"  = 5000, 875, 1000, 750, 200, 100, 17, 3, 1
}


$Counts = $CountMap[$Size]

for ($i=0; $i -lt $Counts.Length; $i++)
{
    $Count = $Counts[$i]
    $total += $Count
}

echo ""
$endTime = [DateTime]::Now
echo ("Duration: " + ($endTime - $startTime).ToString())
echo ("Total: {0}" -f $total)
echo ""

