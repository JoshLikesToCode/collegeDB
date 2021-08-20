-- Script Name: inserts.sql
-- Author: Joshua Stone
-- Purpose: insert sample data to test integrity of db
USE collegeDB;

INSERT INTO Student VALUES (1, "Jose", "123 City Street, CA 94510", "jose@college.com"), (2, "Josh", "1255 Oak Dr, Concord CA 94521", "josh@college.com"), (3, "Alice", "111 Alice Street, Apt 108, Martinez CA 94553", "alice@college.com");
INSERT INTO Faculty VALUES (1, "Sue", "111 Street, CA", 50000, "sue@collegefaculty.com"), (2, "Bob", "123 onetwothree street CA", 30000, "bob@collegefaculty.com"), (3, "Jim", "333 Jimbo Dr, CT", 65000, "jim@collegefaculty.com");
INSERT INTO Advisor VALUES (1, "advisor for sciences", 1), (2, "advisor of mathematics", 2), (3, "advisor of english", 3);
INSERT INTO Researcher VALUES (1, "researcher for sciences", 1), (2, "researcher of mathematics", 2), (3, "researcher of english", 3);
INSERT INTO office VALUES (1, '360', "Building 10, East Side"), (2, '910', "Building 11, West Side"), (3, '111', "Building 12, North Side");
INSERT INTO lecturer VALUES (1, "lecturer for sciences", 1, 1), (2, "lecturer of mathematics", 2, 2), (3, "lecturer of english", 3, 3);
INSERT INTO professor VALUES (1, "prof for sciences", 1, 1), (2, "prof of mathematics", 2, 2), (3, "prof of english", 3, 3);
INSERT INTO chair VALUES (1, "chair for sciences", 1, 1), (2, "chair of mathematics", 2, 2), (3, "chair of english", 3, 3);
INSERT INTO staff VALUES (1, "Billy Joe", "1277 New York Dr, Concord CA, 94521"), (2, "Sue Sam", "1111 This Street, This TE, 123"), (3, "Rick James", "1234 OneTwoThreeFour Street, Palo Alto CA, 94561");
INSERT INTO custodian VALUES (1, "Custodian for Building 1", 1), (2, "Custodian for Building 2", 2), (3, "Custodian for Building 3", 3);
INSERT INTO librarian VALUES (1, "Head Librarian", 1), (2, "Back-up Head Librarian", 2), (3, "Assistance Head Librarian", 3);
INSERT INTO `food clerk` VALUES (1, "Manager", 1), (2, "Assistant Manager", 2), (3, "Food Clerk Staff", 3);
INSERT INTO equipment VALUES (1, "Building A", "shovel", 1), (2, "Building B", "pickaxe", 2), (3, "Building C", "f-150 truck", 3);
INSERT INTO clubs VALUES (1, "Star Trek Club", 4, "Building A", "sfsustartrek.com"), (2, "Star Wars Club", 3, "Building B", "sfsustarwars.com"), (3, "Football Club", 100, "Building C", "sfsufootball.com");
INSERT INTO `parking lots` VALUES (1, "Parking lot A", "Westside of College", 100), (2, "Parking lot B", "Eastside of College", 1000), (3, "Employee Parking", "Underground Parking Lot", 500);
INSERT INTO department VALUES (1, "History Dept.", "Building A, Office 1", 1), (2, "Science Dept.", "Building B, Office 2", 2), (3, "Computer Science Dept.", "Building C, Office 4", 3);
INSERT INTO buildings VALUES (1, 10000, "Building A, East Side of College"), (2, 1500, "Building B, West Side Of College"), (3, 1250, "Building C, South Side of College");
INSERT INTO campuses VALUES (1, "CoSE", "Building A"), (2, "CoA", "Building B"), (3, "CoL", "Building D, second floor");
INSERT INTO subjects VALUES (1, "Science & Engineering", 3), (2, "Arts", 3), (3, "Languages", 3);
INSERT INTO tutoring VALUES (1, 1, 3), (2, 2, 3), (3, 3, 6);
INSERT INTO `health and wellness` VALUES (1, "Building A", 3), (2, "Building C", 4), (3, "Online Team", 5);
INSERT INTO services VALUES (1, 1, 1, 1), (2, 7, 2, 2), (3, 8, 3, 3); 
INSERT INTO degrees VALUES (1, 1, "Bachelors of Science", "Bachelors of Science of Math"), (2, 2, "Bachelors of Arts", "Bachelors of Arts of Arts"), (3, 3, "Masters", "Masters in the Japanese Language");
INSERT INTO arts VALUES (1, 3, 2), (2, 4, 2), (3, 6, 3);
INSERT INTO sciences VALUES (1, 2, 2), (2, 46, 2), (3, 7, 3);
INSERT INTO languages VALUES (1, 33, 2), (2, 36, 2), (3, 17, 3);
INSERT INTO course VALUES (1, 1, 1, 300, "Building A, Room 1"), (2, 2, 2, 400, "Building C, Room 306"), (3, 3, 3, 600, "Building B, Room 3");
INSERT INTO waitlist values (1, 10, 1), (2, 10, 2), (3, 10, 3);
INSERT INTO schedule values (1, "Mo We 3:00-4:45pm", 1), (2, "Tu Thurs 4:00-6:55pm", 2), (3, "Fri 9:30am-12:00pm", 3);
INSERT INTO section values (1, 1, 4000, "06/01/2021 - 08/05/2021"), (2, 2, 50000, "01/03/2022 - 05/04/2022"), (3, 3, 3000, "06/01/2022 - 08/05/2022");
INSERT INTO semester values (1, 2, 3), (2, 1, 2), (3, 2, 3);
INSERT INTO college values (1, "123 Fake College Street, San Francisco CA, 510", "Fake SFSU"), (2, "123 Faker College Street, Walnut Creek CA, 45123", "Fakesr SFSU"), (3, "321 Fakest College Street, Fake CA, 1337", "Fakest SFSU");
INSERT INTO register VALUES (1, 1), (2, 2), (3, 3);
INSERT INTO attends VALUES (1, 1), (2, 2), (3, 3);
INSERT INTO college_has VALUES (1, 1, 1, 1), (2, 2, 2, 2), (3, 3, 3, 3);
INSERT INTO employs VALUES (1, 1, 1), (2, 2, 2), (3, 3, 3);
INSERT INTO college_offers VALUES (1, 1), (2, 2), (3, 3);
INSERT INTO graduates VALUES (1, 1), (2, 2), (3, 3);
INSERT INTO semester_contains VALUES (1, 1), (2, 2), (3, 3);
INSERT INTO buildings_contain VALUES (1, 1, 1, 1, 1), (2, 2, 2, 2, 2), (3, 3, 3, 3, 3);
INSERT INTO course_contains VALUES (1, 1), (2, 2), (3, 3);
INSERT INTO teaches VALUES (1, 1, 1), (2, 2, 2), (3, 3, 3);
