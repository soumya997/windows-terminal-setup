Import-Module oh-my-posh
Import-Module posh-git
Set-PoshPrompt -Theme agnoster
Set-PoshPrompt -Theme Paradox

Import-Module PSReadLine

# Shows navigable menu of all options when hitting Tab
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Autocompleteion for Arrow keys
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource History

$colors = @{}
$colors['String'] = [System.ConsoleColor]::Magenta
$colors['Variable'] = [System.ConsoleColor]::Cyan
Set-PSReadLineOption -Colors $colors

#Set​ the color for Prediction (auto-suggestion)
#Set-PSReadlineOption -Colors @{Prediction = [ConsoleColor]::Cyan}
