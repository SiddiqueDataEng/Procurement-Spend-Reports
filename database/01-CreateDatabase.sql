/*
 * Procurement Spend Reports
 * Project #96 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: SSRS
 * Created: 2013
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ProcurementReports')
BEGIN
    ALTER DATABASE ProcurementReports SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ProcurementReports;
END
GO

CREATE DATABASE ProcurementReports
ON PRIMARY
(
    NAME = 'ProcurementReports_Data',
    FILENAME = 'C:\SQLData\ProcurementReports_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'ProcurementReports_Log',
    FILENAME = 'C:\SQLData\ProcurementReports_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE ProcurementReports SET RECOVERY SIMPLE;
ALTER DATABASE ProcurementReports SET AUTO_UPDATE_STATISTICS ON;
GO

USE ProcurementReports;
GO

PRINT 'Database ProcurementReports created successfully';
PRINT 'Project: Procurement Spend Reports';
PRINT 'Description: Vendor spending analysis';
GO
