-- Script Name: testing.sql
-- Author: Joshua Stone
-- Purpose: test inserted data in our db
USE collegeDB;
SET SQL_SAFE_UPDATES = 0;

-- Testing Student --
DELETE FROM student WHERE name = "Alice";
UPDATE student SET name = "Bob" WHERE student_id = 2;

-- Testing Faculty --
DELETE FROM faculty WHERE name = "Sue";
UPDATE faculty SET name = "Josh" WHERE faculty_id = 3;

-- Testing Advisor --
DELETE FROM advisor WHERE description = "advisor for sciences";
UPDATE advisor SET description = "advisor of computer science" WHERE advisor_id = 2;

-- Testing Researcher --
DELETE FROM researcher WHERE researcher_id = 3;
UPDATE researcher SET description = "researcher of oceanography" WHERE researcher_id = 1;

-- Testing Office --
DELETE FROM office WHERE location = "Building 10, East Side"; 
UPDATE office SET room_num = 1 WHERE office_id = 2;

-- Testing Lecturer --
DELETE FROM lecturer where lecturer_id = 2;
UPDATE lecturer SET office = 2 WHERE office = 3;

-- Testing professor --
DELETE FROM professor WHERE office = 3;
UPDATE professor SET office = 3 WHERE professor_id = 2;

-- Testing for chair --
DELETE FROM chair WHERE chair_id = 2;
	-- MYSQL_ERROR #1 --
	# UPDATE chair SET office = 4 WHERE chair_id = 3;
	# ERROR CODE: "Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`collegedb`.`chair`, CONSTRAINT `fk_chair_office` FOREIGN KEY (`office`) REFERENCES `office` (`office_id`))"
UPDATE chair SET office = 2 WHERE chair_id = 3;

-- Testing for staff --
	-- MYSQL ERROR #2 --
    # DELETE FROM staff where name = "Billy Joe";
    # ERROR CODE: Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`collegedb`.`librarian`, CONSTRAINT `fk_librarian_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`))
UPDATE staff SET address = "San Francisco" WHERE staff_id = 3;

-- Testing for custodian --
DELETE FROM custodian WHERE staff_id = 3;
UPDATE custodian SET description = "Custodian for Building 1 & 3" WHERE custodian_id = 1;

-- Testing for librarian --
DELETE FROM librarian WHERE description = "Assistance HEad Librarian";
UPDATE librarian SET description = "Vice Pres of Library" where staff_id = 2;

-- Testing for food clerk --
DELETE FROM `food clerk` where staff_id = 2;
UPDATE `food clerk` SET description = "Assistant Manager" WHERE staff_id = 3;

-- Testing for equipment --
DELETE FROM equipment WHERE description = "pickaxe";
UPDATE equipment SET staff = 1 WHERE description = "f-150 truck";

-- Testing for clubs --
DELETE FROM clubs WHERE location = "Building C";
UPDATE clubs SET num_of_members = 100 WHERE club_id = 1;

-- Testing for parking lots --
DELETE from `parking lots` WHERE name = "Parking lot A";
UPDATE `parking lots` SET capacity = 200 WHERE location = "Underground Parking Lot";

-- Testing for department -
DELETE from department WHERE chair_id = 2;
UPDATE department SET department_id = 4 WHERE department_id = 1;

-- Testing for buildings --
DELETE from buildings WHERE capacity = 1250;
UPDATE buildings SET building_id = 3 WHERE building_id = 2;

-- Testing for campuses --
DELETE from campuses WHERE location = "Building D, second floor";
UPDATE campuses SET roles = "CoL" WHERE campuses_id = 2;

-- Testing for subjects --
	-- MYSQL ERROR #3 --
    # DELETE from subjects WHERE description = "Arts";
    # ERROR CODE: Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`collegedb`.`arts`, CONSTRAINT `fk_arts_subject` FOREIGN KEY (`subject`) REFERENCES `subjects` (`subject_id`));
UPDATE subjects SET total_subject_nums = 100 WHERE subject_id = 1;

-- Testing for tutoring --
DELETE FROM tutoring WHERE subject = 2;
UPDATE tutoring SET staff_members = 10 WHERE subject = 1;

-- Testing for health and wellness --
DELETE FROM `health and wellness` WHERE staff_members = 3;
UPDATE `health and wellness` SET health_and_wellness_id = 4 WHERE health_and_wellness_id = 2;

-- Testing for services --
UPDATE services SET staff_num = 6 WHERE services_id = 3;
DELETE FROM services WHERE `health and wellness` = 3;

-- Testing for degrees --
DELETE from degrees WHERE type = "Masters";
UPDATE degrees SET description = "Bachelors of Arts in the Japanese Language" WHERE subject = 2;

-- Testing for arts --
DELETE FROM arts WHERE arts_id = 1;
UPDATE arts SET arts_subject_num = 7 WHERE subject = 3;

-- Testing for sciences --
DELETE FROM sciences WHERE subject = 2;
UPDATE sciences SET sciences_id = 1 WHERE subject = 3;

-- Testing for languages --
DELETE FROM languages WHERE subject = 3;
UPDATE languages SET languages_subject_num = 3 WHERE subject = 2;

-- Testing for course --
DELETE FROM course WHERE teachers_id = 1;
UPDATE course SET num_of_students = 0 WHERE teachers_id = 3;

-- Testing for waitlist --
DELETE FROM waitlist WHERE course = 2;
UPDATE waitlist SET capacity = 5 WHERE course = 3;

-- Testing for schedule --
DELETE FROM schedule WHERE schedule_id = 3;
UPDATE schedule SET time = "Asynchronous Online" WHERE course = 2;

-- Testing for section --
DELETE FROM section WHERE semester_id = 1;
UPDATE section SET section_id = 1 WHERE section_id = 3;

-- Testing for semester --
	-- MYSQL ERROR #4 --
	# DELETE FROM semester WHERE term = 1;
    # ERROR CODE: Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`collegedb`.`semester_contains`, CONSTRAINT `fk_semester_contains_semester` FOREIGN KEY (`semester`) REFERENCES `semester` (`semester_id`));
UPDATE semester SET term = 1 WHERE semester_id = 1;

-- Testing for college -
	-- MYSQL ERROR #5 --
    # DELETE FROM college WHERE name = "Fakest SFSU";
    # ERROR CODE: Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`collegedb`.`employs`, CONSTRAINT `fk_employs_college` FOREIGN KEY (`college`) REFERENCES `college` (`college_id`))
	-- MYSQL ERROR #6 --
	# UPDATE college SET college_id = 4 WHERE college_id = 1;
    # ERROR CODE: Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`collegedb`.`college_offers`, CONSTRAINT `fk_college_offers_college` FOREIGN KEY (`college`) REFERENCES `college` (`college_id`));
    
-- Testing for register --
DELETE FROM register WHERE semester = 3;
UPDATE register SET semester = 1 WHERE semester = 2;
 
-- Testing for attends --
DELETE FROM attends WHERE college = 1;
UPDATE attends SET college = 1 WHERE student = 2;

-- Testing for college_has --
DELETE FROM college_has WHERE college = 1;
UPDATE college_has SET college = 1 WHERE college = 2;


-- Testing for employs --
DELETE FROM employs where staff = 2;
UPDATE employs SET college = 1 WHERE college = 3;

-- Testing for college_offers --
DELETE FROM college_offers WHERE degrees = 1;
UPDATE college_offers SET college = 1 WHERE college = 2;

-- Testing graduates --
DELETE FROM graduates WHERE student = 1;
UPDATE graduates SET degree = 1 WHERE degree = 2;

-- Testing semester_contains --
DELETE FROM semester_contains WHERE courses = 2;
UPDATE semester_contains SET courses = 500 WHERE courses = 1;

-- Testing buildings_contain --
DELETE FROM buildings_contain WHERE building = 1;
UPDATE buildings_contain SET building = 1 WHERE building = 2;
    
-- Testing course_contains --
DELETE FROM course_contains WHERE subject = 2;
UPDATE course_contains SET course = 2 WHERE subject = 3;
    
-- Testing for teaches --
DELETE FROM teaches WHERE course = 1;
UPDATE teaches SET course = 1 WHERE course = 2;
