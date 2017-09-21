EXEC sp_configure 'show advanced options', 1;
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'contained database authentication', 1;
RECONFIGURE WITH OVERRIDE;
ALTER DATABASE db_name SET CONTAINMENT = PARTIAL;
EXEC sp_configure 'show advanced options', 0;
RECONFIGURE WITH OVERRIDE;