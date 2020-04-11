::Sean creat this file @ 2020/4/9
::今天下午一不小心把之前建的文件都删掉了，决定重新开始
 
@echo off

:loop
cls
echo 1.创建项目文件夹
echo 2.复制solidworks配置文件
echo 3.修改solidworks默认文件配置
echo 4.使系统默认打开小键盘
echo 5.清理solidworks卸载后的残余文件
echo 6.提取solidworks配置文件

echo *************************************
set /p a=请输入您需要的操作序号:
if %a%==1 goto aa1
if %a%==2 goto aa2
if %a%==3 goto aa3
echo 输入数值不对！请按任意键重输！&pause>nul&goto loop

echo *************************************
::1.创建项目文件夹
:aa1
set /p a=请输入目录名:
echo %a%
set b=%date:~0,4%%date:~5,2%%date:~8,2%_%a%
cd/d  %~dp0
md %b%
cd %b%
mkdir Module
mkdir Reference
mkdir PR
cd Module
mkdir 301-Structural_Assembly
mkdir 302-Structural_Part
mkdir 303-Structural_Unit
md 304-Structural_BOM
::md 366-Wiring_Layout_Model
::md 367-Wiring_Layout_Assembly_Drawing
md 368-Cable_Drawing
md 369-Cable_BOM
md 406_Label_Drawing
md 407_Label_Bom
md 416-Packing_Model
md 417-Packing_Assembly_Drawing
md 419-Packing_BOM
pause
exit

echo *************************************
:aa2
echo 2.复制solidworks配置文件 ok

pause
exit

echo *************************************
:aa3
echo 3.修改solidworks默认文件配置 ok

pause
exit