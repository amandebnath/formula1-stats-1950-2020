
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

  /* Table for Positions */

  SELECT DISTINCT [Position], COALESCE(TRY_CAST(Position AS INT),0) AS PositionFriendly
  FROM [Formula1].[dbo].[race_results_1950-2020];


--SELECT [Column0]                              AS [UniqueID]
--      ,TRY_CAST(NULLIF([Year], '') AS INT)    AS [Year]
--      ,[Position]                             AS [DriverPosition]
--      ,TRY_CAST(NULLIF([Driver No.], '') AS INT) AS [DriverNumber]
--      ,[Venue]                                AS [TrackName]
--      ,[Name]                                 AS [DriverName]
--      ,[NameTag]                              AS [DriverNameTag]
--      ,[Team]                                 AS [DriverTeam]
--      ,TRY_CAST(NULLIF([Laps], '') AS INT)    AS [Laps]
--      ,[Time]                                 AS [TotalTime]
--      ,[Points]                               AS [Points]
--      ,(SELECT MAX(TRY_CAST(NULLIF(rr2.[Laps], '') AS INT))
--         FROM [dbo].[race_results_1950-2020] AS rr2
--         WHERE rr2.Venue = rr.Venue
--           AND TRY_CAST(NULLIF(rr2.[Year], '') AS INT) = TRY_CAST(NULLIF(rr.[Year], '') AS INT)
--           AND TRY_CAST(NULLIF(rr2.[Position], '') AS INT) = 1
--       )                                     AS [TotalRaceLaps]
--FROM [dbo].[race_results_1950-2020] AS rr;

--;WITH TeamWins AS (
--    SELECT rr.[Team],
--           COUNT(*) AS Wins
--    FROM [dbo].[race_results_1950-2020] AS rr
--    WHERE TRY_CAST(NULLIF(rr.[Position], '') AS INT) = 1
--      AND TRY_CAST(NULLIF(rr.[Year], '') AS INT) BETWEEN 1950 AND 2020
--    GROUP BY rr.[Team]
--),
--MaxWins AS (
--    SELECT MAX(Wins) AS MaxWins FROM TeamWins
--)
--SELECT tw.[Team],
--       tw.Wins
--FROM TeamWins AS tw
--JOIN MaxWins AS mw
--  ON tw.Wins = mw.MaxWins
--ORDER BY tw.[Team];


  --CREATE CLUSTERED COLUMNSTORE INDEX [IX_race_results_1950-2020_CCS] ON DBO.[race_results_1950-2020];

  --UPDATE STATISTICS [Formula1].[dbo].[race_results_1950-2020];