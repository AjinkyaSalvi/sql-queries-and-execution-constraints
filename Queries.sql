/* 01. */
SELECT Name, Club, Country FROM PLAYERS WHERE Position = 'Midfielder'AND Country = 'USA';

/* 02. */
SELECT Name, Club, Country,(2014-EXTRACT(YEAR FROM DOB))AS AGE FROM PLAYERS WHERE Is_captain=TRUE;

/* 03. */
SELECT Country_Name FROM COUNTRY WHERE No_of_Worldcup_won>2;

/* 04. */
SELECT Country_Name FROM COUNTRY WHERE No_of_Worldcup_won=0;

/* 05. */
SELECT Name, Country FROM PLAYERS WHERE Player_id NOT IN(SELECT Player_id FROM PLAYER_CARDS);

/* 06. */
SELECT Name, Country FROM PLAYERS AS P, PLAYER_CARDS AS C WHERE P.Player_id=C.Player_id AND Red_Cards=(SELECT MAX(Red_Cards)FROM PLAYER_CARDS);

/* 07. */
SELECT Host_City, COUNT(Host_City)AS Total_Games_Played FROM MATCH_RESULTS GROUP BY Host_City;

/* 08. */
SELECT Host_City FROM MATCH_RESULTS GROUP BY Host_City HAVING COUNT(Host_City)=(SELECT MAX(C.D)FROM(SELECT COUNT(Host_City)AS D FROM MATCH_RESULTS GROUP BY Host_City) AS C);

/* 09. */
SELECT Team1, COUNT(Team1)AS GamesPlayedAsTeam1, SUM(Team1_score)AS Goals_Scored, SUM(Team2_score)AS Goals_Against FROM MATCH_RESULTS GROUP BY Team1;

/* 10. */
SELECT Team2, COUNT(Team2)AS GamesPlayedAsTeam2, SUM(Team2_score)AS Goals_Scored, SUM(Team1_score)AS Goals_Against FROM MATCH_RESULTS GROUP BY Team2;

/* 11. */
SELECT Date_of_Match, Team1, Team2, CASE WHEN Team1_score>Team2_score THEN Team1 ELSE Team2 END AS Winning_Team, ABS(Team1_score-Team2_score)AS Goal_Difference FROM MATCH_RESULTS GROUP BY Match_id;

/* 12. */
SELECT * FROM MATCH_RESULTS WHERE Team1='Brazil'OR Team2='Brazil';

/* 13. */
SELECT Name, Country, Goals FROM PLAYERS AS P, PLAYER_ASSISTS_GOALS AS PAG WHERE P.Player_id=PAG.Player_id AND Goals>0 ORDER BY Goals DESC;

/* 14. */
SELECT Name, Country, Goals FROM PLAYERS AS P, PLAYER_ASSISTS_GOALS AS PAG WHERE P.Player_id=PAG.Player_id AND Goals>2 ORDER BY Goals DESC;

/* 15. */
SELECT Country_Name AS Countries, Population FROM COUNTRY ORDER BY Population DESC;
