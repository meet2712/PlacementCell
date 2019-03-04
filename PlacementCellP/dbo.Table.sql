CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [company_name] NVARCHAR(MAX) NOT NULL, 
    [website] NVARCHAR(50) NOT NULL, 
    [package] FLOAT NOT NULL, 
    [date] DATE NOT NULL, 
    [location] NCHAR(10) NOT NULL, 
    [eligibility] NTEXT NOT NULL
)
