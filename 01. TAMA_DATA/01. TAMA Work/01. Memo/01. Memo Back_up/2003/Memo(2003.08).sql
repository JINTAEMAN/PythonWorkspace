

�����������������������������������������������������������
+---------------------------------------------// Memo(2003.08) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2003.08.01(��) �۾� �������������������
---> 07:20 ~ 21:30 

- [ODBC ��������
- Oracle ODBC ������ �ݵ�� system DSN����  
Microsoft ODBC for Oracle ����̹��� ��� 
---------------------------------------------------------------------------------------------------------------------

- Oracle ODBC driver�� ����ϸ� �Ʒ��� ���� ������ �� 
MS-SQL���� TextŸ���� ODBC�� �ѱ�� LongŸ������ �ǰ� 
�̰� insert�ϸ� Oracle DB�� ������ �Ǵµ� Select dc_desc from DB_CALEDNAR 
�ϸ� ������ ������ ���� 
===============================================================================================================

- TNS ����
- listner�� ��Ȯ�� HOST�� ã�� �� �� 
HOST = tama�� HOST = localhost�� �����Ͽ� ȥ���� ���־� �� 
ORA-12154: TNS:could not resolve service name 
---------------------------------------------------------------------------------------------------------------------

C:\oracle\ora81\network\ADMIN\tnsnames.ora ���Ͽ��� 
#--- TAMAora DB( system / manager) 
TAMAora = 
  (DESCRIPTION = 
    (ADDRESS_LIST = 
      (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521)) 
    ) 
    (CONNECT_DATA = 
      (SERVICE_NAME = TAMAora) 
    ) 
  ) 
===============================================================================================================

- Emp/Imp ���� 
[Export ����]
- C:\oracle\ora81\bin\EXP.EXE ���� ���� Ŭ�� 
����ڸ�: tama/tama339 

���� ���: Oracle8i Enterprise Edition Release 8.1.7.0.0 - Production 
With the Partitioning option 
JServer Release 8.1.7.0.0 - Production 
�迭 ���� ���� ũ�� �Է�: 4096 > 

������Ʈ ����: EXPDAT.DMP > C:\oracle\OHome\Export_Data\EXPDAT.DMP =============> ���� 

(1)E(��ü �����ͺ��̽�), (2)U(�����), �Ǵ� (3)T(���̺�): (2)U > t 

���̺� ������ ������Ʈ (yes/no): yes > 

Ȯ�� ���� ���� (yes/no): yes > 

KO16KSC5601 ���� ������ KO16KSC5601 NCHAR ���� �������� ������Ʈ�� ����Ǿ����� 
�� 

������ ���̺��� ������Ʈ�Ϸ��� �մϴ� via ���� ���... 
������Ʈ�� ���̺�(T) �Ǵ� ����(T:P): (�����Ϸ��� RETURN) > DB_CALENDAR 

. . ���̺�                    DB_CALENDAR(��)�� ������Ʈ ��       1592 ���� ���� 
��Ʈ�� 
������Ʈ�� ���̺�(T) �Ǵ� ����(T:P): (�����Ϸ��� RETURN) >
===============================================================================================================

[Import ����] 
- C:\oracle\ora81\bin\IMP.EXE ���� ���� Ŭ��
Import: Release 8.1.7.0.0 - Production on �� Aug 1 23:42:06 2003 

(c) Copyright 2000 Oracle Corporation.  All rights reserved. 

����ڸ�: tama/tama339 

���� ���: Oracle8i Enterprise Edition Release 8.1.7.0.0 - Production 
With the Partitioning option 
JServer Release 8.1.7.0.0 - Production 

����Ʈ ����: EXPDAT.DMP > C:\oracle\OHome\Export_Data\EXPDAT.DMP =============> ���� 

���� ���� ũ�⸦ �Է��Ͻʽÿ� (�ּ�ġ�� 8192) 30720> 

������Ʈ ������ ���� ��θ� ���� EXPORT:V08.01.07 �� ���� �����Ǿ����� 
KO16KSC5601 �������հ� KO16KSC5601 NCHAR ���� ���տ� ����Ʈ�� �ϼ��Ǿ� 
����Ʈ ������ ���븸 ǥ���մϴ� (yes/no): no > 

��ü ����� ���� �߻��� ���� ������ �����մϴ� (yes/no): no > 

���Ѻο� ����Ʈ (yes/no): yes > 

���̺� ������ ����Ʈ (yes/no): yes > 

������Ʈ ���� ��ü�� ����Ʈ�մϴ� (yes/no): no > yes    =============> ���� 
( no�� �������� ��� DB_CALENDAR. �� ����) 
==============================================================================================================

������������������� 2003.08.02(��) �۾� ������������������� 
---> 07:20 ~ 21:30 

- TNS ����
[Microsoft][ODBC driver for Oracle][Oracle]ORA-12545: Connect failed because target host or object does not exist 
/DBcon.asp, line 3 
---------------------------------------------------------------------------------------------------------------------

ORA-12154: TNS:could not resolve service name 
ORA-12545: Connect failed because target host or object does not exist 
---------------------------------------------------------------------------------------------------------------------

- Table�� �������� �ʾҰų� ���۵��� ���� �� 
ORA-01033: ORACLE initialization or shutdown in progress 
===============================================================================================================

-- ��å 
- C:\oracle\admin\TAMAora\pfile\initTAMAora.ora ���Ͽ��� TAMAora DB ���� Ȯ��  
- C:\oracle\admin\TAMAora\bdump\tamaoraALRT.LOG ���Ͽ��� 
alter database open 
ORA-1122 signalled during: alter database open... 
===============================================================================================================

- ORA-1122 ������ ���� ���� Ȯ�� 
import ����Ÿ Ÿ���� Ʋ�� imprt �Ұ���(C:\oracle\OHome\TAMA_DATA.DBS ������ ũ�Ⱑ 
�۾Ƽ� �׷� ���� ����-> ũ�� �÷� �� ��) 

se84:/array10/hiwin> oerr ora 1122 
01122, 00000, "database file %s failed verification check" 
// *Cause:  The information in this file is inconsistent with information 
//         from the controlfile. See accompanying message for reason. 
// *Action: Make certain that the db files and controlfiles are the correct 
//         files for this database. 
===============================================================================================================

- TNS ���� Ȯ�� 
c:\> sqlplus scott/tiger@TAMAORA 
c:\> sqlplus system/manager@TAMAORA 
c:\> sqlplus tama/tama339@TAMAORA 
===============================================================================================================

������������������� 2003.08.04(��) �۾� ������������������� 
---> 07:20 ~ 21:30 

- PDA ����
- ���� ������  (062-961-9009) 
Hiwin ������ �ȵ�(Error: ������ ������ �� �����ϴ�.) 
===============================================================================================================
  
- InterMedia Text�� �̿��� LONG �˻�
1. ������ ctxsys user�� drop�Ѵ�. 
 C:\> cd C:\oracle\ora81\ctx\admin  
 C:\oracle\ora81\ctx\admin> sqlplus ctxsys/ctxsys @dr0drop.sql 
 C:\oracle\ora81\ctx\admin> sqlplus sys/change_on_install @dr0drop.sql 

 2. ���� ctxsys user�� �����Ѵ�.  
 C:\oracle\ora81\ctx\admin> sqlplus sys/change_on_install @dr0csys.sql tama339 TAMA_DATA TEMPORARY_DATA 
===> ctxsys/tama339�� ����� 

3. Default object ���� 
 C:\oracle\ora81\ctx\admin> sqlplus ctxsys/tama339 @dr0inst.sql C:\oracle\ora81\bin\oractxx8.dll 

 4. �ѱ� lexer�� �⺻���� ���� 
 C:\oracle\ora81\ctx\admin> sqlplus ctxsys/tama339 @defaults/drdefko.sql  
---------------------------------------------------------------------------------------------------------------------

* Net*8 �������
1. IPC listener address���� 
 listener.ora file�� External procedure�� ���� listener�� �����Ѵ�. 
   
 - ���� �ȵ� ��� 
 LISTENER = 
    (ADDRESS_LIST = 
        (ADDRESS = 
(PROTOCOL=tcp)(HOST=Krhp1)(PORT=1521) 
) 
) 
---------------------------------------------------------------------------------------------------------------------

- ���� �� ��� 
 LISTENER = 
  (DESCRIPTION_LIST = 
(DESCRIPTION = 
    (ADDRESS_LIST = 
(ADDRESS = (PROTOCOL=IPC)(KEY=EXTPROC0)) 
    ) 
    (ADDRESS_LIST = 
        (ADDRESS = (PROTOCOL=tcp)(HOST=Krhp1)(PORT=1521)) 
    ) 
) 
    ) 

 EXTPROC0�� ������ ���� zero�̸� �̴� default���̴�.  ���� ������  
���� ���� database�� ��ġ�Ǿ� �ִٸ� ipc�� key���� �ٸ��� �־�� �Ѵ�. 

2. SID(System Identifier)����  
 External procedure�� ����� ���� SID������ ���� listener.ora file��  
SID_LIST_LISTENER�� �����Ѵ�. 

 SID_LIST_LISTENER =  
      (SID_LIST = 
     (SID_DESC 
      .... 
    .... 
    (SID_DESC =  
  (SID_NAME=PLSExtProc) 
(ORACLE_HOME=/hom1/app/oracle/product/8.1.5) 
  (PROGRAM=extproc) 
 ) 
      ) 

3. Service Name Description����  
 tnsnames.ora file�� service name�� ������ ���� �߰��Ѵ�. 

 extproc_connection_data = 
    (DESCRIPTION =  
(ADDRESS_LIST = 
    (ADDRESS = (PROTOCOL=IPC)(KEY=EXTPROC0)) 
) 
(CONNECT_DATA = 
    (SID=PLSExtProc) 
    (PRESENTATION =RO) 
) 
    ) 

4. Listener ������ Ȯ�� 
C:\> lsnrctl serv  
---------------------------------------------------------------------------------------------------------------------
LSNRCTL for 32-bit Windows: Version 8.1.7.0.0 - Production on 04-AUG-2003 20:49: 
39 

(c) Copyright 1998 Oracle Corporation.  All rights reserved. 

(DESCRIPTION=(ADDRESS=(PROTOCOL=IPC)(KEY=EXTPROC0)))�� ����Ǿ����ϴ� 
���� ���... 
  PLSExtProc            has 1 ���� �ڵ鷯 
    DEDICATED SERVER ����:0 �ź�:0 
      LOCAL SERVER 
  TAMAora               has 1 ���� �ڵ鷯 
    DEDICATED SERVER ����:0 �ź�:0 
      LOCAL SERVER 
  TAMAora               has 1 ���� �ڵ鷯 
    DEDICATED SERVER ����:58 �ź�:0 
      LOCAL SERVER 
����� ���������� ����Ǿ����ϴ�  
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ 
  
* �����(Toad���� ���) 

insert into DB_CALENDAR values(1,'Oracle Korea', 
             utl_raw.cast_to_raw('Oracle Intermedia text')); 

insert into DB_CALENDAR values(2,'Hello', 
             utl_raw.cast_to_raw('������ ���� �ǵ� ��ȭ ����'));  

begin 
 ctx_ddl.create_preference('HAN_LEXER', 'KOREAN_LEXER'); 
 ctx_ddl.create_preference('COMMENT_FILTER', 'NULL_FILTER'); 
end;  

create index DB_CALENDAR_comment on DB_CALENDAR(cc_desc) 
 indextype is ctxsys.context 
 parameters('lexer han_lexer 
             filter comment_filter');  

 select * from DB_CALENDAR where contains(cc_desc,'�ް�') > 0; 
 select * from DB_CALENDAR where contains(cc_desc,'����') > 0; 
---------------------------------------------------------------------------------------------------------------------

����: ���� �����͸� insert�ϰ� �˻��ϸ� ���� �Է��� �����ʹ� 
�˻���󿡼� ���ܵǴ��� �˻��� ���� ���� 
����: index�� �ٽ� ���׷��� ���� �ʾƼ� �׷� 
�ذ�å: DB_CALENDAR_comment index ���� �� �ٽ� ����  

-- object_name ���� 
select count  from user_objects  
 where object_name = 'DB_CALENDAR_comment' 

  --- index ���� 
drop index DB_CALENDAR_comment; 

--- index ����  
create index DB_CALENDAR_comment on DB_CALENDAR(cc_desc) 
 indextype is ctxsys.context 
 parameters('lexer han_lexer 
             filter comment_filter');  
===============================================================================================================

- DB_CALENDAR ���̺� ���� �� long Ÿ�� select
-- DB_CALENDAR ���̺� cc_desc_var(varchar2(4000)) Į�� �߰� 
---------------------------------------------------------------------------------------------------------------------

create or replace function l_like 
( p_col in varchar2,p_lookfor in varchar2 ) return number 
as 
my_var varchar2(32767);  

begin  
select cc_desc into my_var from DB_CALENDAR where cc_desc_var = p_col;  

dbms_output.put_line(to_char(instr(p_lookfor,'%')));  
dbms_output.put_line(to_char(length(p_lookfor))); 
dbms_output.put_line(to_char(instr(my_var, p_lookfor))); 

if instr(p_lookfor,'%') = length(p_lookfor) and instr(my_var, substr(p_lookfor,1,length(p_lookfor)-1)) = 1 then 
 return 1; 
elsif instr(p_lookfor,'%') = 1 and substr(my_var,-(length(p_lookfor)-1)) = substr(p_lookfor,2,length(p_lookfor)-1) then 
 return 1; 
elsif instr(p_lookfor,'%',1,1) = 1 and instr(p_lookfor,'%',1,2) = length(p_lookfor) and instr(my_var,replace(p_lookfor,'%','')) > 0 then 
 return 1; 
elsif instr(p_lookfor,'%',1,1) = 0 and length(p_lookfor) > 0 and my_var = p_lookfor then 
 return 1; 
else 
return 0; 
end if; 
end; 
  
if instr(p_lookfor,'%') = length(p_lookfor) and instr(my_var, substr(p_lookfor,1,length(p_lookfor)-1)) = 1 then 
 return 1; 
elsif instr(p_lookfor,'%') = 1 and substr(my_var,-(length(p_lookfor)-1)) = substr(p_lookfor,2,length(p_lookfor)-1) then 
 return 1; 
elsif instr(p_lookfor,'%',1,1) = 1 and instr(p_lookfor,'%',1,2) = length(p_lookfor) and instr(my_var,replace(p_lookfor,'%','')) > 0 then 
 return 1; 
---------------------------------------------------------------------------------------------------------------------

-- ������ ���� 
create sequence seqnum 
start with 1 
increment by 1; 

-- cc_desc_var Į�� �ڵ� ���� 
insert into DB_CALENDAR(cc_desc_var,cc_desc_long)  
values(ltrim(to_char(seqnum.nextval,'0000099')),'��') 

select * from DB_CALENDAR where cc_desc_var is null; 
update DB_CALENDAR set cc_desc_var = ltrim(to_char(seqnum.nextval,'0000099')) where cc_desc_var is null;   

-- ��� ���� 
select cc_id, cc_title, cc_desc from DB_CALENDAR where l_like(cc_desc_var,'�˻���%') = 1; 
===============================================================================================================

������������������� 2003.08.05(ȭ) �۾� ������������������� 
---> 07:20 ~ 21:30 

- PDA �м�
- Hiwin �Ǽ���(��ȭ����) 
���̵�/�н�  - 50299 / 20030807 / 1152940 / 12345678 
---------------------------------------------------------------------------------------------------------------------

- Hiwin �� DB 
se1bdb ���̵�/�н� leader / solomon 
- Hiwin ���� DB 
1BDEV ���̵�/�н� leader / leader01 
---------------------------------------------------------------------------------------------------------------------

- �α�  �м�
- Wire ���� �α� �м� 
"165.243.115.18" // �� Wire ���� IP(�� 2630-3432)  -- Telnet ���� 
���̵�/�н�   tas007 / header02 

se85:/array1/tas007> cd mobile 
se85:/array1/tas007/mobile> dir 
se85:/array1/tas007/mobile> cd Wire_V52_SSL 
se85:/array1/tas007/mobile/Wire_V52_SSL> dir 
se85:/array1/tas007/mobile/Wire_V52_SSL> tail wirelog.txt 

[02041] Enter 211.171.205.209/211.171.205.209@1207, Aug 05 08:53:37 
[02042] Request DLogin.Login from 211.171.205.209/211.171.205.209@1207 
[02043] Request DDelivery.Search2 from 211.171.205.209/211.171.205.209@1207 
[02044] Request DLogin.Login from 211.171.205.209/211.171.205.209@1207 
[02045] Leave 211.171.205.209/211.171.205.209@1207, Aug 05 08:54:14, 95 sec(s) 
[02046] Request DDelivery.Search2 from 211.171.205.209/211.171.205.209@1207 
[02047] Request DDelivery.Search2 from 211.171.205.209/211.171.205.209@1207 
[02048] Request DDelivery.Search2 from 211.171.205.209/211.171.205.209@1207 
[02049] Request DDelivery.Search2 from 211.171.205.209/211.171.205.209@1207 
[02050] Request DDelivery.Search2 from 211.171.205.209/211.171.205.209@1207 
---------------------------------------------------------------------------------------------------------------------

wirelog.txt ���� �˻�(���� ������ ����)
#--- B2C ���� ���� db ȯ�� DB( hipdb / hipdb01)  
HIBCDB.world 
#--- B2C �Ǽ��� db ȯ�� DB( hipdb / hipdb01)  
HIBCPDB.world 
#---���� DB ȯ��(hipdb / hipdb01) 
HIBCDB.world 
#---���������� CRM db (hicrm / solomon) 
hicmdb.world 
#---���������� CRM ���� db (hicrm / hicrm00) 
hicmdev.world 
===============================================================================================================

������������������� 2003.08.06(��) �۾� ������������������� 
---> 07:10 ~ 19:00 

- PDA �м�
- PDA ��ġ ���� 
1. DioPen ���α׷� ������(MS Active Sync�ٽ� ��ġ) 
2. ī�� Driver���� ON ��ư ����(�ϴ� �ٽ� ������) 
c.f) iPhone�� ���� ���(HiMobileD�� ��ġ �� Temp������) 
C:\VC++_Hiplaza\PDA CAP Files\HiMobileD\1.70\iPhone �ܵ� ������ 
HiMobileD.CAB�� Temp������ ���� �� ��ġ 

��ȭ���� ��Ʈ�� �̹� ����ϰ� �ֽ��ϴ�.  ====> �ٸ�  PDA���� ����ϰ� ���� �� 
i-kit�� �ٲٸ� Unrecognized Card�� ���� OK�� 
���Ϸ� ���⿡ class�� ���⿡ �����ؾ� selectAll2(String where, String sortkey,String street)�� ������. 
===============================================================================================================

- class �� ã�� 
cannot resolve symbol ���� 
C:\HI_CRM\hicrm\cust\tradarea\dbmgr\CuTaregisterManager.java:44: cannot resolve symbol 
C:\HI_CRM\jsp_class\WEB-INF\classes�� ���� ����. �׷��Ƿ� clas ������ ���⿡ �־�� ��. 
C:\HI_CRM\jsp_class\WEB-INF\classes\hicrm\cust\tradarea\dbmgr\CuTaregisterWrap.class 
���Ϸ� ���⿡ class�� ���⿡ �����ؾ� selectAll2(String where, String sortkey,String street)�� ������. 
===============================================================================================================

select seq,nvl(market_area_code,'&nbsp;') market_area_code,branch_code,branch_name,zip_code        ,amtyear,cntyear        ,
amt01,cnt01,amt02,cnt02,amt03,cnt03,amt04,cnt04        ,amt05,cnt05,amt06,cnt06,amt07,cnt07,amt08,cnt08        ,
amt09,cnt09,amt10,cnt10,amt11,cnt11,amt12,cnt12        ,juso    from (select rownum seq,market_area_code,branch_code
,branch_name,zip_code                ,amtyear,cntyear                ,amt01,cnt01,amt02,cnt02,amt03,cnt03,amt04,cnt04               
,amt05,cnt05,amt06,cnt06,amt07,cnt07,amt08,cnt08                ,amt09,cnt09,amt10,cnt10,amt11,cnt11,amt12,cnt12               
,juso            from (                  select aa.branch_code,bb.branch_name,aa.zip_code                        
,aa.amtyear,aa.cntyear                        ,aa.amt01,aa.cnt01,aa.amt02,aa.cnt02,aa.amt03,aa.cnt03,aa.amt04,aa.cnt04                       
,aa.amt05,aa.cnt05,aa.amt06,aa.cnt06,aa.amt07,aa.cnt07,aa.amt08,aa.cnt08                        
,aa.amt09,aa.cnt09,aa.amt10,aa.cnt10,aa.amt11,aa.cnt11,aa.amt12,aa.cnt12                        
,cc.town' 'cc.district' 'cc.street juso,dd.market_area_code                     from (                                  
select branch_code,zip_code                                ,to_char(round(sum(amtyear)/1000000,1),'999,999,990.9') amtyear,sum(cntyear) 
cntyear                                ,to_char(round(sum(amt01)  /1000000,1),'999,999,990.9') amt01  ,sum(cnt01)   cnt01                                
,to_char(round(sum(amt02)  /1000000,1),'999,999,990.9') amt02  ,sum(cnt02)   cnt02                               
,to_char(round(sum(amt03)  /1000000,1),'999,999,990.9') amt03  ,sum(cnt03)   cnt03                               
,to_char(round(sum(amt04)  /1000000,1),'999,999,990.9') amt04  ,sum(cnt04)   cnt04                                
,to_char(round(sum(amt05)  /1000000,1),'999,999,990.9') amt05  ,sum(cnt05)   cnt05                               
,to_char(round(sum(amt06)  /1000000,1),'999,999,990.9') amt06  ,sum(cnt06)   cnt06                               
,to_char(round(sum(amt07)  /1000000,1),'999,999,990.9') amt07  ,sum(cnt07)   cnt07                                
,to_char(round(sum(amt08)  /1000000,1),'999,999,990.9') amt08  ,sum(cnt08)   cnt08                               
,to_char(round(sum(amt09)  /1000000,1),'999,999,990.9') amt09  ,sum(cnt09)   cnt09                                
,to_char(round(sum(amt10)  /1000000,1),'999,999,990.9') amt10  ,sum(cnt10)   cnt10                                
,to_char(round(sum(amt11)  /1000000,1),'999,999,990.9') amt11  ,sum(cnt11)   cnt11                                
,to_char(round(sum(amt12)  /1000000,1),'999,999,990.9') amt12  ,sum(cnt12)   cnt12                            
from (select a.branch_code,a.zip_code                                        ,0 amtyear,0 cntyear                                       
,nvl(sum(decode(substr(sale_date,5,2),'01',sale_amt)),0) amt01,nvl(sum(decode(substr(sale_date,5,2),'01',sale_cnt)),0) cnt01                                       
,nvl(sum(decode(substr(sale_date,5,2),'02',sale_amt)),0) amt02,nvl(sum(decode(substr(sale_date,5,2),'02',sale_cnt)),0) cnt02                                      
,nvl(sum(decode(substr(sale_date,5,2),'03',sale_amt)),0) amt03,nvl(sum(decode(substr(sale_date,5,2),'03',sale_cnt)),0) cnt03                                      
,nvl(sum(decode(substr(sale_date,5,2),'04',sale_amt)),0) amt04,nvl(sum(decode(substr(sale_date,5,2),'04',sale_cnt)),0) cnt04                                       
,nvl(sum(decode(substr(sale_date,5,2),'05',sale_amt)),0) amt05,nvl(sum(decode(substr(sale_date,5,2),'05',sale_cnt)),0) cnt05                                       
,nvl(sum(decode(substr(sale_date,5,2),'06',sale_amt)),0) amt06,nvl(sum(decode(substr(sale_date,5,2),'06',sale_cnt)),0) cnt06                                       
,nvl(sum(decode(substr(sale_date,5,2),'07',sale_amt)),0) amt07,nvl(sum(decode(substr(sale_date,5,2),'07',sale_cnt)),0) cnt07                                       
,nvl(sum(decode(substr(sale_date,5,2),'08',sale_amt)),0) amt08,nvl(sum(decode(substr(sale_date,5,2),'08',sale_cnt)),0) cnt08                                       
,nvl(sum(decode(substr(sale_date,5,2),'09',sale_amt)),0) amt09,nvl(sum(decode(substr(sale_date,5,2),'09',sale_cnt)),0) cnt09                                       
,nvl(sum(decode(substr(sale_date,5,2),'10',sale_amt)),0) amt10,nvl(sum(decode(substr(sale_date,5,2),'10',sale_cnt)),0) cnt10                                        
,nvl(sum(decode(substr(sale_date,5,2),'11',sale_amt)),0) amt11,nvl(sum(decode(substr(sale_date,5,2),'11',sale_cnt)),0) cnt11                                       
,nvl(sum(decode(substr(sale_date,5,2),'12',sale_amt)),0) amt12,nvl(sum(decode(substr(sale_date,5,2),'12',sale_cnt)),0) cnt12                                    
from post_sale a                                   where a.branch_code < 'Z00' and a.branch_code = 'A02'and a.sale_date in ( 
select substr(ymd_ch,1,6) from copy_ymd where ymd_ch like '2002%')                                   group by a.branch_code,a.zip_code                                     
union all                                  select a.branch_code,a.zip_code                                       
,nvl(sum(sale_amt),0) amtyear,nvl(sum(sale_cnt),0) cntyear                                        ,0 amt01, 0 cnt01                                       
,0 amt02, 0 cnt02                                        ,0 amt03, 0 cnt03                                        ,0 amt04, 0 cnt04                                        
,0 amt05, 0 cnt05                                        ,0 amt06, 0 cnt06                                        ,0 amt07, 0 cnt07                                       
,0 amt08, 0 cnt08                                        ,0 amt09, 0 cnt09                                        ,0 amt10, 0 cnt10                                       
,0 amt11, 0 cnt11                                        ,0 amt12, 0 cnt12                                    from post_sale a                                   
where a.branch_code < 'Z00' and a.branch_code = 'A02'and a.sale_date in ( select substr(ymd_ch,1,6)
from copy_ymd where ymd_ch like '2002%')                                   group by a.branch_code,a.zip_code                                 ) 
group by branch_code,zip_code                         ) aa,branch bb,post cc,cust_mkt_area dd                   
where aa.branch_code = bb.branch_code                     and aa.zip_code = cc.zip_code                     
and aa.branch_code = dd.branch_code(+)                     
and aa.zip_code = dd.zip_code(+)                     and cc.street like '�д�%'                   order by cc.street                 )          )  
select seq,nvl(market_area_code,'&nbsp;') market_area_code,branch_code,branch_name,zip_code        ,amtyear,cntyear       
,amt01,cnt01,amt02,cnt02,amt03,cnt03,amt04,cnt04        ,amt05,cnt05,amt06,cnt06,amt07,cnt07,amt08,cnt08       
,amt09,cnt09,amt10,cnt10,amt11,cnt11,amt12,cnt12        ,juso    
from (select rownum seq,market_area_code,branch_code,branch_name,zip_code                ,amtyear,cntyear
,amt01,cnt01,amt02,cnt02,amt03,cnt03,amt04,cnt04                ,amt05,cnt05,amt06,cnt06,amt07,cnt07,amt08,cnt08               
,amt09,cnt09,amt10,cnt10,amt11,cnt11,amt12,cnt12                ,juso            from (                  
select aa.branch_code,bb.branch_name,aa.zip_code                        ,aa.amtyear,aa.cntyear                       
,aa.amt01,aa.cnt01,aa.amt02,aa.cnt02,aa.amt03,aa.cnt03,aa.amt04,aa.cnt04                       
,aa.amt05,aa.cnt05,aa.amt06,aa.cnt06,aa.amt07,aa.cnt07,aa.amt08,aa.cnt08                        
,aa.amt09,aa.cnt09,aa.amt10,aa.cnt10,aa.amt11,aa.cnt11,aa.amt12,aa.cnt12                        
,cc.town' 'cc.district' 'cc.street juso,dd.market_area_code                     from (                                 
select branch_code,zip_code                                
,to_char(round(sum(amtyear)/1000000,1),'999,999,990.9') amtyear,sum(cntyear) cntyear                               
,to_char(round(sum(amt01)  /1000000,1),'999,999,990.9') amt01  ,sum(cnt01)   cnt01                               
,to_char(round(sum(amt02)  /1000000,1),'999,999,990.9') amt02  ,sum(cnt02)   cnt02                               
,to_char(round(sum(amt03)  /1000000,1),'999,999,990.9') amt03  ,sum(cnt03)   cnt03                                
,to_char(round(sum(amt04)  /1000000,1),'999,999,990.9') amt04  ,sum(cnt04)   cnt04                                
,to_char(round(sum(amt05)  /1000000,1),'999,999,990.9') amt05  ,sum(cnt05)   cnt05                               
,to_char(round(sum(amt06)  /1000000,1),'999,999,990.9') amt06  ,sum(cnt06)   cnt06                              
,to_char(round(sum(amt07)  /1000000,1),'999,999,990.9') amt07  ,sum(cnt07)   cnt07                               
,to_char(round(sum(amt08)  /1000000,1),'999,999,990.9') amt08  ,sum(cnt08)   cnt08                               
,to_char(round(sum(amt09)  /1000000,1),'999,999,990.9') amt09  ,sum(cnt09)   cnt09                               
,to_char(round(sum(amt10)  /1000000,1),'999,999,990.9') amt10  ,sum(cnt10)   cnt10                               
,to_char(round(sum(amt11)  /1000000,1),'999,999,990.9') amt11  ,sum(cnt11)   cnt11                               
,to_char(round(sum(amt12)  /1000000,1),'999,999,990.9') amt12  ,sum(cnt12)   cnt12                           
from (select a.branch_code,a.zip_code                                        ,0 amtyear,0 cntyear                                       
,nvl(sum(decode(substr(sale_date,5,2),'01',sale_amt)),0) amt01,nvl(sum(decode(substr(sale_date,5,2),'01',sale_cnt)),0) cnt01                                      
,nvl(sum(decode(substr(sale_date,5,2),'02',sale_amt)),0) amt02,nvl(sum(decode(substr(sale_date,5,2),'02',sale_cnt)),0) cnt02                                       
,nvl(sum(decode(substr(sale_date,5,2),'03',sale_amt)),0) amt03,nvl(sum(decode(substr(sale_date,5,2),'03',sale_cnt)),0) cnt03                                      
,nvl(sum(decode(substr(sale_date,5,2),'04',sale_amt)),0) amt04,nvl(sum(decode(substr(sale_date,5,2),'04',sale_cnt)),0) cnt04                                      
 ,nvl(sum(decode(substr(sale_date,5,2),'05',sale_amt)),0) amt05,nvl(sum(decode(substr(sale_date,5,2),'05',sale_cnt)),0) cnt05                                      
 ,nvl(sum(decode(substr(sale_date,5,2),'06',sale_amt)),0) amt06,nvl(sum(decode(substr(sale_date,5,2),'06',sale_cnt)),0) cnt06                                      
 ,nvl(sum(decode(substr(sale_date,5,2),'07',sale_amt)),0) amt07,nvl(sum(decode(substr(sale_date,5,2),'07',sale_cnt)),0) cnt07
,nvl(sum(decode(substr(sale_date,5,2),'08',sale_amt)),0) amt08,nvl(sum(decode(substr(sale_date,5,2),'08',sale_cnt)),0) cnt08                                       
,nvl(sum(decode(substr(sale_date,5,2),'09',sale_amt)),0) amt09,nvl(sum(decode(substr(sale_date,5,2),'09',sale_cnt)),0) cnt09                                       
,nvl(sum(decode(substr(sale_date,5,2),'10',sale_amt)),0) amt10,nvl(sum(decode(substr(sale_date,5,2),'10',sale_cnt)),0) cnt10                                        
,nvl(sum(decode(substr(sale_date,5,2),'11',sale_amt)),0) amt11,nvl(sum(decode(substr(sale_date,5,2),'11',sale_cnt)),0) cnt11                                        
,nvl(sum(decode(substr(sale_date,5,2),'12',sale_amt)),0) amt12,nvl(sum(decode(substr(sale_date,5,2),'12',sale_cnt)),0) cnt12                                   
from post_sale a                                   where a.branch_code < 'Z00' and a.branch_code = 'A02'and a.sale_date in (
select substr(ymd_ch,1,6) from copy_ymd where ymd_ch like '2002%')                                   
group by a.branch_code,a.zip_code                                      union all                                  
select a.branch_code,a.zip_code                                        ,nvl(sum(sale_amt),0) amtyear,nvl(sum(sale_cnt),0) cntyear                                       
,0 amt01, 0 cnt01                                        ,0 amt02, 0 cnt02                                        ,0 amt03, 0 cnt03                                       
,0 amt04, 0 cnt04                                        ,0 amt05, 0 cnt05                                        ,0 amt06, 0 cnt06                                       
,0 amt07, 0 cnt07                                        ,0 amt08, 0 cnt08                                        ,0 amt09, 0 cnt09                                       
,0 amt10, 0 cnt10                                        ,0 amt11, 0 cnt11                                        ,0 amt12, 0 cnt12                                    
from post_sale a                                   where a.branch_code < 'Z00' and a.branch_code = 'A02'and a.sale_date in 
( select substr(ymd_ch,1,6) from copy_ymd where ymd_ch like '2002%')                                   group by a.branch_code,a.zip_code                               
) group by branch_code,zip_code                         ) aa,branch bb,post cc,cust_mkt_area dd                  
where aa.branch_code = bb.branch_code                     and aa.zip_code = cc.zip_code                     
and aa.branch_code = dd.branch_code(+)                      
and aa.zip_code = dd.zip_code(+)                     and cc.street like '%'                   order by cc.street                 )          )  
===============================================================================================================

������������������� 2003.08.07(��) �۾� ������������������� 
---> 07:20 ~ 21:30 

- CRM  Excel ������
C:\HI_CRM\jsp_class\hicrm\cust\tradarea\CuTaPopupSuExcelFrm.jsp ���� 
11�� �ο� data ���� �� ���� �� <td>&nbsp;<%=cutaregister.amt11%></td> &nbsp;�� �ٿ� �ذ� 
(���� cutaregister.amt11 ����Ÿ Ÿ���� ���� ����) 

- MSCOMCT2.OCX�� ã�� �� �����ϴ�. 
-------------------------------------------------------------------------------------------------------- 

- Hiplaza ���� ���
1. B2C - Tera Term Pro --> ��Ʈ��(Dynamo.ear) �̿�  --> �ش� �������� compile(jcc) 
Tera Term Pro(156.147.149.9) administrator / admin 
- framework(�߽� ����), - entity, - db 
��Ʈ��(Dynamo.ear): \\156.147.149.9\d$ user / user 
laflog�α� -- 20010808debug.log(0310808 �϶�) 

2. CRM - JP1 --> �������� �̿� --> local �������� compile 
jp1 / abcjp1 
-------------------------------------------------------------------------------------------------------- 

- �ְ����� 03_08 2°�� 
�� ���� ���� ���� 
1. B2C - �̺�Ʈ(��ȭ�� ������ �������) �۾�  
2. CRM - ��� ��� ����Ÿ Excel ������ �۾� 
3. PDA ��� ���� ��û - �缳ġ 

�� ���� ���� ��ȹ 
===============================================================================================================

- PDA �м�
[com Class ����]   
servlet.jar�� ã�� �� �ؼ� ���� ����( import com.ibm.servlet.connmgr.*;) 
: Classpath�� C:\jakarta-tomcat-3.2.1\lib\servlet.jar�� �ֿ켱���� ���̰� �� 
C:\jakarta-tomcat-3.2.1���� ������ 3�� �־ ȥ���� �Ͼ �� ã�� 
===============================================================================================================
�÷��� ������ Ÿ���� long���� �־����ϴ�. 
���� �˱�δ� 2GB���� �Է°����ϴٰ� �˰� �ִµ�... 
-------------------------------------------------------------------------------------------------------- 
  
PL/SQL�� ����ϸ� ���� ���ϴ�. 
DECLARE ���� ���̺��.Į����%type;  
BEGIN ����:= ������ ��; 
  INSERT INTO ���̺��(Į�����) VALUES 
  (�� Į���� ���� ����, ����, �� �÷� ����); 
END; 

�� ������ SQL�� �־ EXECUTE��Ű�� �˴ϴ�. 
��) 
create table board( 
id number(10), 
contents long); 

DECLARE context board.contents%type; 
BEGIN context:='���� ���� ��'; 
  INSERT INTO board(id,contents) VALUES  
  (1,context); 
END; 
---------------------------------------------------------------------------------- 

���ε� ������ ó���ϼž� �մϴ�. 
���ε� �Ǵ� long�̶�� �˻��ϼ���. 
��,��ũ��Ʈ��� ������ �����Ǵ�  
�޼ҵ�,�Լ��� �̿��ϼž� �ϰ��. 
---------------------------------------------------------------------------------- 

���� long �� �÷��� ������ �� �͸� �μ�Ʈ ����... 
long �� �� �ʹ�  �� row�� update . 
===============================================================================================================

������������������� 2003.08.08(��) �۾� ������������������� 
---> 07:10 ~ 21:30 

- B2C ����
- ��ȭ�� ������ ������� 
/www/event/evtStaffMall.jsp���� 
-------------------------------------------------------------------------------------------------------- 

EvtStaffMallEntity count = (EvtStaffMallEntity)request.getAttribute("count"); 

if((count.count>0)){   // DB���� �Ѿ�� count >0 �̸� ( => login ����)   
opener.location.href = "/shop/main/prdbrandstore?etcStoreSeq=S300";   // �ƿ﷿ �������� �̵� 
self.close();  
} 
-------------------------------------------------------------------------------------------------------- 
http://www.lotte.com/lotte/cobuy/H2CbmCoLottePackMainPage.jsp?dispNo=040016019003&orgDispNo=026004&curDepth=4  
===============================================================================================================

������������������� 2003.08.09(��) �۾� ������������������� 
---> 07:20 ~ 20:00 
  
- B2C ����
- ��ȭ�� ������ ������� 
/www/event/evtStaffMall.jsp���� 
--------------------------------------------------------------------------------------------------------
 <% 
/*--- ��ȭ�� ������ ������� �ڵ� �ޱ�  ----*/   
String F_login = ""; 
String actType = request.getParameter("actType"); 
String S_No = (request.getParameter("S_No") != null && ! request.getParameter("S_No").equals("")) ? request.getParameter("S_No") : "";   
//out.println("[TAMA] evtStaffMall.jsp ::actType :: "+actType); 

if (actType != null) {   // DB���� �Ѿ�� DATA �� �� 

EvtStaffMallEntity S_no_Entity = (EvtStaffMallEntity)request.getAttribute("S_no_Entity");   
//out.println("<br>[TAMA] evtStaffMall.jsp ::S_no_Entity.get_s_num() ::"+ S_no_Entity.get_s_num()); 
  
 if(S_no_Entity != null ) {   // DB���� �Ѿ�� SERIAL_NO�� �����ϸ�( => login ����)  ==================== 
if(S_no_Entity.get_s_num() != null ) {   
%> 
<script language="JavaScript">  
<!--  
 opener.location.href = "/shop/main/prdoutletmodel?etcStoreSeq=S300";   // �ƿ﷿ �������� �̵� 
self.close(); 
// -->  
</script> 
<%  
} 
} else { // DB���� �Ѿ�� SERIAL_NO�� �������� ������ ==================== 
F_login = "1"; 
   } 
} 
%> 
-------------------------------------------------------------------------------------------------------- 

- URL �� 
/shop/main/evtStaffMall?actType=1&S_No=sadfsdaf -- MasterControler.java�� ���ؼ� ��� ���� 
/shop/www/event/evtStaffMall.jsp -- ���� ���� 
-------------------------------------------------------------------------------------------------------- 

-- Temp ����(�����ϸ� cache���� ��) 
\\156.147.149.9\d$\WebSphere\AppServer\temp\lgehidwse2s\B2C_AppServer\Dynamo\dyn.war\www 
===============================================================================================================

������������������� 2003.08.11(��) �۾� ������������������� 
---> 07:00 ~ 21:30 

- B2C ����
- Hiplaza 9000�� Shop 
http://156.147.149.9/shop/www/joint/usr9000Shop.jsp 
==================================================================================================================

- �Ե� 9000�� Shop 
http://www.lotte.com/lotte/cobuy/H2CbmCoLottePackMainPage.jsp?dispNo=040016019003&orgDispNo=026004&curDepth=4 
==================================================================================================================

- Enter�� �α���]
- Enter�� image Ŭ�� ��� �α��� ����  
==================================================================================================================

<script language="JavaScript">  
<!--  
function checkLogin(form){ 

//alert("[TAMA] ������ Mall :: checkLogin :: �׽�Ʈ_1 "); 
var sform = document.form1;  
  
if(form.S_No.value.length ==0){ 
alert("������ȣ�� �Է��ϼ���!"); 
sform.S_No.focus(); 
return false;   
} 
return true; 
}  

function goEventurl(Gourl){ 

var sform = document.form1; 
 //alert("[TAMA] ������ Mall :: goEventurl :: \n "+sform.S_No.value); 

if(sform.S_No.value==""){ 
alert("������ȣ�� �Է��ϼ���!"); 
sform.S_No.focus(); 
}else 
{    
location.href = "/shop/main/evtStaffMall?actType=1&S_No="+ sform.S_No.value; // login�� ���� DB�� ���� 
} 
 } 
// -->  
</script> 

<form method="POST" name="form1" action="/shop/main/evtStaffMall" onsubmit="return checkLogin(document.form1)">  
	<table width="420" border="0" cellpadding="0" cellspacing="0"> 
		<input type="text" name="S_No" size="18" maxlength ="10" style='border:1 solid #C7C7C7;back-color :black;' value="<%=S_No%>"> 
		 <a href='javascript:goEventurl("/shop/main/prdbrandstore?etcStoreSeq=S300")'> 
		 <img src="/img/evt/200308_staff/b_zip_search.gif" width="62" height="20" border=0></a> 
		 <input type="hidden" name="actType" value="2"> 

	 </table>   
 </form>  
==================================================================================================================
 
- PDA ������ġ
- ��������(�� 064)748-6600) 
����: ���� �ȵ� 
��ġ: 
1. �α� ����(wirelog.txt) 
�α׿��� [21532] ** java.lang.NullPointerException ** ���� �߻� 
2. Wire ���� ����� ��ȭ ����(���� �����)  ]
"D:\WebSphere\AppServer\installedApps\Dynamo.ear\dyn.war\www\joint\H2CbmCoLottePackCartMgr.jsp  
==================================================================================================================

������������������� 2003.08.12(ȭ) �۾� ������������������� 
---> 6:40 ~ 21:30 
  
- Virus ����]
- Worm.Win32.Blaster.6176 
�� ���� 135�� ��Ʈ�� �������� ���ȿ� ����� PC�� �����ϱ� ������ 135�� ��Ʈ�� ��ȭ������ �������� �ϸ� �ȵȴ�. 1 
35�� ��Ʈ�� �Ϲ������� ���� ����ϴ� ��Ʈ�̱� �����̸� �� ���� tftp�� ���ؼ� �ٿ�ε� �ޱ� ������ UDP 69���� ���� 
���ܵ� �� �ڵ� ������ ���� ���� 4444�� ��Ʈ�� ��ȭ������ ���°��� �켱������ ȿ�����̴�. 

<���� ���>  
o ���� ��ġ�� ������ �ٿ�ε� �޾� ��ġ - http://www.microsoft.com/korea/technet/security/bulletin/MS03-026.asp  
o RPC �������̽��� ���� ���������� ���� �ڵ� ���� ����- http://www.certcc.or.kr/eWAS_NOTICE/KA2003-054.htm  
==================================================================================================================

- PDA ����
- ���� ���� ��ǰ ���� 
==================================================================================================================

������(LP156CS) 
 - ��ü(LP-156CS) 
 - �ǿܱ�(LP-156CSA) 
 - ����(LP-156CSAA)    ---> 2���� �ϳ��� ���� ex) ����(LP-156CSAA) 2��(���� Column�߰� ����) 
 - ����(LP-156CSAB) 
  
SElect * from set_model where p_model_code = 'FA-SJ2300N' --// ��ǰ ��ȸ(p_model_code, m_model_code) 

 prod_name 
 prod_price 
 prod_qty 
==================================================================================================================

������������������� 2003.08.13(��) �۾� ������������������� 
---> 6:40 ~ 21:30 
  
- B2C ����
- 9000�� Shop �۾� 
1. ��ǰ ���� DB �̿�  
2. ��ŰID�� ��ٱ��Ͽ� �ֱ�(�迭�� ����) - usr9000Shop_Cart.jsp���� �۾� 
 �迭�� ��Ű�� �����ϰ� ������  ----> ��Ű�� �迭 ��� �� �� 
usr9000Shop_Cart.jsp���� 
- GetCookie�Ͽ� Cookie ID �޾� �Ѿ�� 4�� ��ü�� strNewAlert �迭�� �ֱ� 
- SetCookie�Ͽ� �ٽ� strNewAlert �迭 ���� 
==================================================================================================================

- �Ե� 9000�� Shop �м� 
1. ��ǰ ���� DB �̿�  
2. ��ŰID�� ��ٱ��Ͽ� �ֱ�(DB �̿��Ͽ� ����) 
==================================================================================================================

- ���� ��ȭ
- C:\Hiplaza/bin/sysfile_chk.exe���� ��� �������� 
�ٲ� ��¥ Ȯ��(03.08.08) 
==================================================================================================================

������������������� 2003.08.14(��) �۾� ������������������� 
---> 6:50 ~ 21:30 
  
- B2C ����
- JSP Type �޾� ���� 
EvtStaffMallEntity[]  Array_Entity = (EvtStaffMallEntity[])request.getAttribute("Array_Entity"); // �迭 Entity �޾ƿ��� 
EvtStaffMallEntity S_no_Entity = (EvtStaffMallEntity)request.getAttribute("S_no_Entity"); // Entity �޾ƿ��� 
EvtStaffMallEntity S_no_Entity = (EvtStaffMallEntity)request.getAttribute("S_no_Entity"); // Entity �޾ƿ��� 
Integer count_Entity = (Integer)request.getAttribute("count_Entity"); // Integer �޾ƿ���  ===== 
String string_Entity = (String)request.getAttribute("string_Entity"); // String �޾ƿ��� 
Vector dispBranchModelList = (Vector)request.getAttribute("dispBranchModel"); // Vector �޾ƿ���  
===============================================================================================================

-����ȯ 
int count_Entity2 = Integer.parseInt(reqeust.getParameter("xxx"));  
===============================================================================================================

- PDA ������ġ ���
����: ���� �ȵ� 
��ġ: 
1. �α� ����(wirelog.txt) 
�α׿��� [21532] ** java.lang.NullPointerException ** ���� �߻� 
- �α׿��� ������ �߻��ϸ� Wire�������� ������ �ִ� �ɷ� �Ǵ� 
2. Wire ���� ����� ��ȭ ����(���� ����� ��û) Wire ���� �����(�� 2630 - 3432) 

���� �αװ� ���������� ��� �ǰ� �ִٸ� Wire������ ������ 
�׷��� tomcat �������� Ȯ���ؾ� �� 
C:\jakarta-tomcat-3.2.1\bin���� startup.bat ���� Ŭ���Ͽ� ������ ���� 
C:\Wire_V52_SSL\run.bat���� Ŭ���Ͽ� ������ ���� 
http://156.147.149.27:8080/hiplaza/store/Index.jsp�� ���� 
�α����� ��(http://156.147.149.27:8080/hiplaza/store/Login.jsp) 
�ٽ� ó������ �� 

������ȸ Ŭ��(http://156.147.149.27:8080/hiplaza/store/Sale_search_input.jsp) 
������ȸ ���(http://156.147.149.27:8080/hiplaza/store/Sale_search_head.jsp)�� ���������� ������ 
tomcat �������� �������̶� �Ǵ� 
tomcat �������� Wire ������ ��� ���������� � ������ PDA ���� ���� ���� �̰ų� ��⿡ 
������ �ִٰ� �Ǵ� 
������ ��� 
- PDA ���� ������ (��)��Ʈ����(�� 3281-1777)�� ��û �϶�� �̾߱��� 
��ȭ���� ��� 
- PDA ����� �̻� ������ Ȯ���ϰ� �׷��� �ȵǸ� �ù�� ������� �̾߱��� 
===============================================================================================================

- PDA �α� �м� ���
- Se85 �Ǽ��� ȯ��(Tera Term Pro�� ����) 
server: hiplaza.co.kr(165.243.115.18) 
���̵�/�н�   tas007 / header02 

se85:/array1/tas007> cd mobile 
se85:/array1/tas007/mobile> dir 
se85:/array1/tas007/mobile> cd Wire_V52_SSL 
se85:/array1/tas007/mobile/Wire_V52_SSL> dir 
se85:/array1/tas007/mobile/Wire_V52_SSL> tail wirelog.txt 

[02041] Enter 211.171.205.209/211.171.205.209@1207, Aug 05 08:53:37 
[02042] Request DLogin.Login from 211.171.205.209/211.171.205.209@1207 
[02043] Request DDelivery.Search2 from 211.171.205.209/211.171.205.209@1207 
[02044] Request DLogin.Login from 211.171.205.209/211.171.205.209@1207 
[02045] Leave 211.171.205.209/211.171.205.209@1207, Aug 05 08:54:14, 95 sec(s) 
[02046] Request DDelivery.Search2 from 211.171.205.209/211.171.205.209@1207 
[02047] Request DDelivery.Search2 from 211.171.205.209/211.171.205.209@1207 
[02048] Request DDelivery.Search2 from 211.171.205.209/211.171.205.209@1207 
[02049] Request DDelivery.Search2 from 211.171.205.209/211.171.205.209@1207 
[02050] Request DDelivery.Search2 from 211.171.205.209/211.171.205.209@1207 
---------------------------------------------------------------------------------------- 

wirelog.txt ���� �˻�(���� ������ ����) 
===============================================================================================================

- PDA �缼��  
����: PDA�� ������ �Ǿ��ų� ���α׷� ������ �۵����� ���� �ٽ� �����ؾ� �� ��� 
��ġ: ����Ʈ���� �����Ͽ� �缼�� �� 
===============================================================================================================

- [�ְ����� 03_08 2°��] 
�� ���� ���� ���� 
1. B2C - �̺�Ʈ(��ȭ�� ������ �������) ������ �۾�  
2. B2C - Hiplaza 9000�� Shop �м� �۾� 
3. PDA ������ġ - �������� �Ұ���(���� ������)

�� ���� ���� ��ȹ 
- �ް� 
===============================================================================================================

���� sql������ insert�� ������, ����Ŭ long�� �ʵ忡�� insert sql���� �̿��ϴ� ��쿡�� ������ �߻��մ� 
��...  (������ ���� �׷����ϴ�...  win2000, oracle 8i 8.1.6) 
�ؼ� ado ���ڵ�� ��ü�� Addnew...  Update....  �� �̿��ؼ� ó���߽��ϴ�... 
Ȥ�� ������ ��� asp ���� �� Recordset ��ü�� Addnew �޽�� �κ��� �����Ͻø� �˴ϴ�... 
===============================================================================================================

Dim StrConnect 
strConnect="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\homepage\db\new_db.mdb" 

Dim Dbcon 
Set Dbcon = Server.CreateObject("ADODB.Connection") 
Dbcon.Open strConnect 
   
Dim adoRs, strSQL 
Set adoRs = Server.CreateObject("ADODB.RecordSet") 
strSQL = "Select max(listnum) from findpart" 
SET adoRs = Dbcon.execute(strsql) 

Dim listnum------------------------------------------------> �۹�ȣ ó��...... 
if isnull(adoRs(0)) then 
 listnum=1 
else 
 listnum = adors(0)+1 
end if 

with adoRs 
  .AddNew  -----------------------------------> �������� ��... 
  .Fields("name") = name 
  .Fields("title") = title 
  .Fields("pr") = pr 
  .Fields("parttype") = parttype 
  .Fields("partrequire") = partrequire 
  .Fields("zone") = zone 
  .Fields("partfield") = partfield 
  .Fields("bizstep") = bizstep 
  .Fields("career") = career   
  .Fields("vision") = vision 
  .Fields("boss") = boss 
  .Fields("tel") = tel 
  .Fields("email") = email 
  .Fields("homepage") = homepage 
  .Fields("bizname") = bizname 
  .Fields("bizaddr") = bizaddr 
  .Fields("capital") = capital 
  .Fields("charge") = charge 
  .Fields("keyword") = keyword 
  .Fields("writeday") = now() 
  .Fields("ipaddr") = ipaddr 
  .Fields("imgfile") = strimgfile 
  .Fields("attafile") = strplanName 
  .Fields("ipaddr") = ipaddr 
  .Fields("pwd") = pwd 
   
  .Update 
  .Close 
end with 

Set adoRs = nothing 
===============================================================================================================

Set oCmd = Server.CreateObject("ADODB.Command") 
o Cmd.ActiveConnection = oConn 
' ���⼭ oConn �� DB �� ����� Connection Object �� Ī�� 
o Cmd.Prepared = False  
' True �� �ϰ� �Ǵ� ��� DB �� �߰����� ���ϸ� ����Ŵ 
' ���� ���������� �ݺ����� �۾��� �ϴ� ��쿡�� True �� ������ 
' �Ϲ������� �ѹ� �۾��ϰ� ������ ��쿡�� False �� ������. 
o Cmd.CommandType = adCmdText 
o Cmd.CommandText = "insert into a values (30, ?)" 
o Cmd.Parameters.Append oCmd.CreateParameter("[Filed��]", [Field Type], [In/Out �� 
��], [Data Size], "[��") 
' ���⼭ [Field��] �� �����ϳ� ���ϳ� �����δ� �ƹ��� ���谡 ������, �Ϲ������� �� 
���� ���Ǹ� ���� �����. 
' ������ Parameter �� ������������ ? �� ������ Field ������ ���� Append �Ͽ�����. 
' �ᱹ�� ���������...[Field��] �̶��� �ƹ��� �������. 
' ������ �� ���� �ʵ� ���� ��쿡 ��� �ʵ尡 ��� �ʵ����� ���...^^; 
' [Field Type] �� DB Type �� Match �� �Ǵ� VB Type ���� �����Ͽ��� ��. MSDN �� ��  
��������. 
' [Data Size] �� �Ϲ������� ��Ȯ�� ���� �����Ͽ�����. MS SQL Server �� ��쿣 ũ 
�� ��������� ����Ŭ�� ��Ȯ�� ���� �ִ°� ����. 
o Cmd.Execute 

�� ���� ���·� ����Ͻø� �˴ϴ�... 
Command ��ü������ Parameter ������ MSDN �̳� �̰� �Խ����� �����Ͻø� �ɵ� �ϳ� 
��... 

�ᱹ ���������� ? �� ����Ͽ��� Parameter�� ���� �ְ� �ϴ� ���� Key Point �Դ� 
��... 

�ٸ�, adCmdText ���� ������� ����ϱ� ���ؼ��� Meta �±׷� ADO �� Type Library  
�� import �ϴ°� �����ϴ�...�� ���������� import �ص� ������ ȿ���� ���ؼ�  
global.asa ���� import �ϴ� ����� �Ϲ������� ����մϴ�...�Ʒ��� ���� ���·� ��� 
�ϸ� �˴ϴ�... 

<!-- METADATA TYPE="typelib" FILE="c:\program files\common  
files\system\ado\msado15.dll"--> 
===============================================================================================================

/shop/main/index_htm?name=e-shop
shop/main/index2.jsp?name=e-shop --- iframe ��� 
ADODB.Recordset (0x800A0CB3) 
��ü �Ǵ� �����ڰ� ��û�� �۾��� ������ �� �����ϴ�. 
/cal_process.asp, line 94 

http://www.taeyo.net/lecture/10_ADO/RecordSet_Update.htm 
===============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������