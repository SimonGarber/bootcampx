CREATE TABLE assignments (
    id serial primary key NOT NULL,
    name VARCHAR(255),
    content TEXT,
    day INTEGER,
    chapter INTEGER,
    duration INTEGER 
);

CREATE TABLE assignment_submissions (
    id serial primary key NOT NULL,
    assignment_id INTEGER REFERENCES assignments(id) on DELETE CASCADE,
    student_id INTEGER REFERENCES students(id) on DELETE CASCADE,
    duration INTEGER,
    submission_date DATE 
);