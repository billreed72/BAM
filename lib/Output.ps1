Function Show-ResultsSaved {
    Param(
        [Parameter(Mandatory=$true)]
        [string]$Path
    )

    Write-Host 'Results saved: ' -Fore Yellow -Back Blue -NoNewLine
    Write-Host $Path -Fore DarkRed -Back gray
    Start-Sleep -Seconds 1
}
