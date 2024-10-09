-- Databricks notebook source
-- MAGIC %md
-- MAGIC ##### Query data via unity catalog using 3 level namespace

-- COMMAND ----------

select * from dev_ws.`dev-bronze`.circuits

-- COMMAND ----------

show catalogs;

-- COMMAND ----------

use catalog dev_ws;


-- COMMAND ----------

select current_catalog()

-- COMMAND ----------

select current_schema();

-- COMMAND ----------

show schemas;

-- COMMAND ----------

use schema  `dev-bronze`;
show tables;

-- COMMAND ----------

-- MAGIC %python
-- MAGIC display(spark.sql('show tables'))

-- COMMAND ----------

-- MAGIC %python
-- MAGIC df = spark.table('dev_ws.`dev-bronze`.circuits')

-- COMMAND ----------

-- MAGIC %python 
-- MAGIC display(df)

-- COMMAND ----------


