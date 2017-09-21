USE RepublicDatabaseAutoservice
GO

EXEC GetSTOByCity '�����'
GO

EXEC GetSTOByDistrict '���������'
GO

EXEC GetSTOByRegion '���������'
GO

SELECT [dbo].[Autoservice].service_name 
	FROM [dbo].[Autoservice] JOIN [dbo].[WorkCategory] ON [dbo].[Autoservice].service_id = [dbo].[WorkCategory].service_id
		AND [dbo].[WorkCategory].category_id IN (SELECT category_id FROM Category WHERE Category.category_name LIKE '���������')
GO

EXEC GetSTOByCategory '���������'
GO
