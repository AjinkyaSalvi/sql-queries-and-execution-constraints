/* 04. (i) Key Integrity Constraint Violation: "Duplicate entry for key 'PRIMARY'" */
INSERT INTO MATCH_RESULTS (Match_id, Date_of_Match, Start_Time_Of_Match, Team1, Team2, Team1_score, Team2_score, Stadium_Name, Host_City)
VALUES (9, '2014-06-23', '10:00:00', 'A', 'B', 2, 1, 'C', 'D');

/* 04. (ii) Entity Integrity Constraint Violation: "Column cannot be null" */
INSERT INTO PLAYER_CARDS (Player_id, Yellow_Cards, Red_Cards)
VALUES (NULL, 1, 0);

/* 04. (iii) Referential Integrity Constraint Violation: "Cannot add or update a child row: a foreign key constraint fails" */
INSERT INTO PLAYERS (Player_id, Name, Fname, Lname, DOB, Country, Height_in_cms, Club, Position, Caps_for_Country, IS_CAPTAIN)
VALUES (1, 'A B', 'A', 'B', '2003-04-05', 'C', 78, 'D', 'E', 90, TRUE);

/* 05. Referential Integrity Constraint Violation using DELETE: "Cannot delete or update a parent row: a foreign key constraint fails" */
DELETE FROM COUNTRY 
WHERE
    Country_name = 'Algeria';

/* 06. (i) Key Constraint Not Violated*/
INSERT INTO MATCH_RESULTS (Match_id, Date_of_Match, Start_Time_Of_Match, Team1, Team2, Team1_score, Team2_score, Stadium_Name, Host_City)
VALUES (65, '2014-06-23', '10:00:00', 'Algeria', 'USA', 2, 1, 'C', 'D');

/* 06. (ii) Referential Integrity Constraint Not Violated */
INSERT INTO PLAYERS (Player_id, Name, Fname, Lname, DOB, Country, Height_in_cms, Club, Position, Caps_for_Country, IS_CAPTAIN)
VALUES (1, 'A B', 'A', 'B', '2003-04-05', 'Algeria', 78, 'D', 'E', 90, TRUE);

/* 06. (iii) Entity Integrity Constraint Not Violated (Note: This query needed query 06. (ii) to be executed first) */
INSERT INTO PLAYER_CARDS (Player_id, Yellow_Cards, Red_Cards)
VALUES (1, 1, 0);