REM �رջ���
@echo off

REM ��ȡ��������
set name=%computername%

set "year=%date:~0,4%"
set "month=%date:~5,2%"
set "day=%date:~8,2%"
set "hour_ten=%time:~0,1%"
set "hour_one=%time:~1,1%"
set "minute=%time:~3,2%"
set "second=%time:~6,2%"


::ƴ����Ҫ��ʱ������
if "%hour_ten%" == " " (
    set xianzai=%year%-%month%-%day%  0%hour_one%:%minute%:%second%

) else (

    set xianzai=%year%-%month%-%day%  %hour_ten%%hour_one%:%minute%:%second%
)

::��ʾ����ʱ��
echo ����ʱ���� %xianzai%


REM ��������Ϊpc... �� d:\..,���򣬴�e.. 
if %name%==PC-20120406CCRV (


    ::����ǰĿ¼���޸ĵ����д���ӹ�������ӵ��ݴ��� . ����ǰĿ¼
    git add .

    :: ����������������زֿ�
    git commit -m "%xianzai%"

    ::���ذ汾�����͵�Զ�ֿ̲�
    git push


)






::�ȴ��û�����
pause
