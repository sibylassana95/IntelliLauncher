@echo off
REM Parcourt tous les sous-dossiers
for /D %%d in (*) do (
    if exist "%%d\.idea" (
        echo Ouverture de %%d
        start "" /b idea.bat  "%%d"
    )
)
exit
