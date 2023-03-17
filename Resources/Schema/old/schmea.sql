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

CREATE TABLE "stores" (
    "FIPS" int   NOT NULL,
    "State" varchar(40)   NOT NULL,
    "County" varchar(40)   NOT NULL,
    "PCH_GROC_11_16" float   NOT NULL,
    "GROCPTH11" float   NOT NULL,
    "GROCPTH16" float   NOT NULL,
    "PCH_GROCPTH_11_16" float   NOT NULL,
    "PCH_SUPERC_11_16" float   NOT NULL,
    "SUPERCPTH11" float   NOT NULL,
    "SUPERCPTH16" float   NOT NULL,
    "PCH_SUPERCPTH_11_16" float   NOT NULL,
    "PCH_CONVS_11_16" float   NOT NULL,
    "CONVSPTH11" float   NOT NULL,
    "CONVSPTH16" float   NOT NULL,
    "PCH_CONVSPTH_11_16" float   NOT NULL,
    "PCH_SPECS_11_16" float   NOT NULL,
    "SPECSPTH11" float   NOT NULL,
    "SPECSPTH16" float   NOT NULL,
    "PCH_SPECSPTH_11_16" float   NOT NULL,
    CONSTRAINT "pk_stores" PRIMARY KEY (
        "FIPS"
     )
);

CREATE TABLE "restaurants" (
    "FIPS" int   NOT NULL,
    "State" varchar(40)   NOT NULL,
    "County" varchar(40)   NOT NULL,
    "PCH_FFR_11_16" float   NOT NULL,
    "FFRPTH11" float   NOT NULL,
    "FFRPTH16" float   NOT NULL,
    "PCH_FFRPTH_11_16" float   NOT NULL,
    "PCH_FSR_11_16" float   NOT NULL,
    "FSRPTH11" float   NOT NULL,
    "FSRPTH16" float   NOT NULL,
    "PCH_FSRPTH_11_16" float   NOT NULL,
    "PC_FFRSALES07" float   NOT NULL,
    "PC_FFRSALES12" float   NOT NULL,
    "PC_FSRSALES07" float   NOT NULL,
    "PC_FSRSALES12" float   NOT NULL,
    CONSTRAINT "pk_restaurants" PRIMARY KEY (
        "FIPS"
     )
);

ALTER TABLE "local" ADD CONSTRAINT "fk_local_FIPS" FOREIGN KEY("FIPS")
REFERENCES "insecurity" ("FIPS");

ALTER TABLE "stores" ADD CONSTRAINT "fk_stores_FIPS" FOREIGN KEY("FIPS")
REFERENCES "insecurity" ("FIPS");

ALTER TABLE "restaurants" ADD CONSTRAINT "fk_restaurants_FIPS" FOREIGN KEY("FIPS")
REFERENCES "insecurity" ("FIPS");

