Function Get-UserInput {
    Param(
        [Parameter(Mandatory=$true)]
        [string]$Prompt
    )
    Write-Host 'INPUT filename.' -ForegroundColor Cyan -BackgroundColor DarkBlue
    Read-Host -Prompt $Prompt
}
