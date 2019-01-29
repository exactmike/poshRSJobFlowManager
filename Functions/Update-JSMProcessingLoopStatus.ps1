function Update-JSMProcessingLoopStatus
{
    [cmdletbinding()]
    param
    (
      $Job,
      $Message,
      $Status,
      [switch]$Reset
    )
    if ($false -eq (Test-Path 'variable:script:JSMProcessingLoopStatus') -or $true -eq $Reset)
    {
      $script:JSMProcessingLoopStatus = @()
    }
    $script:JSMProcessingLoopStatus += [pscustomobject]@{TimeStamp = Get-TimeStamp; Job = $Job; Message = $Message;Status = $Status}
}
