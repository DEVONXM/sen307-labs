Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`sen307_11438`.`student`, CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`))

it was fixed by moving the student in the department to a different department