@ echo �������������ݣ�
@ echo ==============================
@ echo 1���ؽ����ݿ�  2���ؽ��ײ����
@ echo 3��ȫ���ؽ�    4���˳�
@ echo ==============================
@ set/p a=
@ if %a%==1 goto a
@ if %a%==2 goto b
@ if %a%==3 goto c
@ if %a%==4 exit

:a
@ echo ���ݿ��username��
@ set/p username=
@ echo ���ݿ��password��
@ set/p password=
@ cls
@ echo �������������ݣ�
@ echo ==============================
@ echo 1���ؽ����ݿ�  2���ؽ��ײ����
@ echo 3��ȫ���ؽ�    4���˳�
@ echo ==============================
@ echo username=
@ echo %username%
@ echo password=
@ echo ********
@ echo ��ʼ�������ݿ�����......
@ mysql -h localhost -u %username% --password=%password% < %~dp0%simulation_laboratory.sql
@ echo �������ݿ�����......
@ if %a%==1 goto end

:b
@ %~d0
@ cd %~p0
@ echo ��ʼ���д�������......
@ java -jar confige/mybatis-generator-core-1.3.5.jar -configfile confige/generatorConfig.xml -overwrite
@ echo ������������......
@ if %a%==2 goto end

:c
@ echo ���ݿ��username��
@ set/p username=
@ echo ���ݿ��password��
@ set/p password=
@ cls
@ echo �������������ݣ�
@ echo ==============================
@ echo 1���ؽ����ݿ�  2���ؽ��ײ����
@ echo 3��ȫ���ؽ�    4���˳�
@ echo ==============================
@ echo username=
@ echo %username%
@ echo password=
@ echo ********
@ echo ��ʼ�������ݿ�����......
@ mysql -h localhost -u %username% --password=%password% < %~dp0%simulation_laboratory.sql
@ echo �������ݿ�����......
@ %~d0
@ cd %~p0
@ echo ��ʼ���д�������......
@ java -jar confige/mybatis-generator-core-1.3.5.jar -configfile confige/generatorConfig.xml -overwrite
@ echo ������������......
@ if %a%==3 goto end

:end
@ pause