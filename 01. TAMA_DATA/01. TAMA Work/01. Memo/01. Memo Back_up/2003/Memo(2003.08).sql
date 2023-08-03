

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2003.08) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2003.08.01(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:20 ~ 21:30 

- [ODBC 설정오류
- Oracle ODBC 설정시 반드시 system DSN에서  
Microsoft ODBC for Oracle 드라이버를 사용 
---------------------------------------------------------------------------------------------------------------------

- Oracle ODBC driver를 사용하면 아래와 같은 에러가 뜹 
MS-SQL에서 Text타입이 ODBC로 넘기니 Long타입으로 되고 
이게 insert하면 Oracle DB에 저장은 되는데 Select dc_desc from DB_CALEDNAR 
하면 웹에서 보이지 않음 
===============================================================================================================

- TNS 에러
- listner엣 정확한 HOST를 찾지 못 함 
HOST = tama를 HOST = localhost로 설정하여 혼돈을 없애야 함 
ORA-12154: TNS:could not resolve service name 
---------------------------------------------------------------------------------------------------------------------

C:\oracle\ora81\network\ADMIN\tnsnames.ora 파일에서 
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

- Emp/Imp 사용법 
[Export 사용법]
- C:\oracle\ora81\bin\EXP.EXE 파일 더블 클릭 
사용자명: tama/tama339 

접속 대상: Oracle8i Enterprise Edition Release 8.1.7.0.0 - Production 
With the Partitioning option 
JServer Release 8.1.7.0.0 - Production 
배열 인출 버퍼 크기 입력: 4096 > 

엑스포트 파일: EXPDAT.DMP > C:\oracle\OHome\Export_Data\EXPDAT.DMP =============> 주의 

(1)E(전체 데이터베이스), (2)U(사용자), 또는 (3)T(테이블): (2)U > t 

테이블 데이터 엑스포트 (yes/no): yes > 

확장 영역 압축 (yes/no): yes > 

KO16KSC5601 문자 설정과 KO16KSC5601 NCHAR 문자 설정에서 엑스포트가 종료되었습니 
다 

지정된 테이블을 엑스포트하려고 합니다 via 규정 경로... 
엑스포트할 테이블(T) 또는 분할(T:P): (종료하려면 RETURN) > DB_CALENDAR 

. . 테이블                    DB_CALENDAR(를)을 엑스포트 중       1592 행이 엑스 
포트됨 
엑스포트할 테이블(T) 또는 분할(T:P): (종료하려면 RETURN) >
===============================================================================================================

[Import 사용법] 
- C:\oracle\ora81\bin\IMP.EXE 파일 더블 클릭
Import: Release 8.1.7.0.0 - Production on 금 Aug 1 23:42:06 2003 

(c) Copyright 2000 Oracle Corporation.  All rights reserved. 

사용자명: tama/tama339 

접속 대상: Oracle8i Enterprise Edition Release 8.1.7.0.0 - Production 
With the Partitioning option 
JServer Release 8.1.7.0.0 - Production 

임포트 파일: EXPDAT.DMP > C:\oracle\OHome\Export_Data\EXPDAT.DMP =============> 주의 

삽입 버퍼 크기를 입력하십시오 (최소치는 8192) 30720> 

엑스포트 파일은 규정 경로를 거쳐 EXPORT:V08.01.07 에 의해 생성되었습니 
KO16KSC5601 문자집합과 KO16KSC5601 NCHAR 문자 집합에 임포트가 완성되었 
임포트 파일의 내용만 표시합니다 (yes/no): no > 

객체 존재로 인해 발생한 생성 오류는 무시합니다 (yes/no): no > 

권한부여 임포트 (yes/no): yes > 

테이블 데이터 임포트 (yes/no): yes > 

엑스포트 파일 전체를 임포트합니다 (yes/no): no > yes    =============> 주의 
( no를 선택했을 경우 DB_CALENDAR. 를 설정) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.08.02(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 21:30 

- TNS 에러
[Microsoft][ODBC driver for Oracle][Oracle]ORA-12545: Connect failed because target host or object does not exist 
/DBcon.asp, line 3 
---------------------------------------------------------------------------------------------------------------------

ORA-12154: TNS:could not resolve service name 
ORA-12545: Connect failed because target host or object does not exist 
---------------------------------------------------------------------------------------------------------------------

- Table이 생성되지 않았거나 시작되지 않을 때 
ORA-01033: ORACLE initialization or shutdown in progress 
===============================================================================================================

-- 대책 
- C:\oracle\admin\TAMAora\pfile\initTAMAora.ora 파일에서 TAMAora DB 정보 확인  
- C:\oracle\admin\TAMAora\bdump\tamaoraALRT.LOG 파일에서 
alter database open 
ORA-1122 signalled during: alter database open... 
===============================================================================================================

- ORA-1122 에러에 대한 정보 확인 
import 데이타 타입일 틀려 imprt 불가능(C:\oracle\OHome\TAMA_DATA.DBS 파일이 크기가 
작아서 그럴 수도 있음-> 크기 늘려 줄 것) 

se84:/array10/hiwin> oerr ora 1122 
01122, 00000, "database file %s failed verification check" 
// *Cause:  The information in this file is inconsistent with information 
//         from the controlfile. See accompanying message for reason. 
// *Action: Make certain that the db files and controlfiles are the correct 
//         files for this database. 
===============================================================================================================

- TNS 연결 확인 
c:\> sqlplus scott/tiger@TAMAORA 
c:\> sqlplus system/manager@TAMAORA 
c:\> sqlplus tama/tama339@TAMAORA 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.08.04(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 21:30 

- PDA 에러
- 광주 광산점  (062-961-9009) 
Hiwin 접속이 안됨(Error: 서버에 접속할 수 없습니다.) 
===============================================================================================================
  
- InterMedia Text를 이용한 LONG 검색
1. 기존의 ctxsys user를 drop한다. 
 C:\> cd C:\oracle\ora81\ctx\admin  
 C:\oracle\ora81\ctx\admin> sqlplus ctxsys/ctxsys @dr0drop.sql 
 C:\oracle\ora81\ctx\admin> sqlplus sys/change_on_install @dr0drop.sql 

 2. 새로 ctxsys user를 생성한다.  
 C:\oracle\ora81\ctx\admin> sqlplus sys/change_on_install @dr0csys.sql tama339 TAMA_DATA TEMPORARY_DATA 
===> ctxsys/tama339로 변경됨 

3. Default object 생성 
 C:\oracle\ora81\ctx\admin> sqlplus ctxsys/tama339 @dr0inst.sql C:\oracle\ora81\bin\oractxx8.dll 

 4. 한글 lexer를 기본으로 설정 
 C:\oracle\ora81\ctx\admin> sqlplus ctxsys/tama339 @defaults/drdefko.sql  
---------------------------------------------------------------------------------------------------------------------

* Net*8 설정방법
1. IPC listener address설정 
 listener.ora file에 External procedure를 위한 listener를 설정한다. 
   
 - 설정 안된 경우 
 LISTENER = 
    (ADDRESS_LIST = 
        (ADDRESS = 
(PROTOCOL=tcp)(HOST=Krhp1)(PORT=1521) 
) 
) 
---------------------------------------------------------------------------------------------------------------------

- 설정 한 경우 
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

 EXTPROC0의 마지막 값은 zero이며 이는 default값이다.  만일 서버에  
여러 개의 database가 설치되어 있다면 ipc의 key값을 다르게 주어야 한다. 

2. SID(System Identifier)설정  
 External procedure의 사용을 위한 SID설정을 위해 listener.ora file의  
SID_LIST_LISTENER을 수정한다. 

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

3. Service Name Description설정  
 tnsnames.ora file에 service name을 다음과 같이 추가한다. 

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

4. Listener 설정의 확인 
C:\> lsnrctl serv  
---------------------------------------------------------------------------------------------------------------------
LSNRCTL for 32-bit Windows: Version 8.1.7.0.0 - Production on 04-AUG-2003 20:49: 
39 

(c) Copyright 1998 Oracle Corporation.  All rights reserved. 

(DESCRIPTION=(ADDRESS=(PROTOCOL=IPC)(KEY=EXTPROC0)))에 연결되었습니다 
서비스 요약... 
  PLSExtProc            has 1 서비스 핸들러 
    DEDICATED SERVER 설립:0 거부:0 
      LOCAL SERVER 
  TAMAora               has 1 서비스 핸들러 
    DEDICATED SERVER 설립:0 거부:0 
      LOCAL SERVER 
  TAMAora               has 1 서비스 핸들러 
    DEDICATED SERVER 설립:58 거부:0 
      LOCAL SERVER 
명령이 성공적으로 수행되었습니다  
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ 
  
* 사용방법(Toad에서 사용) 

insert into DB_CALENDAR values(1,'Oracle Korea', 
             utl_raw.cast_to_raw('Oracle Intermedia text')); 

insert into DB_CALENDAR values(2,'Hello', 
             utl_raw.cast_to_raw('리눅스 시장 판도 변화 조짐'));  

begin 
 ctx_ddl.create_preference('HAN_LEXER', 'KOREAN_LEXER'); 
 ctx_ddl.create_preference('COMMENT_FILTER', 'NULL_FILTER'); 
end;  

create index DB_CALENDAR_comment on DB_CALENDAR(cc_desc) 
 indextype is ctxsys.context 
 parameters('lexer han_lexer 
             filter comment_filter');  

 select * from DB_CALENDAR where contains(cc_desc,'휴가') > 0; 
 select * from DB_CALENDAR where contains(cc_desc,'여름') > 0; 
---------------------------------------------------------------------------------------------------------------------

주의: 새로 데이터를 insert하고 검색하면 새로 입력한 데이터는 
검색대상에서 제외되는지 검색이 되질 않음 
원인: index가 다시 업그레이 되지 않아서 그럼 
해결책: DB_CALENDAR_comment index 삭제 후 다시 생성  

-- object_name 생성 
select count  from user_objects  
 where object_name = 'DB_CALENDAR_comment' 

  --- index 삭제 
drop index DB_CALENDAR_comment; 

--- index 생성  
create index DB_CALENDAR_comment on DB_CALENDAR(cc_desc) 
 indextype is ctxsys.context 
 parameters('lexer han_lexer 
             filter comment_filter');  
===============================================================================================================

- DB_CALENDAR 테이블 수정 후 long 타입 select
-- DB_CALENDAR 테이블에 cc_desc_var(varchar2(4000)) 칼럼 추가 
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

-- 시퀸스 생성 
create sequence seqnum 
start with 1 
increment by 1; 

-- cc_desc_var 칼럼 자동 증가 
insert into DB_CALENDAR(cc_desc_var,cc_desc_long)  
values(ltrim(to_char(seqnum.nextval,'0000099')),'봄') 

select * from DB_CALENDAR where cc_desc_var is null; 
update DB_CALENDAR set cc_desc_var = ltrim(to_char(seqnum.nextval,'0000099')) where cc_desc_var is null;   

-- 결과 실행 
select cc_id, cc_title, cc_desc from DB_CALENDAR where l_like(cc_desc_var,'검색어%') = 1; 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.08.05(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 21:30 

- PDA 분석
- Hiwin 실서버(백화점용) 
아이디/패스  - 50299 / 20030807 / 1152940 / 12345678 
---------------------------------------------------------------------------------------------------------------------

- Hiwin 실 DB 
se1bdb 아이디/패스 leader / solomon 
- Hiwin 개발 DB 
1BDEV 아이디/패스 leader / leader01 
---------------------------------------------------------------------------------------------------------------------

- 로그  분석
- Wire 서버 로그 분석 
"165.243.115.18" // 실 Wire 서버 IP(☎ 2630-3432)  -- Telnet 접속 
아이디/패스   tas007 / header02 

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

wirelog.txt 파일 검색(에러 없으면 정상)
#--- B2C 개발 서버 db 환경 DB( hipdb / hipdb01)  
HIBCDB.world 
#--- B2C 실서버 db 환경 DB( hipdb / hipdb01)  
HIBCPDB.world 
#---현재 DB 환경(hipdb / hipdb01) 
HIBCDB.world 
#---하이프라자 CRM db (hicrm / solomon) 
hicmdb.world 
#---하이프라자 CRM 개발 db (hicrm / hicrm00) 
hicmdev.world 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.08.06(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:10 ~ 19:00 

- PDA 분석
- PDA 조치 사항 
1. DioPen 프로그램 삭제됨(MS Active Sync다시 설치) 
2. 카드 Driver없고 ON 버튼 없음(일단 다시 세팅함) 
c.f) iPhone이 없을 경우(HiMobileD를 설치 후 Temp폴더에) 
C:\VC++_Hiplaza\PDA CAP Files\HiMobileD\1.70\iPhone 단독 폴더에 
HiMobileD.CAB를 Temp폴더에 복사 후 설치 

전화접속 포트를 이미 사용하고 있습니다.  ====> 다른  PDA에서 사용하고 있을 때 
i-kit를 바꾸면 Unrecognized Card가 생성 OK함 
파일로 여기에 class로 여기에 존재해야 selectAll2(String where, String sortkey,String street)이 존재함. 
===============================================================================================================

- class 못 찾음 
cannot resolve symbol 에러 
C:\HI_CRM\hicrm\cust\tradarea\dbmgr\CuTaregisterManager.java:44: cannot resolve symbol 
C:\HI_CRM\jsp_class\WEB-INF\classes로 잡혀 있음. 그러므로 clas 파일은 여기에 넣어야 함. 
C:\HI_CRM\jsp_class\WEB-INF\classes\hicrm\cust\tradarea\dbmgr\CuTaregisterWrap.class 
파일로 여기에 class로 여기에 존재해야 selectAll2(String where, String sortkey,String street)이 존재함. 
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
and aa.zip_code = dd.zip_code(+)                     and cc.street like '분당%'                   order by cc.street                 )          )  
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

■■■■■■■■■■■■■■■■■■ 2003.08.07(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 21:30 

- CRM  Excel 보내기
C:\HI_CRM\jsp_class\hicrm\cust\tradarea\CuTaPopupSuExcelFrm.jsp 에서 
11월 인원 data 이후 안 나올 때 <td>&nbsp;<%=cutaregister.amt11%></td> &nbsp;를 붙여 해결 
(원본 cutaregister.amt11 데이타 타입은 문제 없음) 

- MSCOMCT2.OCX를 찾을 수 없습니다. 
-------------------------------------------------------------------------------------------------------- 

- Hiplaza 연결 방법
1. B2C - Tera Term Pro --> 네트웍(Dynamo.ear) 이용  --> 해당 서버에서 compile(jcc) 
Tera Term Pro(156.147.149.9) administrator / admin 
- framework(중심 폴더), - entity, - db 
네트웍(Dynamo.ear): \\156.147.149.9\d$ user / user 
laflog로그 -- 20010808debug.log(0310808 일때) 

2. CRM - JP1 --> 파일전송 이용 --> local 서버에서 compile 
jp1 / abcjp1 
-------------------------------------------------------------------------------------------------------- 

- 주간업무 03_08 2째주 
★ 금주 업무 실적 
1. B2C - 이벤트(백화점 임직원 전용매장) 작업  
2. CRM - 상권 등록 데이타 Excel 보내기 작업 
3. PDA 장비 세팅 요청 - 재설치 

★ 차주 업무 계획 
===============================================================================================================

- PDA 분석
[com Class 에러]   
servlet.jar를 찾지 못 해서 나는 에러( import com.ibm.servlet.connmgr.*;) 
: Classpath에 C:\jakarta-tomcat-3.2.1\lib\servlet.jar를 최우선으로 보이게 함 
C:\jakarta-tomcat-3.2.1관련 설정이 3개 있어서 혼돈이 일어나 못 찾음 
===============================================================================================================
컬럼의 데이터 타입을 long으루 주었습니다. 
제가 알기로는 2GB까지 입력가능하다고 알고 있는데... 
-------------------------------------------------------------------------------------------------------- 
  
PL/SQL을 사용하면 쉽게 들어갑니다. 
DECLARE 변수 테이블명.칼럼명%type;  
BEGIN 변수:= 삽입할 글; 
  INSERT INTO 테이블명(칼럼명들) VALUES 
  (각 칼럼에 따른 내용, 변수, 각 컬럼 내용); 
END; 

이 문장을 SQL에 넣어서 EXECUTE시키면 됩니다. 
예) 
create table board( 
id number(10), 
contents long); 

DECLARE context board.contents%type; 
BEGIN context:='많은 양의 글'; 
  INSERT INTO board(id,contents) VALUES  
  (1,context); 
END; 
---------------------------------------------------------------------------------- 

바인드 변수로 처리하셔야 합니다. 
바인드 또는 long이라고 검색하세요. 
툴,스크립트라면 각각에 지원되는  
메소드,함수를 이용하셔야 하고요. 
---------------------------------------------------------------------------------- 

먼저 long 형 컬럼을 제외한 데 터를 인서트 한후... 
long 형 데 터는  당 row에 update . 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.08.08(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:10 ~ 21:30 

- B2C 수정
- 백화점 임직원 전용매장 
/www/event/evtStaffMall.jsp에서 
-------------------------------------------------------------------------------------------------------- 

EvtStaffMallEntity count = (EvtStaffMallEntity)request.getAttribute("count"); 

if((count.count>0)){   // DB에서 넘어온 count >0 이면 ( => login 성공)   
opener.location.href = "/shop/main/prdbrandstore?etcStoreSeq=S300";   // 아울렛 매장으로 이동 
self.close();  
} 
-------------------------------------------------------------------------------------------------------- 
http://www.lotte.com/lotte/cobuy/H2CbmCoLottePackMainPage.jsp?dispNo=040016019003&orgDispNo=026004&curDepth=4  
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.08.09(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 20:00 
  
- B2C 수정
- 백화점 임직원 전용매장 
/www/event/evtStaffMall.jsp에서 
--------------------------------------------------------------------------------------------------------
 <% 
/*--- 백화점 임직원 전용매장 코드 받기  ----*/   
String F_login = ""; 
String actType = request.getParameter("actType"); 
String S_No = (request.getParameter("S_No") != null && ! request.getParameter("S_No").equals("")) ? request.getParameter("S_No") : "";   
//out.println("[TAMA] evtStaffMall.jsp ::actType :: "+actType); 

if (actType != null) {   // DB에서 넘어온 DATA 일 때 

EvtStaffMallEntity S_no_Entity = (EvtStaffMallEntity)request.getAttribute("S_no_Entity");   
//out.println("<br>[TAMA] evtStaffMall.jsp ::S_no_Entity.get_s_num() ::"+ S_no_Entity.get_s_num()); 
  
 if(S_no_Entity != null ) {   // DB에서 넘어온 SERIAL_NO가 존재하면( => login 성공)  ==================== 
if(S_no_Entity.get_s_num() != null ) {   
%> 
<script language="JavaScript">  
<!--  
 opener.location.href = "/shop/main/prdoutletmodel?etcStoreSeq=S300";   // 아울렛 매장으로 이동 
self.close(); 
// -->  
</script> 
<%  
} 
} else { // DB에서 넘어온 SERIAL_NO가 존재하지 않으면 ==================== 
F_login = "1"; 
   } 
} 
%> 
-------------------------------------------------------------------------------------------------------- 

- URL 비교 
/shop/main/evtStaffMall?actType=1&S_No=sadfsdaf -- MasterControler.java를 통해서 경로 결정 
/shop/www/event/evtStaffMall.jsp -- 절대 결정 
-------------------------------------------------------------------------------------------------------- 

-- Temp 폴더(삭제하면 cache삭제 됨) 
\\156.147.149.9\d$\WebSphere\AppServer\temp\lgehidwse2s\B2C_AppServer\Dynamo\dyn.war\www 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.08.11(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:30 

- B2C 수정
- Hiplaza 9000원 Shop 
http://156.147.149.9/shop/www/joint/usr9000Shop.jsp 
==================================================================================================================

- 롯데 9000원 Shop 
http://www.lotte.com/lotte/cobuy/H2CbmCoLottePackMainPage.jsp?dispNo=040016019003&orgDispNo=026004&curDepth=4 
==================================================================================================================

- Enter로 로그인]
- Enter와 image 클릭 모두 로그인 가능  
==================================================================================================================

<script language="JavaScript">  
<!--  
function checkLogin(form){ 

//alert("[TAMA] 임직원 Mall :: checkLogin :: 테스트_1 "); 
var sform = document.form1;  
  
if(form.S_No.value.length ==0){ 
alert("인증번호를 입력하세요!"); 
sform.S_No.focus(); 
return false;   
} 
return true; 
}  

function goEventurl(Gourl){ 

var sform = document.form1; 
 //alert("[TAMA] 임직원 Mall :: goEventurl :: \n "+sform.S_No.value); 

if(sform.S_No.value==""){ 
alert("인증번호를 입력하세요!"); 
sform.S_No.focus(); 
}else 
{    
location.href = "/shop/main/evtStaffMall?actType=1&S_No="+ sform.S_No.value; // login을 위해 DB에 연결 
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
 
- PDA 응급조치
- 신제주점(☎ 064)748-6600) 
원인: 연결 안됨 
조치: 
1. 로그 점검(wirelog.txt) 
로그에서 [21532] ** java.lang.NullPointerException ** 에러 발생 
2. Wire 서버 담당장 전화 연결(서버 재부팅)  ]
"D:\WebSphere\AppServer\installedApps\Dynamo.ear\dyn.war\www\joint\H2CbmCoLottePackCartMgr.jsp  
==================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.08.12(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 6:40 ~ 21:30 
  
- Virus 피해]
- Worm.Win32.Blaster.6176 
이 웜은 135번 포트의 공격으로 보안에 취약한 PC를 공격하기 때문에 135번 포트를 방화벽에서 막을려고 하면 안된다. 1 
35번 포트는 일반적으로 많이 사용하는 포트이기 때문이며 이 웜이 tftp를 통해서 다운로드 받기 때문에 UDP 69번과 웜이 
숨겨둔 쉘 코드 접속을 막기 위해 4444번 포트를 방화벽에서 막는것이 우선적으로 효과적이다. 

<대응 방법>  
o 보안 패치된 버전을 다운로드 받아 설치 - http://www.microsoft.com/korea/technet/security/bulletin/MS03-026.asp  
o RPC 인터페이스의 버퍼 오버런으로 인한 코드 실행 문제- http://www.certcc.or.kr/eWAS_NOTICE/KA2003-054.htm  
==================================================================================================================

- PDA 수정
- 기존 하위 상품 수정 
==================================================================================================================

에어컨(LP156CS) 
 - 본체(LP-156CS) 
 - 실외기(LP-156CSA) 
 - 덮개(LP-156CSAA)    ---> 2개를 하나로 통합 ex) 덮개(LP-156CSAA) 2개(개수 Column추가 예정) 
 - 덮개(LP-156CSAB) 
  
SElect * from set_model where p_model_code = 'FA-SJ2300N' --// 상품 조회(p_model_code, m_model_code) 

 prod_name 
 prod_price 
 prod_qty 
==================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.08.13(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 6:40 ~ 21:30 
  
- B2C 수정
- 9000원 Shop 작업 
1. 상품 진열 DB 이용  
2. 쿠키ID로 장바구니에 넣기(배열에 저장) - usr9000Shop_Cart.jsp에서 작업 
 배열을 쿠키에 저장하고 보관함  ----> 쿠키는 배열 사용 못 함 
usr9000Shop_Cart.jsp에서 
- GetCookie하여 Cookie ID 받아 넘어온 4개 개체를 strNewAlert 배열에 넣기 
- SetCookie하여 다시 strNewAlert 배열 저장 
==================================================================================================================

- 롯데 9000원 Shop 분석 
1. 상품 진열 DB 이용  
2. 쿠키ID로 장바구니에 넣기(DB 이용하여 저장) 
==================================================================================================================

- 지점 전화
- C:\Hiplaza/bin/sysfile_chk.exe파일 등록 정보에서 
바뀐 날짜 확인(03.08.08) 
==================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.08.14(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 6:50 ~ 21:30 
  
- B2C 수정
- JSP Type 받아 오기 
EvtStaffMallEntity[]  Array_Entity = (EvtStaffMallEntity[])request.getAttribute("Array_Entity"); // 배열 Entity 받아오기 
EvtStaffMallEntity S_no_Entity = (EvtStaffMallEntity)request.getAttribute("S_no_Entity"); // Entity 받아오기 
EvtStaffMallEntity S_no_Entity = (EvtStaffMallEntity)request.getAttribute("S_no_Entity"); // Entity 받아오기 
Integer count_Entity = (Integer)request.getAttribute("count_Entity"); // Integer 받아오기  ===== 
String string_Entity = (String)request.getAttribute("string_Entity"); // String 받아오기 
Vector dispBranchModelList = (Vector)request.getAttribute("dispBranchModel"); // Vector 받아오기  
===============================================================================================================

-형변환 
int count_Entity2 = Integer.parseInt(reqeust.getParameter("xxx"));  
===============================================================================================================

- PDA 응급조치 요령
원인: 연결 안됨 
조치: 
1. 로그 점검(wirelog.txt) 
로그에서 [21532] ** java.lang.NullPointerException ** 에러 발생 
- 로그에서 에러가 발생하면 Wire서버에서 문제가 있는 걸로 판단 
2. Wire 서버 담당자 전화 연결(서버 재부팅 요청) Wire 서버 담당자(☎ 2630 - 3432) 

만약 로그가 정상적으로 운영이 되고 있다면 Wire서버는 정상임 
그러면 tomcat 웹서버를 확인해야 함 
C:\jakarta-tomcat-3.2.1\bin에서 startup.bat 파일 클릭하여 서버를 실행 
C:\Wire_V52_SSL\run.bat파일 클릭하여 서버를 실행 
http://156.147.149.27:8080/hiplaza/store/Index.jsp에 접속 
로그인을 함(http://156.147.149.27:8080/hiplaza/store/Login.jsp) 
다시 처음으로 감 

매출조회 클릭(http://156.147.149.27:8080/hiplaza/store/Sale_search_input.jsp) 
매출조회 결과(http://156.147.149.27:8080/hiplaza/store/Sale_search_head.jsp)가 정상적으로 나오면 
tomcat 웹서버가 정상적이라 판단 
tomcat 웹서버와 Wire 서버가 모두 정상적으로 운영 있으면 PDA 서버 세팅 문제 이거나 기기에 
문제가 있다고 판단 
지점일 경우 
- PDA 서버 세팅을 (주)인트정보(☎ 3281-1777)에 요청 하라고 이야기함 
백화점일 경우 
- PDA 기기의 이상 유무를 확인하고 그래도 안되면 택배로 보내라고 이야기함 
===============================================================================================================

- PDA 로그 분석 방법
- Se85 실서버 환경(Tera Term Pro로 접속) 
server: hiplaza.co.kr(165.243.115.18) 
아이디/패스   tas007 / header02 

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

wirelog.txt 파일 검색(에러 없으면 정상) 
===============================================================================================================

- PDA 재세팅  
원인: PDA가 방전이 되었거나 프로그램 비정상 작동으로 인해 다시 세팅해야 할 경우 
조치: 프린트물을 참조하여 재세팅 함 
===============================================================================================================

- [주간업무 03_08 2째주] 
★ 금주 업무 실적 
1. B2C - 이벤트(백화점 임직원 전용매장) 마무리 작업  
2. B2C - Hiplaza 9000원 Shop 분석 작업 
3. PDA 응급조치 - 서버연결 불가능(광주 광산점)

★ 차주 업무 계획 
- 휴가 
===============================================================================================================

보통 sql문으로 insert를 하지만, 오라클 long형 필드에는 insert sql문을 이용하는 경우에는 에러가 발생합니 
다...  (저같은 경우는 그랬습니다...  win2000, oracle 8i 8.1.6) 
해서 ado 레코드셋 객체의 Addnew...  Update....  를 이용해서 처리했습니다... 
혹시 가지고 계신 asp 서적 중 Recordset 객체의 Addnew 메쏘드 부분을 참고하시면 됩니다... 
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

Dim listnum------------------------------------------------> 글번호 처리...... 
if isnull(adoRs(0)) then 
 listnum=1 
else 
 listnum = adors(0)+1 
end if 

with adoRs 
  .AddNew  -----------------------------------> 오류나는 줄... 
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
' 여기서 oConn 은 DB 에 연결된 Connection Object 를 칭함 
o Cmd.Prepared = False  
' True 로 하게 되는 경우 DB 에 추가적인 부하를 일으킴 
' 같은 쿼리문으로 반복적인 작업을 하는 경우에는 True 가 맞으나 
' 일반적으로 한번 작업하고 끝나는 경우에는 False 로 지정함. 
o Cmd.CommandType = adCmdText 
o Cmd.CommandText = "insert into a values (30, ?)" 
o Cmd.Parameters.Append oCmd.CreateParameter("[Filed명]", [Field Type], [In/Out 지 
정], [Data Size], "[값") 
' 여기서 [Field명] 은 지정하나 안하나 실제로는 아무런 관계가 없으나, 일반적으로 코 
딩의 편의를 위해 사용함. 
' 실제로 Parameter 는 쿼리문에서의 ? 로 설정한 Field 순서에 따라 Append 하여야함. 
' 결국은 순서대로임...[Field명] 이랑은 아무런 관계없음. 
' 하지만 안 쓰면 필드 많은 경우에 어느 필드가 어느 필드인지 헤깔림...^^; 
' [Field Type] 은 DB Type 과 Match 가 되는 VB Type 으로 설정하여야 함. MSDN 에 잘  
나와있음. 
' [Data Size] 는 일반적으로 정확한 값을 지정하여야함. MS SQL Server 의 경우엔 크 
게 관계없으나 오라클은 정확한 값을 넣는게 좋음. 
o Cmd.Execute 

와 같은 형태로 사용하시면 됩니다... 
Command 객체에서의 Parameter 사용법은 MSDN 이나 이곳 게시판을 참고하시면 될듯 하네 
요... 

결국 쿼리문에서 ? 를 사용하여서 Parameter를 쓸수 있게 하는 것이 Key Point 입니 
다... 

다만, adCmdText 같이 상수형을 사용하기 위해서는 Meta 태그로 ADO 의 Type Library  
를 import 하는게 좋습니다...각 페이지에서 import 해도 되지만 효율을 위해서  
global.asa 에서 import 하는 방법을 일반적으로 사용합니다...아래와 같은 형태로 사용 
하면 됩니다... 

<!-- METADATA TYPE="typelib" FILE="c:\program files\common  
files\system\ado\msado15.dll"--> 
===============================================================================================================

/shop/main/index_htm?name=e-shop
shop/main/index2.jsp?name=e-shop --- iframe 사용 
ADODB.Recordset (0x800A0CB3) 
개체 또는 공급자가 요청한 작업을 수행할 수 없습니다. 
/cal_process.asp, line 94 

http://www.taeyo.net/lecture/10_ADO/RecordSet_Update.htm 
===============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■