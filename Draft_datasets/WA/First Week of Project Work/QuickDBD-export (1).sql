-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Insecurity_Data" (
    "FIPS" int   NOT NULL,
    "State" varchar(50)   NOT NULL,
    "County" varchar(50)   NOT NULL,
    "FOODINSEC_12_14" float   NOT NULL,
    "FOODINSEC_15_17" float   NOT NULL,
    "CH_FOODINSEC_14_17" float   NOT NULL,
    "VLFOODSEC_12_14" float   NOT NULL,
    "VLFOODSEC_15_17" float   NOT NULL,
    "CH_VLFOODSEC_14_17" float   NOT NULL,
    CONSTRAINT "pk_Insecurity_Data" PRIMARY KEY (
        "FIPS"
     )
);

CREATE TABLE "Taxes_Data" (
    "FIPS" int   NOT NULL,
    "State" varchar(50)   NOT NULL,
    "County" varchar(50)   NOT NULL,
    "SODATAX_STORES14" float   NOT NULL,
    "SODATAX_VENDM14" float   NOT NULL,
    "CHIPSTAX_STORES14" float   NOT NULL,
    "CHIPSTAX_VENDM14" float   NOT NULL,
    "FOOD_TAX14" float   NOT NULL,
    CONSTRAINT "pk_Taxes_Data" PRIMARY KEY (
        "FIPS"
     )
);

ALTER TABLE "Insecurity_Data" ADD CONSTRAINT "fk_Insecurity_Data_FIPS" FOREIGN KEY("FIPS")
REFERENCES "Taxes_Data" ("FIPS");

