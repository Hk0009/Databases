create database Application;
use Application;

CREATE TABLE [dbo].[ProductMaster](
 [Id] [int] IDENTITY(1,1) NOT NULL,
 [ProductId] [varchar](10) NOT NULL,
 [ProductName] [varchar](50) NOT NULL,
 [CategoryName] [varchar](50) NOT NULL,
 [Price] [int] NOT NULL,
 CONSTRAINT [PK_ProductMaster] PRIMARY KEY CLUSTERED 
(
 [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Person](
 [Id] [int] IDENTITY(1,1) NOT NULL,
 [PersonId] [varchar](10) NOT NULL,
 [PersonName] [varchar](100) NOT NULL,
 [ResidenceNo] [varchar](10) NOT NULL,
 [ResidenceName] [varchar](30) NOT NULL,
 [Street] [varchar](50) NOT NULL,
 [City] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
 [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE PROCEDURE [dbo].[spGetProducts]
        AS
        BEGIN
            SET NOCOUNT ON;
            select * from ProductMaster
        END
GO

 CREATE PROCEDURE [dbo].[spInsertProduct]
  @Id int OUT,
  @ProductId varchar(10),
  @ProductName varchar(50),
  @CategoryName varchar(50),
  @Price int
        AS
        BEGIN
            SET NOCOUNT ON;
            Insert into ProductMaster values (@ProductId,@ProductName,@CategoryName,@Price)
   SET @Id = SCOPE_IDENTITY()
        END
      
GO

CREATE TYPE [dbo].[PersonTableType] AS TABLE(
 [PersonId] [varchar](10) NULL,
 [PersonName] [varchar](100) NULL,
 [ResidenceNo] [varchar](10) NULL,
 [ResidenceName] [varchar](30) NULL,
 [Street] [varchar](50) NULL,
 [City] [varchar](50) NULL
)
GO
Create Procedure [dbo].[spInsertPerson] 
@PersonAddress PersonTableType READONLY,
@Id int OUT
As
Begin
 Insert into [dbo].[Person]  
  select * from @PersonAddress
  SET @Id = SCOPE_IDENTITY()
End
GO
CREATE TYPE [dbo].[PersonTableType] AS TABLE(
 [PersonId] [varchar](10) NULL,
 [PersonName] [varchar](100) NULL,
 [ResidenceNo] [varchar](10) NULL,
 [ResidenceName] [varchar](30) NULL,
 [Street] [varchar](50) NULL,
 [City] [varchar](50) NULL
)
GO













