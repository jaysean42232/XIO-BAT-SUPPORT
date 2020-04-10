::solidworks 配置工具 sean @ 20200326
@echo on
:: 定义路径
set "diapath=HKEY_CURRENT_USER\Software\SolidWorks\Diagnostics" 
set "xiopath=C:\Program Files\xio format"

::"Document Template Folders"="C:\\ProgramData\\SolidWorks\\SOLIDWORKS 2016\\templates\\;C:\\Program Files\\SOLIDWORKS Corp\\SOLIDWORKS\\lang\\chinese-simplified\\Tutorial"

::确定SW版本，temp文件的默认位置
for /f "tokens=5*" %%a in ('reg query "%diapath%" /v "Last Validated SW Version" ') do set "a=%%b"
echo,%a%

set "tempath=HKEY_CURRENT_USER\Software\SolidWorks\SOLIDWORKS %a%\ExtReferences" 
for /f "tokens=4*" %%c in ('reg query "%tempath%" /v "Document Template Folders" ') do set "b=%%d"

::写入新地址
set "c=%xiopath%;%b%"
reg add "%tempath%" /v "Document Template Folders" /t reg_sz /d "%c%" /f


::设置新地址
::for /f "tokens=3*" %%e in ('reg query "%regpath%" /v "value sz" ') do set "c=%%f"
::echo,%c%

::set "b=%xiopath%;%a%"
::echo %b%

pause>nul
