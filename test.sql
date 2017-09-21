USE RepublicDatabaseAutoservice
GO

EXEC GetSTOByCity 'Минск'
GO

EXEC GetSTOByDistrict 'Щучинский'
GO

EXEC GetSTOByRegion 'Брестская'
GO

SELECT [dbo].[Autoservice].service_name 
	FROM [dbo].[Autoservice] JOIN [dbo].[WorkCategory] ON [dbo].[Autoservice].service_id = [dbo].[WorkCategory].service_id
		AND [dbo].[WorkCategory].category_id IN (SELECT category_id FROM Category WHERE Category.category_name LIKE 'Слесарные')
GO

EXEC GetSTOByCategory 'Слесарные'
GO
