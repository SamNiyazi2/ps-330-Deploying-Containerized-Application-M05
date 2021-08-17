
# 08/16/2021 05:37 am - SSN 

function ec {

    param($command, $note)

    process {

        write-host " "
        write-host " "

        if ( ! [System.String]::IsNullOrWhiteSpace($note)) {
            write-host $note -ForegroundColor Yellow
        }

        write-host $command -ForegroundColor blue
        Write-Host

        Invoke-Expression $command

        Write-Host " "
        Write-Host "========================================================= "
        Write-Host " "
    }
}

function sleep-for {

    param ( $seconds = 5, $message = "browser")

    process { 

        write-host "Wait $seconds seconds for $message..." -ForegroundColor Yellow

        start-sleep -Seconds $seconds

    }
}