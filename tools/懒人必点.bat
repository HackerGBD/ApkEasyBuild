@echo off
color 1F
echo *************************** ApkEasyProtect ***************************
echo **********************************************************************
echo ************************* Akon��Ʒ�������Ʒ *************************
echo **********************************************************************
echo ********** AndResGuard��Դ�ļ�������360�ӹ̣�Wall��������� **********
echo **********************************************************************
echo ʹ��˵�����϶�APK�ļ��������ڣ��س���ִ�С�
:start
set /p input=APK Path [Enter]:

::���ж�
if "%input%"=="" (
echo LOG ·������Ϊ�գ�
goto start
)

::��׺�Ϸ����ж�
echo %input%|findstr "apk" >nul  
if %errorlevel% equ 1 (
echo LOG ��APK�ļ��������²�����
goto start  
) 

::��͵����͵��
java -jar ApkEasyProtect.jar %input%
goto start

pause