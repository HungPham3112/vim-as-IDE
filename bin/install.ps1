Set-PSDebug -Off
function refreshenv {
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 
}
iwr -useb get.scoop.sh | iex
scoop install git
git config --system --unset credential.helper
scoop update
scoop bucket add nerd-fonts
scoop install vim nodejs go make cousine-NF-Mono
refreshenv
gvim -c ":PlugInstall | :qa!"
$FinalMessage = @"
------------------------------------------------------------
-----INSTALLATION DONE!!! RESTART TERMINAL AND ENJOY<3-----
------------------------------------------------------------
"@
Write-Output $FinalMessage


