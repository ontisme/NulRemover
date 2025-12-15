#Requires -Version 5.1
# iex (irm https://raw.githubusercontent.com/ontisme/NulRemover/main/nul-remover.ps1)
gci -Pa . -Fi nul -R -Fo -EA 0 | %{ try{[IO.File]::Delete("\\?\$($_.FullName)")}catch{} }
Write-Host "Done" -Fo Green
