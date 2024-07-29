-- Query to retrieve all tables in a model 
select * from $SYSTEM.TMSCHEMA_TABLES 

-- Query to get all columns (note the SortByColumnId column) 
Select * From $SYSTEM.TMSCHEMA_COLUMNS  

-- Query to get all calculated columns 
Select * From $SYSTEM.TMSCHEMA_COLUMNS Where [Type] = 2 

-- Query to get all measures 
select * from $SYSTEM.TMSCHEMA_MEASURES 
select * from $SYSTEM.TMSCHEMA_MEASURES WHERE [Name] = 'REVENUE' 

-- Query to get all dependencies 
select * from $system.discover_calc_dependency  

-- Get unique row counts for all tables and columns 
select * from $SYSTEM.DISCOVER_STORAGE_TABLES order by rows_count desc  

-- Query to get all the roles, associated permissions and role memberships defined in the model 
select * from $SYSTEM.TMSCHEMA_Roles 
select * from $SYSTEM.TMSCHEMA_TABLE_PERMISSIONS 
select * from $SYSTEM.TMSCHEMA_Role_Memberships 

-- Query to get all the KPIs defined in the model 
select * from $SYSTEM.TMSCHEMA_KPIS 

 -- Query to get session information 
select * from $SYSTEM.DISCOVER_SESSIONS 

-- Query to get all relationships 
select * from $SYSTEM.TMSCHEMA_RELATIONSHIPS 

-- Queries to get hierarchy information 
select * from $SYSTEM.TMSCHEMA_ATTRIBUTE_HIERARCHIES 
select * from $SYSTEM.TMSCHEMA_ATTRIBUTE_HIERARCHY_STORAGES 

-- Query to get information about each model: 
select * from $SYSTEM.TMSCHEMA_MODEL 

-- Query to get information about each partition: 
select * from $SYSTEM.TMSCHEMA_PARTITIONS 

-- Query to get perspective information: 
select * from $SYSTEM.TMSCHEMA_PERSPECTIVES 

-- Query to get catalog information (especially compatibility level): 
select * from $SYSTEM.DBSCHEMA_CATALOGS  