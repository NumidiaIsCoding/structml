CREATE TABLE reports (  
    REPORT_ID INTEGER NOT NULL,  
    REPORT_NO VARCHAR(250) NOT NULL,  
    VERSION_NO INTEGER NOT NULL,  
    DATRECEIVED DATE,  
    DATINTRECEIVED DATE,  
    MAH_NO VARCHAR(250),  
    REPORT_TYPE_CODE VARCHAR(250),  
    REPORT_TYPE_ENG VARCHAR(250),  
    REPORT_TYPE_FR VARCHAR(250),  
    GENDER_CODE VARCHAR(250),  
    GENDER_ENG VARCHAR(250),  
    GENDER_FR VARCHAR(250),  
    AGE double precision,  
    AGE_Y double precision,  
    AGE_UNIT_ENG VARCHAR(250),  
    AGE_UNIT_FR VARCHAR(250),  
    OUTCOME_CODE VARCHAR(250),  
    OUTCOME_ENG VARCHAR(250),  
    OUTCOME_FR VARCHAR(250),  
    WEIGHT double precision,  
    WEIGHT_UNIT_ENG VARCHAR(250),  
    WEIGHT_UNIT_FR VARCHAR(250),  
    HEIGHT double precision,  
    HEIGHT_UNIT_ENG VARCHAR(250),  
    HEIGHT_UNIT_FR VARCHAR(250),  
    SERIOUSNESS_CODE VARCHAR(250),  
    SERIOUSNESS_ENG VARCHAR(250),  
    SERIOUSNESS_FR VARCHAR(250),  
    DEATH VARCHAR(250),  
    DISABILITY VARCHAR(250),  
    CONGENITAL_ANOMALY VARCHAR(250),  
    LIFE_THREATENING VARCHAR(250),  
    HOSP_REQUIRED VARCHAR(250),  
    OTHER_MEDICALLY_IMP_COND VARCHAR(250),  
    REPORTER_TYPE_ENG VARCHAR(250),  
    REPORTER_TYPE_FR VARCHAR(250),  
    SOURCE_CODE VARCHAR(250),  
    SOURCE_ENG VARCHAR(250),  
    SOURCE_FR VARCHAR(250),  
    E2B_IMP_SAFETYREPORT_ID VARCHAR(250),  
    AUTHORITY_NUMB VARCHAR(250),  
    COMPANY_NUMB VARCHAR(250)
    );

CREATE TABLE Report_Links_LX(  
    REPORT_LINK_ID BIGINT NOT NULL,  
    REPORT_ID INTEGER,  
    RECORD_TYPE_ENG VARCHAR(250),  
    RECORD_TYPE_FR VARCHAR(250),  
    REPORT_LINK_NO VARCHAR(250)
    );


CREATE TABLE Gender_LX( 
    GENDER_LX_ID INTEGER NOT NULL,  
    GENDER_CODE VARCHAR(250),  
    GENDER_EN VARCHAR(250),  
    GENDER_FR VARCHAR(250)
     );

CREATE TABLE Drug_Product (  
    DRUG_PRODUCT_ID INTEGER NOT NULL,  
    DRUGNAME VARCHAR(400)
    );

CREATE TABLE Report_Drug( 
    REPORT_DRUG_ID INTEGER NOT NULL,  
    REPORT_ID INTEGER,  
    DRUG_PRODUCT_ID INTEGER,  
    DRUGNAME VARCHAR(400),  
    DRUGINVOLV_ENG VARCHAR(250),  
    DRUGINVOLV_FR VARCHAR(250),  
    ROUTEADMIN_ENG VARCHAR(250),  
    ROUTEADMIN_FR VARCHAR(250),  
    UNIT_DOSE_QTY double precision,  
    DOSE_UNIT_ENG VARCHAR(250),  
    DOSE_UNIT_FR VARCHAR(250),  
    FREQUENCY INTEGER,  
    FREQ_TIME double precision,  
    FREQUENCY_TIME_ENG VARCHAR(250),  
    FREQUENCY_TIME_FR VARCHAR(250),  
    FREQ_TIME_UNIT_ENG VARCHAR(250),  
    FREQ_TIME_UNIT_FR VARCHAR(250),  
    THERAPY_DURATION double precision,  
    THERAPY_DURATION_UNIT_ENG VARCHAR(250),  
    THERAPY_DURATION_UNIT_FR VARCHAR(250),  
    DOSAGEFORM_ENG VARCHAR(250),  
    DOSAGEFORM_FR VARCHAR(250)
     );

CREATE TABLE Outcome_LX(  
    OUTCOME_LX_ID INTEGER NOT NULL,  
    OUTCOME_CODE VARCHAR(250),  
    OUTCOME_EN VARCHAR(250),  
    OUTCOME_FR VARCHAR(250)
     );

CREATE TABLE Source_LX(  
    SOURCE_LX_ID INTEGER NOT NULL,  
    SOURCE_CODE VARCHAR(250),  
    SOURCE_EN VARCHAR(250),  
    SOURCE_FR VARCHAR(250)
     );



CREATE TABLE Seriousness_LX (  
    SERIOUSNESS_LX_ID INTEGER NOT NULL,  
    SERIOUSNESS_CODE VARCHAR(250),  
    SERIOUSNESS_EN VARCHAR(250),  
    SERIOUSNESS_FR VARCHAR(250)
    );

CREATE TABLE Reactions (  
    REACTION_ID BIGINT NOT NULL,  
    REPORT_ID INTEGER,  
    DURATION double precision,  
    DURATION_UNIT_ENG VARCHAR(250),  
    DURATION_UNIT_FR VARCHAR(250),  
    PT_NAME_ENG VARCHAR(250),  
    PT_NAME_FR VARCHAR(250),  
    SOC_NAME_ENG VARCHAR(250),  
    SOC_NAME_FR VARCHAR(250),  
    MEDDRA_VERSION VARCHAR(250)
    ) ;

CREATE TABLE Report_Drug_Indication (  
    REPORT_DRUG_ID INTEGER,  
    REPORT_ID INTEGER,
    DRUG_PRODUCT_ID INTEGER, 
    DRUGNAME VARCHAR(400),  
    INDICATION_NAME_ENG VARCHAR(250),  
    INDICATION_NAME_FR VARCHAR(250)
    );

CREATE TABLE Report_Type_LX (  
    REPORT_TYPE_LX_ID INTEGER NOT NULL,  
    REPORT_TYPE_CODE VARCHAR(250),  
    REPORT_TYPE_EN VARCHAR(250),  
    REPORT_TYPE_FR VARCHAR(250)
     );



CREATE TABLE Drug_Product_Ingredients (  
    DRUG_PRODUCT_INGREDIENT_ID BIGINT NOT NULL,  
    DRUG_PRODUCT_ID INTEGER,  
    DRUGNAME VARCHAR(400),  
    ACTIVE_INGREDIENT_ID INTEGER,  
    ACTIVE_INGREDIENT_NAME VARCHAR(250)
    );
