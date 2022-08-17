--------------------------------------------------------
--  파일이 생성됨 - 수요일-2월-09-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_CATEGORY_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_CATEGORY_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 19 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_COMMENTS_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_COMMENTS_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_POST_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_POST_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 22 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_USERS_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_USERS_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 15 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BLOG
--------------------------------------------------------

  CREATE TABLE "JBLOG"."BLOG" 
   (	"ID" VARCHAR2(50 BYTE), 
	"BLOGTITLE" VARCHAR2(200 BYTE), 
	"LOGOFILE" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "JBLOG"."CATEGORY" 
   (	"CATENO" NUMBER, 
	"ID" VARCHAR2(50 BYTE), 
	"CATENAME" VARCHAR2(200 BYTE), 
	"DESCRIPTION" VARCHAR2(500 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "JBLOG"."COMMENTS" 
   (	"CMTNO" NUMBER, 
	"POSTNO" NUMBER, 
	"CMTCONTENT" VARCHAR2(300 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table POST
--------------------------------------------------------

  CREATE TABLE "JBLOG"."POST" 
   (	"POSTNO" NUMBER, 
	"CATENO" NUMBER, 
	"POSTTITLE" VARCHAR2(300 BYTE), 
	"POSTCONTENT" VARCHAR2(4000 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "JBLOG"."USERS" 
   (	"USERNO" NUMBER, 
	"ID" VARCHAR2(50 BYTE), 
	"USERNAME" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(50 BYTE), 
	"JOINDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into JBLOG.BLOG
SET DEFINE OFF;
Insert into JBLOG.BLOG (ID,BLOGTITLE,LOGOFILE) values ('hijava','정우성의 배우이야기 블로그..','1613660630864f25ba53b-bb35-4db7-b483-05a82053fbb1.jpg');
Insert into JBLOG.BLOG (ID,BLOGTITLE,LOGOFILE) values ('hi','이효리의 블로그입니다.!!!!!!!','1595483571851ef226bb0-240d-41fe-9211-b1e83edbbfa4.jpg');
Insert into JBLOG.BLOG (ID,BLOGTITLE,LOGOFILE) values ('aaa','황일영의 블로그입니다.','default');
Insert into JBLOG.BLOG (ID,BLOGTITLE,LOGOFILE) values ('abc','양세찬의 블로그입니다.','default');
REM INSERTING into JBLOG.CATEGORY
SET DEFINE OFF;
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (1,'hijava','미분류','기본으로 만들어지는 카테고리 입니다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (2,'hijava','자바프로그래밍','자바기본문법과 객체지향',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (3,'hijava','오라클','오라클 설치와 sql문',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (4,'hijava','서블릿_jsp','인터넷프로그래밍',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (5,'hijava','스프링MVC','스프링 설정고 사용법',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (6,'hi','미분류','기본으로 만들어지는 카테고리 입니다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (7,'hi','자바프로그래밍','자바기본문법과 객체지향',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (8,'hi','오라클','오라클설치 및 sql문',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (14,'abc','미분류','기본으로 만들어지는 카테고리 입니다.',to_date('21/02/17','RR/MM/DD'));
REM INSERTING into JBLOG.COMMENTS
SET DEFINE OFF;
REM INSERTING into JBLOG.POST
SET DEFINE OFF;
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (1,5,'01.spring_시작하기','국회는 국민의 보통·평등·직접·비밀선거에 의하여 선출된 국회의원으로 구성한다. 지방의회의 조직·권한·의원선거와 지방자치단체의 장의 선임방법 기타 지방자치단체의 조직과 운영에 관한 사항은 법률로 정한다.

국정의 중요한 사항에 관한 대통령의 자문에 응하기 위하여 국가원로로 구성되는 국가원로자문회의를 둘 수 있다. 위원은 정당에 가입하거나 정치에 관여할 수 없다.

모든 국민은 능력에 따라 균등하게 교육을 받을 권리를 가진다. 대통령은 내란 또는 외환의 죄를 범한 경우를 제외하고는 재직중 형사상의 소추를 받지 아니한다.

모든 국민은 법률이 정하는 바에 의하여 선거권을 가진다. 국가는 법률이 정하는 바에 의하여 재외국민을 보호할 의무를 진다. 모든 국민은 학문과 예술의 자유를 가진다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (2,5,'02.spring_주요어노테이션','중앙선거관리위원회는 법령의 범위안에서 선거관리·국민투표관리 또는 정당사무에 관한 규칙을 제정할 수 있으며, 법률에 저촉되지 아니하는 범위안에서 내부규율에 관한 규칙을 제정할 수 있다.

법률안에 이의가 있을 때에는 대통령은 제1항의 기간내에 이의서를 붙여 국회로 환부하고, 그 재의를 요구할 수 있다. 국회의 폐회중에도 또한 같다. 재산권의 행사는 공공복리에 적합하도록 하여야 한다.

대통령이 궐위된 때 또는 대통령 당선자가 사망하거나 판결 기타의 사유로 그 자격을 상실한 때에는 60일 이내에 후임자를 선거한다. 국회의원은 법률이 정하는 직을 겸할 수 없다.

대통령이 궐위되거나 사고로 인하여 직무를 수행할 수 없을 때에는 국무총리, 법률이 정한 국무위원의 순서로 그 권한을 대행한다. 대법원에 대법관을 둔다. 다만, 법률이 정하는 바에 의하여 대법관이 아닌 법관을 둘 수 있다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (3,5,'03.spring_mybatis','감사위원은 원장의 제청으로 대통령이 임명하고, 그 임기는 4년으로 하며, 1차에 한하여 중임할 수 있다. 국가는 농업 및 어업을 보호·육성하기 위하여 농·어촌종합개발과 그 지원등 필요한 계획을 수립·시행하여야 한다.

이 헌법에 의한 최초의 대통령의 임기는 이 헌법시행일로부터 개시한다. 국회가 재적의원 과반수의 찬성으로 계엄의 해제를 요구한 때에는 대통령은 이를 해제하여야 한다.

모든 국민은 인간다운 생활을 할 권리를 가진다. 이 헌법시행 당시에 이 헌법에 의하여 새로 설치될 기관의 권한에 속하는 직무를 행하고 있는 기관은 이 헌법에 의하여 새로운 기관이 설치될 때까지 존속하며 그 직무를 행한다.

언론·출판에 대한 허가나 검열과 집회·결사에 대한 허가는 인정되지 아니한다. 예비비는 총액으로 국회의 의결을 얻어야 한다. 예비비의 지출은 차기국회의 승인을 얻어야 한다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (4,5,'04.spring_어플리케이션_아키텍쳐','대한민국은 통일을 지향하며, 자유민주적 기본질서에 입각한 평화적 통일 정책을 수립하고 이를 추진한다. 모든 국민은 종교의 자유를 가진다. 선거에 있어서 최고득표자가 2인 이상인 때에는 국회의 재적의원 과반수가 출석한 공개회의에서 다수표를 얻은 자를 당선자로 한다.

국교는 인정되지 아니하며, 종교와 정치는 분리된다. 재판의 심리와 판결은 공개한다. 다만, 심리는 국가의 안전보장 또는 안녕질서를 방해하거나 선량한 풍속을 해할 염려가 있을 때에는 법원의 결정으로 공개하지 아니할 수 있다.

농업생산성의 제고와 농지의 합리적인 이용을 위하거나 불가피한 사정으로 발생하는 농지의 임대차와 위탁경영은 법률이 정하는 바에 의하여 인정된다.

누구든지 체포 또는 구속의 이유와 변호인의 조력을 받을 권리가 있음을 고지받지 아니하고는 체포 또는 구속을 당하지 아니한다. 체포 또는 구속을 당한 자의 가족등 법률이 정하는 자에게는 그 이유와 일시·장소가 지체없이 통지되어야 한다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (5,5,'05.javaScript','국토와 자원은 국가의 보호를 받으며, 국가는 그 균형있는 개발과 이용을 위하여 필요한 계획을 수립한다. 대법원과 각급법원의 조직은 법률로 정한다.

국가는 농지에 관하여 경자유전의 원칙이 달성될 수 있도록 노력하여야 하며, 농지의 소작제도는 금지된다. 사법권은 법관으로 구성된 법원에 속한다. 국회는 법률에 저촉되지 아니하는 범위안에서 의사와 내부규율에 관한 규칙을 제정할 수 있다.

외국인은 국제법과 조약이 정하는 바에 의하여 그 지위가 보장된다. 제1항의 해임건의는 국회재적의원 3분의 1 이상의 발의에 의하여 국회재적의원 과반수의 찬성이 있어야 한다.

모든 국민은 법률이 정하는 바에 의하여 공무담임권을 가진다. 대통령은 법률에서 구체적으로 범위를 정하여 위임받은 사항과 법률을 집행하기 위하여 필요한 사항에 관하여 대통령령을 발할 수 있다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (6,5,'06.jquery_ajax','헌법재판소 재판관은 정당에 가입하거나 정치에 관여할 수 없다. 국회는 국무총리 또는 국무위원의 해임을 대통령에게 건의할 수 있다. 대통령·국무총리·국무위원·행정각부의 장·헌법재판소 재판관·법관·중앙선거관리위원회 위원·감사원장·감사위원 기타 법률이 정한 공무원이 그 직무집행에 있어서 헌법이나 법률을 위배한 때에는 국회는 탄핵의 소추를 의결할 수 있다.

위원은 탄핵 또는 금고 이상의 형의 선고에 의하지 아니하고는 파면되지 아니한다. 모든 국민은 보건에 관하여 국가의 보호를 받는다. 국가유공자·상이군경 및 전몰군경의 유가족은 법률이 정하는 바에 의하여 우선적으로 근로의 기회를 부여받는다.

국가안전보장회의는 대통령이 주재한다. 국가원로자문회의의 조직·직무범위 기타 필요한 사항은 법률로 정한다. 훈장등의 영전은 이를 받은 자에게만 효력이 있고, 어떠한 특권도 이에 따르지 아니한다.

모든 국민의 재산권은 보장된다. 그 내용과 한계는 법률로 정한다. 정당의 목적이나 활동이 민주적 기본질서에 위배될 때에는 정부는 헌법재판소에 그 해산을 제소할 수 있고, 정당은 헌법재판소의 심판에 의하여 해산된다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (7,5,'07.첨부파일_MultipartResolver','정당은 법률이 정하는 바에 의하여 국가의 보호를 받으며, 국가는 법률이 정하는 바에 의하여 정당운영에 필요한 자금을 보조할 수 있다. 모든 국민은 인간으로서의 존엄과 가치를 가지며, 행복을 추구할 권리를 가진다. 국가는 개인이 가지는 불가침의 기본적 인권을 확인하고 이를 보장할 의무를 진다.

공무원인 근로자는 법률이 정하는 자에 한하여 단결권·단체교섭권 및 단체행동권을 가진다. 국가안전보장회의의 조직·직무범위 기타 필요한 사항은 법률로 정한다.

법률이 헌법에 위반되는 여부가 재판의 전제가 된 경우에는 법원은 헌법재판소에 제청하여 그 심판에 의하여 재판한다. 감사원의 조직·직무범위·감사위원의 자격·감사대상공무원의 범위 기타 필요한 사항은 법률로 정한다.

대통령·국무총리·국무위원·행정각부의 장·헌법재판소 재판관·법관·중앙선거관리위원회 위원·감사원장·감사위원 기타 법률이 정한 공무원이 그 직무집행에 있어서 헌법이나 법률을 위배한 때에는 국회는 탄핵의 소추를 의결할 수 있다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (8,5,'08.페이징','대통령은 법률이 정하는 바에 의하여 사면·감형 또는 복권을 명할 수 있다. 대통령의 임기는 5년으로 하며, 중임할 수 없다. 법관은 탄핵 또는 금고 이상의 형의 선고에 의하지 아니하고는 파면되지 아니하며, 징계처분에 의하지 아니하고는 정직·감봉 기타 불리한 처분을 받지 아니한다.

형사피의자 또는 형사피고인으로서 구금되었던 자가 법률이 정하는 불기소처분을 받거나 무죄판결을 받은 때에는 법률이 정하는 바에 의하여 국가에 정당한 보상을 청구할 수 있다.

국가원로자문회의의 의장은 직전대통령이 된다. 다만, 직전대통령이 없을 때에는 대통령이 지명한다. 대통령의 국법상 행위는 문서로써 하며, 이 문서에는 국무총리와 관계 국무위원이 부서한다. 군사에 관한 것도 또한 같다.

의무교육은 무상으로 한다. 국군은 국가의 안전보장과 국토방위의 신성한 의무를 수행함을 사명으로 하며, 그 정치적 중립성은 준수된다. 대법관의 임기는 6년으로 하며, 법률이 정하는 바에 의하여 연임할 수 있다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (9,4,'01.jsp_servlet_웹프로그래밍','정기회의 회기는 100일을, 임시회의 회기는 30일을 초과할 수 없다. 비상계엄하의 군사재판은 군인·군무원의 범죄나 군사에 관한 간첩죄의 경우와 초병·초소·유독음식물공급·포로에 관한 죄중 법률이 정한 경우에 한하여 단심으로 할 수 있다. 다만, 사형을 선고한 경우에는 그러하지 아니하다.

국회는 의장 1인과 부의장 2인을 선출한다. 국가는 주택개발정책등을 통하여 모든 국민이 쾌적한 주거생활을 할 수 있도록 노력하여야 한다. 위원은 탄핵 또는 금고 이상의 형의 선고에 의하지 아니하고는 파면되지 아니한다.

법률이 정하는 주요방위산업체에 종사하는 근로자의 단체행동권은 법률이 정하는 바에 의하여 이를 제한하거나 인정하지 아니할 수 있다. 근로조건의 기준은 인간의 존엄성을 보장하도록 법률로 정한다.

행정권은 대통령을 수반으로 하는 정부에 속한다. 모든 국민은 헌법과 법률이 정한 법관에 의하여 법률에 의한 재판을 받을 권리를 가진다. 대한민국의 주권은 국민에게 있고, 모든 권력은 국민으로부터 나온다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (10,4,'02.jsp_servlet_phonebook_model1','대통령은 헌법과 법률이 정하는 바에 의하여 국군을 통수한다. 혼인과 가족생활은 개인의 존엄과 양성의 평등을 기초로 성립되고 유지되어야 하며, 국가는 이를 보장한다.

법률이 정하는 주요방위산업체에 종사하는 근로자의 단체행동권은 법률이 정하는 바에 의하여 이를 제한하거나 인정하지 아니할 수 있다. 탄핵소추의 의결을 받은 자는 탄핵심판이 있을 때까지 그 권한행사가 정지된다.

피고인의 자백이 고문·폭행·협박·구속의 부당한 장기화 또는 기망 기타의 방법에 의하여 자의로 진술된 것이 아니라고 인정될 때 또는 정식재판에 있어서 피고인의 자백이 그에게 불리한 유일한 증거일 때에는 이를 유죄의 증거로 삼거나 이를 이유로 처벌할 수 없다.

형사피해자는 법률이 정하는 바에 의하여 당해 사건의 재판절차에서 진술할 수 있다. 국회의원의 수는 법률로 정하되, 200인 이상으로 한다. 대통령의 선거에 관한 사항은 법률로 정한다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (11,4,'03.jsp_servlet_phonebook_model2','중앙선거관리위원회는 법령의 범위안에서 선거관리·국민투표관리 또는 정당사무에 관한 규칙을 제정할 수 있으며, 법률에 저촉되지 아니하는 범위안에서 내부규율에 관한 규칙을 제정할 수 있다.

대통령으로 선거될 수 있는 자는 국회의원의 피선거권이 있고 선거일 현재 40세에 달하여야 한다. 국회의원은 법률이 정하는 직을 겸할 수 없다. 대통령후보자가 1인일 때에는 그 득표수가 선거권자 총수의 3분의 1 이상이 아니면 대통령으로 당선될 수 없다.

국회는 상호원조 또는 안전보장에 관한 조약, 중요한 국제조직에 관한 조약, 우호통상항해조약, 주권의 제약에 관한 조약, 강화조약, 국가나 국민에게 중대한 재정적 부담을 지우는 조약 또는 입법사항에 관한 조약의 체결·비준에 대한 동의권을 가진다.

계엄을 선포한 때에는 대통령은 지체없이 국회에 통고하여야 한다. 군인은 현역을 면한 후가 아니면 국무위원으로 임명될 수 없다. 법관은 탄핵 또는 금고 이상의 형의 선고에 의하지 아니하고는 파면되지 아니하며, 징계처분에 의하지 아니하고는 정직·감봉 기타 불리한 처분을 받지 아니한다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (12,4,'04.jsp_servlet_mysite_model2','재의의 요구가 있을 때에는 국회는 재의에 붙이고, 재적의원과반수의 출석과 출석의원 3분의 2 이상의 찬성으로 전과 같은 의결을 하면 그 법률안은 법률로서 확정된다.

외국인은 국제법과 조약이 정하는 바에 의하여 그 지위가 보장된다. 대통령은 내란 또는 외환의 죄를 범한 경우를 제외하고는 재직중 형사상의 소추를 받지 아니한다.

형사피고인은 유죄의 판결이 확정될 때까지는 무죄로 추정된다. 사회적 특수계급의 제도는 인정되지 아니하며, 어떠한 형태로도 이를 창설할 수 없다. 대법원장과 대법관이 아닌 법관은 대법관회의의 동의를 얻어 대법원장이 임명한다.

국회는 선전포고, 국군의 외국에의 파견 또는 외국군대의 대한민국 영역안에서의 주류에 대한 동의권을 가진다. 군사법원의 조직·권한 및 재판관의 자격은 법률로 정한다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (13,4,'05.jsp_servlet_EL_JSTL','헌법재판소는 법률에 저촉되지 아니하는 범위안에서 심판에 관한 절차, 내부규율과 사무처리에 관한 규칙을 제정할 수 있다. 이 헌법에 의한 최초의 대통령의 임기는 이 헌법시행일로부터 개시한다.

국회는 선전포고, 국군의 외국에의 파견 또는 외국군대의 대한민국 영역안에서의 주류에 대한 동의권을 가진다. 여자의 근로는 특별한 보호를 받으며, 고용·임금 및 근로조건에 있어서 부당한 차별을 받지 아니한다.

국가는 지역간의 균형있는 발전을 위하여 지역경제를 육성할 의무를 진다. 대한민국은 민주공화국이다. 대법원장의 임기는 6년으로 하며, 중임할 수 없다.

이 헌법은 1988년 2월 25일부터 시행한다. 다만, 이 헌법을 시행하기 위하여 필요한 법률의 제정·개정과 이 헌법에 의한 대통령 및 국회의원의 선거 기타 이 헌법시행에 관한 준비는 이 헌법시행 전에 할 수 있다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (14,3,'01.개요(oracle)_프로그램설치','국회는 헌법 또는 법률에 특별한 규정이 없는 한 재적의원 과반수의 출석과 출석의원 과반수의 찬성으로 의결한다. 가부동수인 때에는 부결된 것으로 본다.

국회에 제출된 법률안 기타의 의안은 회기중에 의결되지 못한 이유로 폐기되지 아니한다. 다만, 국회의원의 임기가 만료된 때에는 그러하지 아니하다. 국군의 조직과 편성은 법률로 정한다.

행정권은 대통령을 수반으로 하는 정부에 속한다. 대통령은 조국의 평화적 통일을 위한 성실한 의무를 진다. 국가유공자·상이군경 및 전몰군경의 유가족은 법률이 정하는 바에 의하여 우선적으로 근로의 기회를 부여받는다.

행정각부의 장은 국무위원 중에서 국무총리의 제청으로 대통령이 임명한다. 대한민국의 국민이 되는 요건은 법률로 정한다. 국채를 모집하거나 예산외에 국가의 부담이 될 계약을 체결하려 할 때에는 정부는 미리 국회의 의결을 얻어야 한다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (15,3,'02.DML_SELECT_01','대통령의 국법상 행위는 문서로써 하며, 이 문서에는 국무총리와 관계 국무위원이 부서한다. 군사에 관한 것도 또한 같다. 국회는 의원의 자격을 심사하며, 의원을 징계할 수 있다.

농업생산성의 제고와 농지의 합리적인 이용을 위하거나 불가피한 사정으로 발생하는 농지의 임대차와 위탁경영은 법률이 정하는 바에 의하여 인정된다.

모든 국민은 법률이 정하는 바에 의하여 국방의 의무를 진다. 이 헌법시행 당시에 이 헌법에 의하여 새로 설치될 기관의 권한에 속하는 직무를 행하고 있는 기관은 이 헌법에 의하여 새로운 기관이 설치될 때까지 존속하며 그 직무를 행한다.

대통령은 헌법과 법률이 정하는 바에 의하여 공무원을 임면한다. 국회는 국정을 감사하거나 특정한 국정사안에 대하여 조사할 수 있으며, 이에 필요한 서류의 제출 또는 증인의 출석과 증언이나 의견의 진술을 요구할 수 있다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (16,3,'03.DML_SELECT_02','위원은 정당에 가입하거나 정치에 관여할 수 없다. 비상계엄하의 군사재판은 군인·군무원의 범죄나 군사에 관한 간첩죄의 경우와 초병·초소·유독음식물공급·포로에 관한 죄중 법률이 정한 경우에 한하여 단심으로 할 수 있다. 다만, 사형을 선고한 경우에는 그러하지 아니하다.

헌법재판소 재판관은 정당에 가입하거나 정치에 관여할 수 없다. 모든 국민은 언론·출판의 자유와 집회·결사의 자유를 가진다. 사법권은 법관으로 구성된 법원에 속한다.

모든 국민은 자기의 행위가 아닌 친족의 행위로 인하여 불이익한 처우를 받지 아니한다. 대통령의 임기가 만료되는 때에는 임기만료 70일 내지 40일전에 후임자를 선거한다.

대통령·국무총리·국무위원·행정각부의 장·헌법재판소 재판관·법관·중앙선거관리위원회 위원·감사원장·감사위원 기타 법률이 정한 공무원이 그 직무집행에 있어서 헌법이나 법률을 위배한 때에는 국회는 탄핵의 소추를 의결할 수 있다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (17,3,'04.DML_SELECT_03','위원은 정당에 가입하거나 정치에 관여할 수 없다. 비상계엄하의 군사재판은 군인·군무원의 범죄나 군사에 관한 간첩죄의 경우와 초병·초소·유독음식물공급·포로에 관한 죄중 법률이 정한 경우에 한하여 단심으로 할 수 있다. 다만, 사형을 선고한 경우에는 그러하지 아니하다.

헌법재판소 재판관은 정당에 가입하거나 정치에 관여할 수 없다. 모든 국민은 언론·출판의 자유와 집회·결사의 자유를 가진다. 사법권은 법관으로 구성된 법원에 속한다.

모든 국민은 자기의 행위가 아닌 친족의 행위로 인하여 불이익한 처우를 받지 아니한다. 대통령의 임기가 만료되는 때에는 임기만료 70일 내지 40일전에 후임자를 선거한다.

대통령·국무총리·국무위원·행정각부의 장·헌법재판소 재판관·법관·중앙선거관리위원회 위원·감사원장·감사위원 기타 법률이 정한 공무원이 그 직무집행에 있어서 헌법이나 법률을 위배한 때에는 국회는 탄핵의 소추를 의결할 수 있다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (18,3,'05.DCL_DDL_DML','제1항의 지시를 받은 당해 행정기관은 이에 응하여야 한다. 국가는 지역간의 균형있는 발전을 위하여 지역경제를 육성할 의무를 진다. 대통령의 임기는 5년으로 하며, 중임할 수 없다.

대한민국은 통일을 지향하며, 자유민주적 기본질서에 입각한 평화적 통일 정책을 수립하고 이를 추진한다. 국회는 의장 1인과 부의장 2인을 선출한다. 국회의원은 국가이익을 우선하여 양심에 따라 직무를 행한다.

모든 국민은 신속한 재판을 받을 권리를 가진다. 형사피고인은 상당한 이유가 없는 한 지체없이 공개재판을 받을 권리를 가진다. 군인은 현역을 면한 후가 아니면 국무총리로 임명될 수 없다.

헌법재판소는 법률에 저촉되지 아니하는 범위안에서 심판에 관한 절차, 내부규율과 사무처리에 관한 규칙을 제정할 수 있다. 모든 국민은 법률이 정하는 바에 의하여 국가기관에 문서로 청원할 권리를 가진다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (19,3,'06.JDBC_DAO','헌법재판소 재판관은 정당에 가입하거나 정치에 관여할 수 없다. 대법원장은 국회의 동의를 얻어 대통령이 임명한다. 대통령으로 선거될 수 있는 자는 국회의원의 피선거권이 있고 선거일 현재 40세에 달하여야 한다.

농업생산성의 제고와 농지의 합리적인 이용을 위하거나 불가피한 사정으로 발생하는 농지의 임대차와 위탁경영은 법률이 정하는 바에 의하여 인정된다.

민주평화통일자문회의의 조직·직무범위 기타 필요한 사항은 법률로 정한다. 국회의원과 정부는 법률안을 제출할 수 있다. 대통령이 궐위되거나 사고로 인하여 직무를 수행할 수 없을 때에는 국무총리, 법률이 정한 국무위원의 순서로 그 권한을 대행한다.

모든 국민은 헌법과 법률이 정한 법관에 의하여 법률에 의한 재판을 받을 권리를 가진다. 누구든지 체포 또는 구속을 당한 때에는 즉시 변호인의 조력을 받을 권리를 가진다. 다만, 형사피고인이 스스로 변호인을 구할 수 없을 때에는 법률이 정하는 바에 의하여 국가가 변호인을 붙인다.',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (20,8,'ㄹㅇㄴㅁㅁㄹㅇ','ㄹㅇㄴㅁㄹㅇㄹ
ㅇㅁㄹㅇ
ㅁㄹ
ㅇㅁ
ㄹㅇ
ㅁㄴㄹ',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (21,1,'a','a',to_date('21/02/17','RR/MM/DD'));
REM INSERTING into JBLOG.USERS
SET DEFINE OFF;
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (1,'hijava','정우성','1234',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (2,'hi','이효리','1234',to_date('20/07/23','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (12,'aaa','황일영','1234',to_date('20/07/26','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (14,'abc','양세찬','1234',to_date('21/02/17','RR/MM/DD'));
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "JBLOG"."COMMENTS" MODIFY ("CMTCONTENT" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."COMMENTS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."COMMENTS" ADD PRIMARY KEY ("CMTNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "JBLOG"."CATEGORY" MODIFY ("CATENAME" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."CATEGORY" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."CATEGORY" ADD PRIMARY KEY ("CATENO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "JBLOG"."POST" MODIFY ("POSTTITLE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."POST" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."POST" ADD PRIMARY KEY ("POSTNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "JBLOG"."USERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."USERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."USERS" MODIFY ("JOINDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."USERS" ADD PRIMARY KEY ("USERNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."USERS" ADD UNIQUE ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BLOG
--------------------------------------------------------

  ALTER TABLE "JBLOG"."BLOG" MODIFY ("BLOGTITLE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."BLOG" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BLOG
--------------------------------------------------------

  ALTER TABLE "JBLOG"."BLOG" ADD CONSTRAINT "C_BLOG_FK" FOREIGN KEY ("ID")
	  REFERENCES "JBLOG"."USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "JBLOG"."CATEGORY" ADD CONSTRAINT "C_CATEGORY_FK" FOREIGN KEY ("ID")
	  REFERENCES "JBLOG"."BLOG" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "JBLOG"."COMMENTS" ADD CONSTRAINT "C_COMMENT_FK" FOREIGN KEY ("POSTNO")
	  REFERENCES "JBLOG"."POST" ("POSTNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "JBLOG"."POST" ADD CONSTRAINT "C_POST_FK" FOREIGN KEY ("CATENO")
	  REFERENCES "JBLOG"."CATEGORY" ("CATENO") ENABLE;
