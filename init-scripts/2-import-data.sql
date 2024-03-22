COPY reports  FROM '/usr/local/csv-data/reports.csv' DELIMITER '$' CSV;
COPY Report_Links_LX  FROM '/usr/local/csv-data/report_links.csv' DELIMITER '$' CSV;
COPY Gender_LX FROM '/usr/local/csv-data/gender_lx.csv' DELIMITER '$' CSV;
COPY Drug_Product FROM '/usr/local/csv-data/drug_products.csv' DELIMITER '$' CSV;
COPY Report_Drug FROM '/usr/local/csv-data/report_drug.csv' DELIMITER '$' CSV;
COPY Outcome_LX FROM '/usr/local/csv-data/outcome_lx.csv' DELIMITER '$' CSV;
COPY Source_LX FROM '/usr/local/csv-data/source_lx.csv' DELIMITER '$' CSV;
COPY Seriousness_LX  FROM '/usr/local/csv-data/seriousness_lx.csv' DELIMITER '$' CSV;
COPY Reactions  FROM '/usr/local/csv-data/reactions.csv' DELIMITER '$' CSV;
COPY Report_Drug_Indication  FROM '/usr/local/csv-data/report_drug_indication.csv' DELIMITER '$' CSV;
COPY Report_Type_LX  FROM '/usr/local/csv-data/report_type_lx.csv' DELIMITER '$' CSV;
COPY Drug_Product_Ingredients  FROM '/usr/local/csv-data/drug_product_ingredients.csv' DELIMITER '$' CSV;
