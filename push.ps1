# PowerShell script to publish GitHub Profile README
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "  Publishing SamuelTARE GitHub Profile README" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""

git init -b main
git add README.md
git commit -m "feat: launch aesthetic GitHub profile README"
git remote remove origin 2>$null
git remote add origin https://github.com/SamuelTARE/SamuelTARE.git

Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`nSUCCESS! Your GitHub Profile is now LIVE at https://github.com/SamuelTARE" -ForegroundColor Green
} else {
    Write-Host "`nNote: If 'SamuelTARE' repository is not created yet on GitHub:" -ForegroundColor Yellow
    Write-Host "1. Visit https://github.com/new"
    Write-Host "2. Name: SamuelTARE (must match your username)"
    Write-Host "3. Make it Public"
    Write-Host "4. Click Create, then run .\push.ps1 again!"
}
