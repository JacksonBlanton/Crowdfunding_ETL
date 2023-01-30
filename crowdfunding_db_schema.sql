CREATE TABLE "campaign" (
    "cf_id" INT  NOT NULL,
    "contact_id" INT  NOT NULL,
    "company_name" VARCHAR(30) NOT NULL,
    "description" VARCHAR(30) NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(30) NOT NULL,
    "backers_count" INT  NOT NULL,
    "country" VARCHAR(30) NOT NULL,
    "currency" VARCHAR(30) NOT NULL,
    "launched_date" DATE  NOT NULL,
    "end_date" DATE  NOT NULL,
    "category_id" VARCHAR(30) NOT NULL,
    "subcategory_id" VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(30) NOT NULL,
    "last_name" VARCHAR(30) NOT NULL,
    "email" VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_contact" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "categories" (
    "category_id" VARCHAR(30) NOT NULL,
    "category" VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategories" (
    "subcategory_id" VARCHAR(30) NOT NULL,
    "subcategory" VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "categories" ("category_id");
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategories" ("subcategory_id");

SELECT * FROM campaign
SELECT * FROM contacts
SELECT * FROM categories
SELECT * FROM subcategories

-- import data from csv files and re-select tables

SELECT * FROM campaign
SELECT * FROM contacts
SELECT * FROM categories
SELECT * FROM subcategories
