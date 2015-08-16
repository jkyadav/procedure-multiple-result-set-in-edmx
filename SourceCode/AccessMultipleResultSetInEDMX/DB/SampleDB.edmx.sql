
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/23/2014 13:23:44
-- Generated from EDMX file: G:\Blog Sample\AccessMultipleResultSetInEDMX\AccessMultipleResultSetInEDMX\DB\SampleDB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Sample];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Topics]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Topics];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Topics'
CREATE TABLE [dbo].[Topics] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TopicName] varchar(50)  NOT NULL,
    [Description] varchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Topics'
ALTER TABLE [dbo].[Topics]
ADD CONSTRAINT [PK_Topics]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------
CREATE PROCEDURE GetTopics
AS
BEGIN
	SELECT * FROM Topics
	
	SELECT T.Id,T.TopicName FROM Topics T
END
-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------