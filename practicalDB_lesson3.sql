CREATE TABLE Theachers(
    Id SERIAL PRIMARY KEY,
	teacher_name VARCHAR(100)
);

CREATE TABLE Subjects(
    Id SERIAL PRIMARY KEY,
	subject_name VARCHAR(100),
	subject_hours INT,
	subject_title TEXT
);

CREATE TABLE Theachers_Subjects(
	subject_id INT,
	teacher_id INT, 
	--PRIMARY KEY (subject_id, teacher_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(Id),
	FOREIGN KEY (teacher_id) REFERENCES Theachers(Id)
);
-- Add teachers
INSERT INTO Theachers (teacher_name) VALUES
    ('Teacher A'),
    ('Teacher B'),
    ('Teacher C'),
    ('Teacher D'),
    ('Teacher E');

-- Add subjects
INSERT INTO Subjects (subject_name, subject_hours, subject_title) VALUES
    ('Mathematics', 40, 'Algebra'),
    ('Physics', 30, 'Mechanics'),
    ('Chemistry', 35, 'Organic Chemistry'),
    ('Biology', 30, 'Genetics'),
    ('English', 25, 'Literature');

-- Link teachers to subjects
INSERT INTO Theachers_Subjects (teacher_id, subject_id) VALUES
    (1, 1), -- Teacher A teaches Mathematics
    (2, 2), -- Teacher B teaches Physics
    (3, 3), -- Teacher C teaches Chemistry
    (4, 4), -- Teacher D teaches Biology
    (5, 5), -- Teacher E teaches English
    (1, 2), -- Teacher A also teaches Physics
    (2, 3), -- Teacher B also teaches Chemistry
    (3, 4), -- Teacher C also teaches Biology
    (4, 5), -- Teacher D also teaches English
    (5, 1); -- Teacher E also teaches Mathematics
