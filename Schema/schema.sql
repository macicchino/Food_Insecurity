-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "insecurity" (
    "FIPS" int   NOT NULL,
    "State" varchar(40)   NOT NULL,
    "County" varchar(40)   NOT NULL,
    "FOODINSEC_12_14" float   NOT NULL,
    "FOODINSEC_15_17" float   NOT NULL,
    "CH_FOODINSEC_14_17" float   NOT NULL,
    "Model_answer" varchar(10)   NOT NULL,
    CONSTRAINT "pk_insecurity" PRIMARY KEY (
        "FIPS"
     )
);

CREATE TABLE "local" (
    "FIPS" int   NOT NULL,
    "State" varchar(40)   NOT NULL,
    "County" varchar(40)   NOT NULL,
    "PCH_DIRSALES_FARMS_07_12" float   NOT NULL,
    "PCT_LOCLFARM07" float   NOT NULL,
    "PCT_LOCLFARM12" float   NOT NULL,
    "PCT_LOCLSALE07" float   NOT NULL,
    "PCT_LOCLSALE12" float   NOT NULL,
    "PCH_DIRSALES_07_12" float   NOT NULL,
    "PC_DIRSALES07" float   NOT NULL,
    "PC_DIRSALES12" float   NOT NULL,
    "PCH_PC_DIRSALES_07_12" float   NOT NULL,
    "PCH_FMRKT_13_18" float   NOT NULL,
    "FMRKTPTH13" float   NOT NULL,
    "FMRKTPTH18" float   NOT NULL,
    "PCH_FMRKTPTH_13_18" float   NOT NULL,
    "FRESHVEG_FARMS07" float   NOT NULL,
    "FRESHVEG_FARMS12" float   NOT NULL,
    "PCH_FRESHVEG_FARMS_07_12" float   NOT NULL,
    "FRESHVEG_ACRES07" float   NOT NULL,
    "FRESHVEG_ACRES12" float   NOT NULL,
    "PCH_FRESHVEG_ACRES_07_12" float   NOT NULL,
    "FRESHVEG_ACRESPTH07" float   NOT NULL,
    "FRESHVEG_ACRESPTH12" float   NOT NULL,
    "PCH_FRESHVEG_ACRESPTH_07_12" float   NOT NULL,
    "PCH_CSA_07_12" float   NOT NULL,
    "PCH_AGRITRSM_OPS_07_12" float   NOT NULL,
    "PCH_AGRITRSM_RCT_07_12" float   NOT NULL,
    "FARM_TO_SCHOOL13" float   NOT NULL,
    "FARM_TO_SCHOOL15" float   NOT NULL,
    CONSTRAINT "pk_local" PRIMARY KEY (
        "FIPS"
     )
);

ALTER TABLE "local" ADD CONSTRAINT "fk_local_FIPS" FOREIGN KEY("FIPS")
REFERENCES "insecurity" ("FIPS");

