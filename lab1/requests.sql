/*Retrieve all courses that are smaller than 4 CP*/
SELECT * FROM COURSES WHERE (C_C_POINTS < 4);

/*Retrieve names of the courses together with the names of their teachers*/
SELECT COURSES.C_TITLE,TEACHERS.T_NAME FROM COURSES
  LEFT JOIN TEACHERS ON COURSES.C_TEACHER = TEACHERS.T_ID;

/*Retrieve information needed in student’s individual plan
(teacher, name of the course and grade for each course that
the student has passed). Do it for any student ID number*/
SELECT STUDENTS.ST_ID,TEACHERS.T_NAME,COURSES.C_TITLE,GRADES.G_GRADE
  FROM GRADES
  INNER JOIN STUDENTS ON GRADES.G_STUDENT = STUDENTS.ST_ID
  INNER JOIN COURSES ON GRADES.G_COURSE = COURSES.C_ID
  INNER JOIN TEACHERS ON COURSES.C_TEACHER = TEACHERS.T_ID
;

/*Retrieve all students and sort them according
to the average grade, so that the best student is shown first*/
SELECT STUDENTS.ST_NAME,G_STUDENT,AVG(GRADES.G_GRADE) AS MOY
FROM GRADES
  INNER JOIN STUDENTS ON GRADES.G_STUDENT = STUDENTS.ST_ID
GROUP BY GRADES.G_STUDENT,STUDENTS.ST_NAME
ORDER BY MOY DESC;

/*Find all students that have passed all (6) exams and received at least 4*/
SELECT STUDENTS.ST_NAME,G_STUDENT
FROM GRADES
  INNER JOIN STUDENTS ON GRADES.G_STUDENT = STUDENTS.ST_ID
  WHERE GRADES.G_GRADE >=4
GROUP BY STUDENTS.ST_NAME,G_STUDENT
HAVING COUNT(GRADES.G_STUDENT) >= 6;

/*Calculate the average marks of each teacher and
each course. Do it in the same query!*/
SELECT AVG(GRADES.G_GRADE),TEACHERS.T_NAME,COURSES.C_TITLE FROM GRADES
INNER JOIN COURSES ON COURSES.C_ID = GRADES.G_COURSE
INNER JOIN TEACHERS ON COURSES.C_TEACHER = TEACHERS.T_ID
GROUP BY TEACHERS.T_NAME, COURSES.C_TITLE;

SELECT AVG(GRADES.G_GRADE),COURSES.C_TITLE FROM GRADES
INNER JOIN COURSES ON COURSES.C_ID = GRADES.G_COURSE
GROUP BY COURSES.C_TITLE;
