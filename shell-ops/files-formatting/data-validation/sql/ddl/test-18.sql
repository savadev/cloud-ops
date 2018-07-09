------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE SET TABLE FL_P_JOB.PRCSS_DEF ,NO FALLBACK ,

     BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO

     (
      PRCSS_ID INTEGER NOT ,
      PRCSS_NM VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,

      PRCSS_DESC VARCHAR(1000) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      PRCSS_TYP VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      MOST_RCNT_SALE_DT DATE FORMAT 'YYYY-MM-DD',
      ERR_CD_BS INTEGER NOT NULL,

      JOB_NM VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC,
      STRT_DEADLN TIME(6) FORMAT 'HH:MI',
      ESTMTD_DURTN INTEGER,
      SQL_FOR_TRGT_RCRD_CNT VARCHAR(2000) CHARACTER SET LATIN NOT CASESPECIFIC,
      SQL_FOR_PRCSSD_RCRD_CNT VARCHAR(2000) CHARACTER SET LATIN NOT CASESPECIFIC,
      CONSTRAINT TYP_CKH CHECK ( PRCSS_TYP  IN ('COMMON_SERVICE','DATA_LOAD','POST_LOAD_VLD','APP_DATA_VLD','INTERMEDIATE_BLD','SUBJECT_AREA_BLD','OUTBOUND_BLD','JOB_GROUP','INTRMDT_DATA_LOAD') ))

UNIQUE PRIMARY INDEX ( PRCSS_ID );



