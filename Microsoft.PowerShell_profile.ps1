# C:\Users\<user>\Documents\WindowsPowerShell\
# > Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
function prompt {
  Write-Host "PS " -NoNewline
  Write-Host $(get-location) -NoNewline -ForegroundColor "darkCyan"
  $status = git status
    if($status -ne $NULL) {
      Write-Host " [GIT:" -NoNewline -ForegroundColor "green"
      Write-Host $status.Split("`r")[0].Replace("On branch ", "") -NoNewline -ForegroundColor "green"
      Write-Host "]" -NoNewline -ForegroundColor "green"
    }
  return "> "
}
