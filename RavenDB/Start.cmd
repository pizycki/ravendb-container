@echo off

Setlocal ENABLEDELAYEDEXPANSION

IF NOT EXIST version.txt (
    GOTO FIRST-RUN-START
) ELSE (
    set /p Build=<version.txt

    IF !Build! NEQ 3.5.35166 (GOTO FIRST-RUN-START) ELSE (GOTO START-RAVENDB)
)

:START-RAVENDB
start "Raven DB" "%~dp0\Server\Raven.Server.exe" --debug --browser
GOTO END

:FIRST-RUN-START
start http://ravendb.net/first-run?type=start^&ver=3.5.35166
echo.|set /p="3.5.35166">version.txt
GOTO START-RAVENDB
GOTO END

:END
