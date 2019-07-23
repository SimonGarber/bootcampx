create table teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  is_active BOOLEAN DEFAULT TRUE,
  start_date DATE,
  end_date DATE
);
  

create table assistance_requests (
    id serial primary key not null,
    assignment_id INTEGER REFERENCES assignments(id) on DELETE CASCADE,
    student_id INTEGER REFERENCES students(id) on DELETE CASCADE,
    teacher_id INTEGER REFERENCES teachers(id) on DELETE CASCADE,
    created_at TIMESTAMP,
    started_at TIMESTAMP,
    completed_at TIMESTAMP,
    student_feedback TEXT,
    teacher_feedback TEXT
);