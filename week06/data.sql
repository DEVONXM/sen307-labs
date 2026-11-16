INSERT INTO Department (dept_name) VALUES
('Software Engineering'),
('Computer Science'),
('Artificial Intelligence'),
('Data Science'),
('Cybersecurity');

INSERT INTO Course (course_code, course_title, credit_units, description, dept_id) VALUES
('SEN307', 'Database Systems', 3,
'Relational database design, SQL queries, normalization, transactions and indexing using MySQL.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('SEN301', 'Software Architecture', 3,
'Architectural styles, design patterns, microservices and how to structure large software systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('COS301', 'Operating Systems', 3,
'Processes, threads, CPU scheduling, memory management and file systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('COS305', 'Computer Networks', 3,
'TCP/IP, routing, switching, LAN and WAN design and network protocols.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('AIN301', 'Introduction to Artificial Intelligence', 3,
'Intelligent agents, search algorithms, knowledge representation and reasoning.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('AIN305', 'Machine Learning', 3,
'Supervised and unsupervised learning, neural networks, deep learning and model evaluation.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('AIN307', 'Natural Language Processing', 3,
'Text processing, word embeddings, language models, sentiment analysis and chatbots.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('DTS301', 'Data Visualization and Analytics', 2,
'Exploratory data analysis, charts, dashboards and telling stories with data.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('DTS305', 'Big Data Technologies', 3,
'Distributed storage and processing of very large datasets with Hadoop and Spark.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('CYB301', 'Network Security', 3,
'Firewalls, cryptography, intrusion detection and protecting networks from attacks.',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));

INSERT INTO Lecturer (staff_no, full_name, email, dept_id) VALUES
('VUA/SEN/101','Dr David Chinedu','a.okafor@vua.edu.ng',(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA/SEN/102','Mr Ahmed Musa','a.musa@vua.edu.ng',(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA/CSC/101','Mrs Chidinma Julliet','c.julliet@vua.edu.ng',(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('VUA/CSC/102','Dr Adam Temi','a.temi@vua.edu.ng',(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('VUA/AIN/101','Dr Don john','d.john@vua.edu.ng',(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('VUA/AIN/102','Mr Eberechi Jerry','e.jerry@vua.edu.ng',(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('VUA/DTS/101','Dr Okechukwu Ebube','o.ebube@vua.edu.ng',(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('VUA/DTS/102','Mr Okere Stella','o.stella@vua.edu.ng',(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('VUA/CYB/101','Dr Okoye Kings','k.okoye@vua.edu.ng',(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('VUA/CYB/102','Dr Ibrahim Ahmed','a.ahmed@vua.edu.ng',(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));

INSERT INTO Student (matric_no, full_name, gender, date_of_birth, dept_id) VALUES
('VUA/SEN/26/101', 'Abraham Abubaka', 'M', '2007-03-14', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA/SEN/26/102', 'Amarachi Chidozie', 'F', '2008-08-11', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA/SEN/26/103', 'Chidinma Emrald', 'F', '2009-11-11', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA/SEN/26/104', 'David Chimaobi', 'M', '2007-06-14', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA/CYB/26/101', 'Adam Temi', 'M', '2009-03-25', (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('VUA/CYB/26/102', 'Angel Femi', 'F', '2008-01-26', (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('VUA/CYB/26/103', 'Ben Emrald', 'F', '2007-04-23', (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('VUA/CYB/26/104', 'Chika Pius', 'M', '2008-05-18', (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('VUA/DTS/26/101', 'Ada Chinwe', 'F', '2009-02-14', (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('VUA/DTS/26/102', 'Chinedu Emmanuel', 'M', '2008-03-05', (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('VUA/DTS/26/103', 'Daniel Chika', 'M', '2007-10-02', (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('VUA/DTS/26/104', 'Grace Precious', 'F', '2009-12-08', (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('VUA/AIN/26/101', 'George Precious', 'F', '2005-03-14', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('VUA/AIN/26/102', 'henry james', 'M', '2009-04-17', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('VUA/AIN/26/103', 'Ibrahim Ahmed', 'M', '2008-06-17', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('VUA/AIN/26/104', 'Chiwendu Uche', 'F', '2007-06-17', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('VUA/CSC/26/101', 'John Uche', 'M', '2008-05-14', (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('VUA/CSC/26/102', 'Ogene paul', 'F', '2009-06-16', (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('VUA/CSC/26/103', 'Onyedika jerry', 'M','2008-09-19', (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('VUA/CSC/26/104', 'Praise Benjamin', 'F','2007-10-25', (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science'));


INSERT INTO Enrolment (student_id, course_id) VALUES
(3,1),(4,1),(5,1),(6,1),(20,1),
(3,2),(4,2),(5,2),(6,2),(19,2),
(4,3),(21,3),(22,3),(20,3),(19,3),
(7,4),(8,4),(9,4),(10,4),(22,4),
(15,5),(16,5),(17,5),(14,5),(21,5),
(15,6),(16,6),(17,6),(3,6),(20,6),
(15,7),(16,7),(17,7),(11,7),(12,7),
(11,8),(12,8),(14,8),(6,8),(4,8),
(11,9),(12,9),(14,9),(19,9),(15,9),
(7,10),(8,10),(9,10),(10,10),(3,10);


INSERT INTO CourseAllocation (course_id, lecturer_id) VALUES
(1, 1), (1, 2), (2, 1),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,8),(9,1),(10,10);

SET SQL_SAFE_UPDATES = 0;
SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = 'VUA/SEN/26/102';
UPDATE Student SET dept_id = 2 WHERE matric_no = 'VUA/SEN/26/102';
SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = 'VUA/SEN/26/102';
SET SQL_SAFE_UPDATES = 1;




INSERT INTO Department (dept_name) VALUES ('Library and Information Science');

INSERT INTO Student (matric_no, full_name, dept_id)
VALUES ('20239999', 'Transfer Student',
(SELECT dept_id FROM Department WHERE dept_name = 'Library and Information Science'));

UPDATE Student
SET dept_id = (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')
WHERE matric_no = '20239999';

DELETE FROM Department WHERE dept_name = 'Library and Information Science';



	

SELECT 'Departments' AS tbl, COUNT(*) AS total FROM Department
UNION ALL SELECT 'Lecturers', COUNT(*) FROM Lecturer
UNION ALL SELECT 'Students', COUNT(*) FROM Student
UNION ALL SELECT 'Courses', COUNT(*) FROM Course
UNION ALL SELECT 'Enrolments', COUNT(*) FROM Enrolment
UNION ALL SELECT 'Allocations', COUNT(*) FROM CourseAllocation;

