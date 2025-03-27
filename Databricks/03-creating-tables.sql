-- Databricks notebook source
drop database if exists demo_db cascade

-- COMMAND ----------

-- MAGIC %fs rm -r /user/hive/warehouse/demo_db.db

-- COMMAND ----------

create database if not exists demo_db


-- COMMAND ----------

create table if not exists demo_db.fire_service_calls_tbl(
  CallNumber integer,
  UnitID string,
  IncidentNumber integer,
  CallType string,
  CallDate string,
  WatchDate string,
  CallFinalDisposition string,
  AvailableDtTm string,
  Address string,
  City string,
  Zipcode integer,
  Battalion string,
  StationArea string,
  Box string,
  OriginalPriority string,
  Priority string,
  FinalPriority integer,
  ALSUnit boolean,
  CallTypeGroup string,
  NumAlarms integer,
  UnitType string,
  UnitSequenceInCallDispatch integer,
  FirePreventionDistrict string,
  SupervisorDistrict string,
  Neighborhood string,
  Location string,
  RowID string,
  Delay float
) using parquet --to specify fileformat to save the data on the disk


-- COMMAND ----------

insert into demo_db.fire_service_calls_tbl
values(1234, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 
null, null, null, null, null, null, null, null, null) --конечно, никто в реальном мире так не грузит, так как данных оооочень много. Это чисто демка

-- COMMAND ----------

select * from demo_db.fire_service_calls_tbl

-- COMMAND ----------

truncate table demo_db.fire_service_calls_tbl

-- COMMAND ----------

 insert into demo_db.fire_service_calls_tbl
 select * from global_temp.fire_service_calls_view

-- COMMAND ----------

select * from demo_db.fire_service_calls_tbl


-- COMMAND ----------

