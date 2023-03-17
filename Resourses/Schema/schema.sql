-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "insecurity" (
    "FIPS" int   NOT NULL,
    "State" varchar(40)   NOT NULL,
    "County" varchar(40)   NOT NULL,
    "FOODINSEC_08_10" float   NOT NULL,
    "FOODINSEC_09_11" float   NOT NULL,
    "FOODINSEC_11_13" float   NOT NULL,
    "FOODINSEC_12_14" float   NOT NULL,
    "FOODINSEC_14_16" float   NOT NULL,
    "FOODINSEC_15_17" float   NOT NULL,
    "FOODINSEC_17_19" float   NOT NULL,
    "CH_FOODINSEC_14-16_to_17-19" float   NOT NULL,
    "BI_Model_answer_14-16_to_17-19" float   NOT NULL,
    "CH_FOODINSEC_11_14" float   NOT NULL,
    "CH_FOODINSEC_14_17" float   NOT NULL,
    "FOODINSEC_09_14_AVG" float   NOT NULL,
    "FOODINSEC_12_17_AVG" float   NOT NULL,
    "CH_FOODINSEC_09_14_TO_15_17" float   NOT NULL,
    "CH_FOODINSEC_09_11_TO_12_17" float   NOT NULL,
    "Model_answer_09-14_15-17" float   NOT NULL,
    "Model_answer_09-11_12-17" float   NOT NULL,
    "Model_answer_12-14_15-17" float   NOT NULL,
    "BI_Model_answer_09-14_15-17" float   NOT NULL,
    "BI_Model_answer_09-11_12-17" float   NOT NULL,
    "BI_Model_answer_12-14_15-17" float   NOT NULL,
    CONSTRAINT "pk_insecurity" PRIMARY KEY (
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

CREATE TABLE "\restaurants" (
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
    CONSTRAINT "pk_\restaurants" PRIMARY KEY (
        "FIPS"
     )
);

ALTER TABLE "stores" ADD CONSTRAINT "fk_stores_FIPS" FOREIGN KEY("FIPS")
REFERENCES "insecurity" ("FIPS");

ALTER TABLE "\restaurants" ADD CONSTRAINT "fk_\restaurants_FIPS" FOREIGN KEY("FIPS")
REFERENCES "insecurity" ("FIPS");

