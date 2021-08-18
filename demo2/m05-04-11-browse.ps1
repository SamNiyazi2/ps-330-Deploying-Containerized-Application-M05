
# 08/18/2021 12:55 pm - SSN 

Write-Host " "
Write-Host " "

$ip = ""

docker ps | % { if ( $_ -match '(?<IP>\d{2,3}\.\d{2,3}\.\d{2,3}\.\d{2,3}).*:(?<port>80)' ) {
        write-host "Found IP match" -ForegroundColor Yellow
        write-host $_
        write-host $Matches['IP']
        write-host $Matches['port']
        $ip = $Matches['IP']
    } }



if ( -not  [System.String]::IsNullOrWhiteSpace($IP)) {
    explorer http://$ip
}