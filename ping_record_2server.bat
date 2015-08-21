@echo off
for /f "tokens=*" %%A in ('ping 127.0.0.1 -n 1 ') do (echo %%A>>pinglog.txt)
for /f "tokens=*" %%A in ('ping 127.0.0.1 -n 1 ') do (echo %%A>>pinglog_otherserver.txt && GOTO Ping)
:Ping
timeout /t 3 /nobreak
for /f "tokens=* skip=2" %%A in ('ping 127.0.0.1 -n 1 ') do (echo %date% %time% %%A>>pinglog.txt)
for /f "tokens=* skip=2" %%A in ('ping 127.0.0.1 -n 1 ') do (echo %date% %time% %%A>>pinglog_otherserver.txt  && GOTO Ping)
