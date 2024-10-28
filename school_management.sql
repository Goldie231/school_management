CREATE TABLE students (
student_id INT PRIMARY KEY, 
first_name VARCHAR (50),
last_name VARCHAR (50),
dob DATE ,
email  TEXT,
phone_number varchar (50)
);



CREATE TABLE courses (
course_id INT PRIMARY KEY,
 course_name VARCHAR (50),
 course_code INT,
 credits DECIMAL
 );


CREATE TABLE enrollments (
enrollment_id  INT PRIMARY KEY,
 student_id INT,
 course_id INT
 );
 
 
 CREATE TABLE grades (
 `grade_id` INT PRIMARY KEY,
 `enrollment_id` INT,
 `grade` INT
 );
 
 

 
 
 INSERT INTO students (student_id , first_name, last_name , dob, email, phone_number) VALUES
(101, 'Mark', 'Doe', '2004-01-01', 'markdoe@outmail.com', '8730222345'),
(102, 'Jayden', 'smith', '2006-01-15', 'jaydensmith@gmail.com', '8562830923'),
(103, 'Bob', 'Johnson', '2002-02-01', 'Bobjohnson@hotmail.com', '2199029984'),
(104, 'Dale', 'Brown', '2005-03-01', 'Dalebrown@yahoo.com', '6739261105'),
(105, 'Mike', 'Davis', '2003-04-01', 'Mikedavis@yandex.com', '8286669021'),
(106, 'Jude', 'Chen', '2001-05-01', 'judechen@gmail.com', '9815562020'),
(107, 'chai', 'Lee', '2004-06-01',  'chailee@gmail.com', '64296688674'),
(108, 'Seun', 'Taylor', '2004-07-01', 'seuntaylor@gmail.com', '7813211313'),
(109, 'Kevin', 'White', '2002-08-01', 'kevinwhite@gmail.com', '2311011312'),
(110, 'Biodun','Oluwafemi', '2002-08-01', 'olufemibiodun@gmail.com', '2317781102'),
(111, 'Tomiwa',  'Makanjuola','2003-05-08','Tomiwamakanjuola@yahoo.com', '888707101'),
(112, 'Micheal',  'Lepage', '2002-08-11','micheallepage@gmail.com', '7907813200'),
(113, 'Lola',  'Idije', '2002-05-30', 'lolaijidje@hotmail.com', '5679019023'),
(114, 'Joy', 'Karma','2004-04-09', 'Joykarma@yahoo.com', '6620919305'),
(115, 'Jolie', 'Joel', '2002-04-07', 'Joliejoel@gmail.com', '9024325021'),
(116, 'Tunde', 'osinboyejo', '2004-12-01', 'tundeosinboyejo@yahoo.com', '8202791942'),
(117, 'Tolu', 'Dhunsi', '2003-11-01', 'toludahunsi@hotmail.com', '9237830183'),
(118, 'Wura', 'danfo', '2003-03-21', 'wuradanfo@yahoo.com', '6754309321'),
(119, 'Tobi', 'Ray', '2002-07-01', 'tobiray88@gmail.com', '03820780923'),
(120, 'paula', 'huckabee', '2004-09-12', 'pualahuc54@gmail.com', '56392932930'),
(121, 'Faith', 'Elube', '2005-09-16', 'faithelube4@yahoo.com', '7764420283'),
(122, 'Godwin',  'Kinman', '2003-05-15','godwinkinman101@gmail.com', '9272429813'),
(123, 'Racheal',  'Rowland', '2002-09-01', 'rachealrowland77@gmail.com', '2943320182'),
(124, 'Rice',  'Julie', '2006-01-08', 'ricejulie@hotmail.com', '8822830028'),
(125, 'mayor',  'kim', '2004-06-11', 'mayorkim7@gmail.com', '0459822840'),
(126, 'Mane',  'July', '2002-03-21', 'manejuly3@gmail.com', '7390440273'),
(127, 'Rolly',  'Dupe', '2003-04-01', 'rollydupe88@gmail.com', '1020122183'),
(128, 'James',  'Duke', '2006-05-11', 'jamesduke00@outlook.com', '3942832938'),
(129, 'Samuel', 'Doe', '2004-04-13', 'samueldoe@gmail.com', '8593943800'),
(130, 'Joy', 'karma', '2004-02-14', 'joykarma@gmail.com', '9302351203');

SELECT *products
FROM students ;


ALTER TABLE students
 ADD  address VARCHAR  (50); 
 
ALTER TABLE courses
MODIFY column course_name  VARCHAR (100);

SELECT *
FROM courses;

ALTER TABLE students
RENAME COLUMN dob TO date_of_birth;



INSERT INTO courses (course_id, course_name, course_code, credits) VALUES
(1, 'MATH', 'MAT102', '2'),
(2, 'PSY', 'PSY103', '2'),
(3, 'ENG',  'ENG101', '2'),
(4, 'POL', 'POL105', '3'),
(5, 'POL', 'POL106', '3'),
(6, 'SOS', 'SOS101', '2'),
(7, 'ACCT', 'ACCT102', '2'),
(8, 'LIN', 'LIN102', '2'),
(9, 'HDS', 'HDS101', '3');

SELECT *
FROM courses;
 
ALTER TABLE courses
MODIFY course_code  VARCHAR (50);

INSERT INTO courses (course_id, course_name, course_code, credits) values
(10, 'LIS', 'LIS101', '1');

SELECT *
FROM enrollments;

insert into enrollments ( enrollment_id, student_id, course_id) VALUES
(01, 101, 1),
(02, 102, 2),
(03, 103, 3),
(04, 104, 4),
(05, 104,  4),
(06,  105, 7),
(07,  107, 8),
(08, 108, 5),
(09, 109, 6),
(10, 107, 8),
(11,  109, 10),
(12,  110, 2);

SELECT *
FROM enrollments;

insert into grades ( grade_id, enrollment_id, grade) VALUES
(001, 101, 50),
(002, 102, 40),
(003, 103, 35),
(004, 104, 40),
(005, 104,  40),
(006,  105, 45),
(007,  107, 35),
(008, 108, 50),
(009, 109, 40),
(010, 107, 35),
(011,  109, 40),
(012,  110, 25);
SELECT * FROM grades;


SELECT  enrollments.student_id, courses.course_id, courses.course_name, courses.course_code, students.first_name, students.last_name, grades, grades.enrollment_id, grades.grade
FROM enrollments
INNER JOIN courses
ON enrollments.course_id = courses.course_id;


SELECT  enrollments.student_id,  students.first_name, students.last_name, grades.enrollment_id, grades.grade
FROM students
LEFT JOIN enrollments
ON students.student_id = enrollments.student_id
INNER JOIN grades 
on grades.enrollment_id = enrollments.student_id;

--- Write a query to retrieve the full names and courses for all students.

SELECT 
    CONCAT(students.first_name, ' ', students.last_name) AS full_name,
    courses.course_name
FROM 
    students
LEFT JOIN 
    enrollments ON students.student_id = enrollments.student_id
LEFT JOIN 
    courses ON enrollments.course_id = courses.course_id;
    
    --- Write a query to find all students who have not yet been assigned a grade.
    
    SELECT 
    CONCAT(students.first_name, ' ', students.last_name) AS full_name,
    students.student_id
FROM 
    students
LEFT JOIN 
    enrollments ON students.student_id = enrollments.student_id
LEFT JOIN 
    grades ON enrollments.enrollment_id = grades.enrollment_id
WHERE 
    grades.grade IS NULL;
    
    
    --- WHERE grades.grade IS NULL: This condition filters the results to only include students who do not have any assigned grades (i.e., their grade field is NULL).


SELECT 
    CONCAT(students.first_name, ' ', students.last_name) AS full_name,
    students.student_id
FROM 
    students
LEFT JOIN 
    enrollments ON students.student_id = enrollments.student_id
LEFT JOIN 
    grades ON enrollments.enrollment_id = grades.enrollment_id
WHERE 
    grades.grade IS NULL;


--- Write a query that returns the average grade for each course.

SELECT 
    courses.course_name,
    courses.course_code,
    AVG(grades.grade) AS average_grade
FROM 
    courses
LEFT JOIN 
    enrollments ON courses.course_id = enrollments.course_id
LEFT JOIN 
    grades ON enrollments.enrollment_id = grades.enrollment_id
GROUP BY 
    courses.course_id, courses.course_name, courses.course_code;

--- Create a `CASE` statement to assign letter grades (A, B, C, D, F) based on numerical grades.

SELECT 
    courses.course_name,
    courses.course_code,
    AVG(grades.grade) AS average_grade,
    CASE 
        WHEN AVG(grades.grade) >= 90 THEN 'A'
        WHEN AVG(grades.grade) >= 80 THEN 'B'
        WHEN AVG(grades.grade) >= 70 THEN 'C'
        WHEN AVG(grades.grade) >= 60 THEN 'D'
        ELSE 'F'
    END AS letter_grade
FROM 
    courses
LEFT JOIN 
    enrollments ON courses.course_id = enrollments.course_id
LEFT JOIN 
    grades ON enrollments.enrollment_id = grades.enrollment_id
GROUP BY 
    courses.course_id, courses.course_name, courses.course_code;
    
    --- Use subqueries to find students with the highest grades in each course.
    
    SELECT 
    students.first_name,
    students.last_name,
    courses.course_name,
    grades.grade
FROM 
    grades
JOIN 
    enrollments ON grades.enrollment_id = enrollments.enrollment_id
JOIN 
    students ON enrollments.student_id = students.student_id
JOIN 
    courses ON enrollments.course_id = courses.course_id
WHERE 
    grades.grade = (
        SELECT 
            MAX(g.grade)
        FROM 
            grades g
        JOIN 
            enrollments e ON g.enrollment_id = e.enrollment_id
        WHERE 
            e.course_id = courses.course_id
    );
    
  --  Write a CTE to list all students with their course names and grades.
  
  WITH StudentCourses AS (
    SELECT 
        students.student_id,
        CONCAT(students.first_name, ' ', students.last_name) AS full_name,
        courses.course_name,
        grades.grade
    FROM 
        students
    LEFT JOIN 
        enrollments ON students.student_id = enrollments.student_id
    LEFT JOIN 
        courses ON enrollments.course_id = courses.course_id
    LEFT JOIN 
        grades ON enrollments.enrollment_id = grades.enrollment_id
)

SELECT 
    student_id,
    full_name,
    course_name,
    grade
FROM 
    StudentCourses
ORDER BY 
    full_name, course_name;
    
    
  --  Write a CTE to find students who have taken  1 course.
    WITH CourseCounts AS (
    SELECT 
        students.student_id,
        CONCAT(students.first_name, ' ', students.last_name) AS full_name,
        COUNT(enrollments.course_id) AS course_count
    FROM 
        students
    LEFT JOIN 
        enrollments ON students.student_id = enrollments.student_id
    GROUP BY 
        students.student_id, students.first_name, students.last_name
)

SELECT 
    student_id,
    full_name,
    course_count
FROM 
    CourseCounts
WHERE 
    course_count < 2
    GROUP BY student_id,
    full_name,
    course_count;

--- Write a query to count the number of students enrolled in each course.

SELECT 
    courses.course_name,
    courses.course_code,
    COUNT(enrollments.student_id) AS student_count
FROM 
    courses
LEFT JOIN 
    enrollments ON courses.course_id = enrollments.course_id
GROUP BY 
    courses.course_id, courses.course_name, courses.course_code
ORDER BY 
    courses.course_name;
    
    
   --  Create a report showing the total number of students, courses, and enrollments.
SELECT 
    (SELECT COUNT(*) FROM students) AS total_students,
    (SELECT COUNT(*) FROM courses) AS total_courses,
    (SELECT COUNT(*) FROM enrollments) AS total_enrollments;
    
    
    -- to retrieve the names of students and the courses they are not enrolled in.
    
    SELECT 
    students.student_id,
    CONCAT(students.first_name, ' ', students.last_name) AS full_name,
    courses.course_name,
    courses.course_code
FROM 
    students
CROSS JOIN 
    courses
LEFT JOIN 
    enrollments ON students.student_id = enrollments.student_id AND courses.course_id = enrollments.course_id
WHERE 
    enrollments.enrollment_id IS NULL
ORDER BY 
    students.student_id, courses.course_name;
    
    -- Write a query to find students who share the same last name.
    SELECT 
    last_name,
    COUNT(*) AS student_count
FROM 
    students
GROUP BY 
    last_name
HAVING 
    COUNT(*) > 1;
    
    
    -- Create a new table named dropped_courses with the same structure as enrollments, then move
-- all enrollments where the grade is "F" to this table.
    CREATE TABLE dropped_courses (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT
);




    
    
    




    
    

















