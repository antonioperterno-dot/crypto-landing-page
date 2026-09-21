@echo off
REM Production deploy to Vercel. Requires the Vercel CLI on PATH
REM (npm i -g vercel) and a linked project (.vercel/project.json).

cd /d "%~dp0"

echo === Deploying to production ===
call vercel --prod
echo Deploy exit code: %errorlevel%

echo === Done ===