Function Show-Menu {
    Param(
        [Parameter(Position=0,Mandatory=$TRUE,HelpMessage="Menu Help text")]
        [ValidateNotNullOrEmpty()]
        [string]$Menu,

        [Parameter(Position=1)]
        [ValidateNotNullOrEmpty()]
        [string]$Title="Menu",

        [switch]$ClearScreen
    )

    if ($ClearScreen) {Clear-Host}
    Write-Host "`n`t$xAppName`n" -Fore Magenta
    $menuPrompt = $Title
    $menuPrompt += "`n`t"
    $menuPrompt += "="*$Title.Length
    $menuPrompt += "`n"
    $menuPrompt += $Menu
    Read-Host -Prompt $menuPrompt
}
