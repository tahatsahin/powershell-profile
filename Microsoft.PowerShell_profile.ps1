function gmi { cmd /c go mod init github.com/tahatsahin/$args }
function gget { cmd /c go get github.com$args }
function gbm { cmd /c go build main.go }
function grm { cmd /c go run main.go }
function g { if($args -eq "aa") { cmd /c git add . } elseif($args -eq "st") { cmd /c git status } elseif ($args -eq "i") { cmd /c git init } elseif ($args -eq "p") { cmd /c git push --set-upstream origin master } elseif ($args[0] -eq "ra") { cmd /c git remote add origin https://github.com/tahatsahin/$($args[1]).git } elseif($args -eq "rm") { cmd /c git remote remove origin } else { cmd /c git $args} }

# Set up command prompt and window title. Use UNIX-style convention for identifying 
# whether user is elevated (root) or not. Window title shows current version of PowerShell
# and appends [ADMIN] if appropriate for easy taskbar identification
function prompt 
{ 
    if ($isAdmin) 
    {
        "[" + (Get-Location) + "] # " 
    }
    else 
    {
        "[" + (Get-Location) + "] $ "
    }
}