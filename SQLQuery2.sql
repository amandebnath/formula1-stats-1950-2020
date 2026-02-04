
CREATE OR ALTER VIEW [rpt].[vw_RaceResults]
AS
/* 
===================================================
Created By: Aman
Created on: 03-02-2026
Created for: Data Discoveries - Formula 1 Analytics
Description: F1 Data Exploration from 1950 to 2020
===================================================
*/
-- Created by GitHub Copilot in SSMS - review carefully before executing

SELECT [Column0]                                 AS [UniqueID]
      ,CAST([Year]       AS INT)                 AS [Year]
      ,COALESCE(TRY_CAST([Position] AS INT), 99) AS [DriverPosition]
      ,CAST([Driver No.] AS INT)                 AS [DriverNumber]
      ,[Venue]                                   AS [TrackName]
      ,[Name]                                    AS [DriverName]
      ,[NameTag]                                 AS [DriverNameTag]
      ,[Team]                                    AS [DriverTeam]
      ,CAST([Laps]       AS INT)                 AS [Laps]             
      ,[Time]                                    AS [TotalTime]
      ,CAST([Points]     AS DECIMAL(18,2))       AS [Points]
  FROM [Formula1].[dbo].[race_results_1950-2020] AS rr;

