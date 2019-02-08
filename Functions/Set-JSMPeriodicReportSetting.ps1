function Set-JSMPeriodicReportSetting
{
    [cmdletbinding()]
    param
    (
        [bool]$SendEmail = $false
        ,
        $Recipient
        ,
        $Sender
        ,
        $subject
        ,
        [bool]$attachLog
        ,
        $smtpServer
        ,
        [bool]$WriteLog = $true
        ,
        [parameter()]
        [validateset('Milliseconds','Seconds','Minutes','Hours','Days')]
        $units = 'Minutes'
        ,
        [parameter()]
        $length
        ,
        [bool]$MissedIntervalTrue = $true
        ,
        [bool]$FirstTestTrue = $true
    )
    $Script:JSMPeriodicReportSettings = [PSCustomObject]@{
        SendEmail = $SendEmail
        WriteLog = $WriteLog
        SMTPServer = $smtpServer
        Recipient = $Recipient
        Sender = $Sender
        Subject = $subject
        attachlog = $attachLog
        Units = $units
        Length = $length
        MissedIntervalTrue = $MissedIntervalTrue
        FirstTestTrue = $FirstTestTrue
    }
    $Script:JSMPeriodicReportSettings
}