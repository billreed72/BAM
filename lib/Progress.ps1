Function Show-Progress {
    Param(
        [Parameter(Mandatory=$true)]
        [int]$Current,

        [Parameter(Mandatory=$false)]
        [string]$Message
    )

    Write-Host -NoNewLine $Current -Fore Blue -Back White
    Write-Host '.' -Fore Red -Back White -NoNewLine
    if ($Message) {
        Write-Host " $Message"
    }
}
