@echo off
echo ==============================================
echo   Publishing SamuelTARE GitHub Profile README
echo ==============================================
echo.
echo Step 1: Initializing git repository...
git init -b main
git add README.md
git commit -m "feat: launch aesthetic GitHub profile README"
echo.
echo Step 2: Setting remote origin...
git remote remove origin 2>nul
git remote add origin https://github.com/SamuelTARE/SamuelTARE.git
echo.
echo Step 3: Pushing to GitHub...
echo (If prompted, authenticate in the browser or GitHub popup)
git push -u origin main
echo.
if %ERRORLEVEL% EQU 0 (
    echo ==============================================
    echo   SUCCESS! Your GitHub Profile is now LIVE!
    echo   Visit: https://github.com/SamuelTARE
    echo ==============================================
) else (
    echo.
    echo If the push failed with 'repository not found':
    echo 1. Go to https://github.com/new
    echo 2. Repository name: SamuelTARE
    echo 3. Check 'Public'
    echo 4. Click 'Create repository'
    echo 5. Run this push script again!
)
pause
