::Sean creat this file @ 2020/4/9
::��������һ��С�İ�֮ǰ�����ļ���ɾ���ˣ��������¿�ʼ
 
@echo off

:loop
cls
echo 1.������Ŀ�ļ���
echo 2.����solidworks�����ļ�
echo 3.�޸�solidworksĬ���ļ�����
echo 4.ʹϵͳĬ�ϴ�С����
echo 5.����solidworksж�غ�Ĳ����ļ�
echo 6.��ȡsolidworks�����ļ�

echo *************************************
set /p a=����������Ҫ�Ĳ������:
if %a%==1 goto aa1
if %a%==2 goto aa2
if %a%==3 goto aa3
echo ������ֵ���ԣ��밴��������䣡&pause>nul&goto loop

echo *************************************
::1.������Ŀ�ļ���
:aa1
set /p a=������Ŀ¼��:
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
echo 2.����solidworks�����ļ� ok

pause
exit

echo *************************************
:aa3
echo 3.�޸�solidworksĬ���ļ����� ok

pause
exit