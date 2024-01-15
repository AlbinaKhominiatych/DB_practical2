--Виведіть студентів та їх відповідних викладачів.
CREATE TABLE Students_Subjects(
	subject_id INT,
	student_id INT, 
	--PRIMARY KEY (subject_id, teacher_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(Id),
	FOREIGN KEY (student_id) REFERENCES Theachers(Id)
);
-- Add some records to Students_Subjects
INSERT INTO Students_Subjects (subject_id, student_id) VALUES
    (1, 1), -- Student 1 studies Mathematics
    (2, 2), -- Student 2 studies Physics
    (3, 3), -- Student 3 studies Chemistry
    (4, 4), -- Student 4 studies Biology
    (5, 5), -- Student 5 studies English
    (1, 2), -- Student 2 also studies Mathematics
    (2, 3), -- Student 3 also studies Physics
    (3, 4), -- Student 4 also studies Chemistry
    (4, 5), -- Student 5 also studies Biology
    (5, 1); -- Student 1 also studies English
	
SELECT Students.student_name, Theachers.teacher_name
FROM Theachers
JOIN Theachers_Subjects ON Theachers_Subjects.teacher_id = Theachers.id
JOIN Students_Subjects ON Students_Subjects.subject_id = Theachers_subjects.subject_id
JOIN Students ON Students.student_id = students_subjects.student_id
