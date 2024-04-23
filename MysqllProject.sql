-- There is a database on a pod that contains information about the MIT Academy students, including aspects like CGPA, resume updates, and specialization. Specific queries can be used to retrieve particular student data based on different aspects. --
CREATE SCHEMA pod;
use pod;
-- reading data --
SELECT * FROM podd;
-- total count --
SELECT count(*) from podd;

-- count of branch students --
SELECT count(*) FROM podd WHERE Specializations = 'Mechanical Engineering';
SELECT count(*) FROM podd WHERE Specializations = 'Electronics Engineering';
SELECT count(*) FROM podd WHERE Specializations = 'Electronics and Telecommunication Engineering';
SELECT count(*) FROM podd WHERE Specializations = 'Computer Science and Engineering';
SELECT count(*) FROM podd WHERE Specializations = 'Civil Engineering';
SELECT count(*) FROM podd WHERE Specializations = 'Chemical Engineering';

-- count of student status --
SELECT count(*) FROM podd WHERE StudentStatus = 'Resume Updated';
SELECT count(*) FROM podd WHERE StudentStatus = 'Active';

-- CGPA SORTATION --
SELECT count(*) FROM podd WHERE CGPA > 8.5;
SELECT count(*) FROM podd WHERE CGPA > 9;
SELECT count(*) FROM podd WHERE CGPA < 8.5; 

SELECT count(*) FROM podd WHERE CGPA > 8.5 AND Specializations = 'Computer Science and Engineering';
SELECT count(*) FROM podd WHERE CGPA > 9 AND Specializations = 'Computer Science and Engineering';
SELECT count(*) FROM podd WHERE CGPA < 8.5 AND Specializations = 'Computer Science and Engineering';

SELECT count(*) FROM podd WHERE CGPA > 8.5 AND Specializations = 'Electronics and Telecommunication Engineering';
SELECT count(*) FROM podd WHERE CGPA > 9 AND Specializations = 'Electronics and Telecommunication Engineering';
SELECT count(*) FROM podd WHERE CGPA < 8.5 AND Specializations = 'Electronics and Telecommunication Engineering';

SELECT count(*) FROM podd WHERE CGPA > 8.5 AND Specializations = 'Electronics Engineering';
SELECT count(*) FROM podd WHERE CGPA > 9 AND Specializations = 'Electronics Engineering';
SELECT count(*) FROM podd WHERE CGPA < 8.5 AND Specializations = 'Electronics Engineering';

SELECT count(*) FROM podd WHERE CGPA > 8.5 AND Specializations = 'Mechanical Engineering';
SELECT count(*) FROM podd WHERE CGPA > 9 AND Specializations = 'Mechanical Engineering';
SELECT count(*) FROM podd WHERE CGPA < 8.5 AND Specializations = 'Mechanical Engineering';

SELECT count(*) FROM podd WHERE CGPA > 8.5 AND Specializations = 'Civil Engineering';
SELECT count(*) FROM podd WHERE CGPA > 9 AND Specializations = 'Civil Engineering';
SELECT count(*) FROM podd WHERE CGPA < 8.5 AND Specializations = 'Civil Engineering';

SELECT count(*) FROM podd WHERE CGPA > 8.5 AND Specializations = 'Chemical Engineering';
SELECT count(*) FROM podd WHERE CGPA > 9 AND Specializations = 'Chemical Engineering';
SELECT count(*) FROM podd WHERE CGPA < 8.5 AND Specializations = 'Chemical Engineering';

-- Male female Count --
SELECT count(*) FROM podd WHERE Gender = 'Male';
SELECT count(*) FROM podd WHERE Gender = 'Female';

-- group by --
SELECT StudentStatus, count(*) FROM podd WHERE CGPA > 9 GROUP BY StudentStatus;
SELECT StudentStatus, count(*) FROM podd WHERE CGPA > 8.5 GROUP BY StudentStatus;
SELECT StudentStatus, count(*) FROM podd WHERE CGPA < 8.5 GROUP BY StudentStatus;

-- Complete count of Students having cgpa in between 8.5 and 9.5 ---
SELECT count(*) FROM podd WHERE CGPA BETWEEN 8.5 AND 9.5;

-- Complete list of Students having CGPA in between 8.5 and 9.5 -- 
SELECT * FROM podd WHERE CGPA BETWEEN 8.5 AND 9.5;
