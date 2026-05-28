CREATE TABLE batches (
    batch_id INT PRIMARY KEY,
    batch_name VARCHAR(100) NOT NULL UNIQUE,
    start_date DATE
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(20),
    batch_id INT,
    FOREIGN KEY (batch_id)
        REFERENCES batches(batch_id)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL UNIQUE,
    duration INT CHECK (duration > 0)
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrolled_on DATE NOT NULL,

    UNIQUE(student_id, course_id),

    FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    FOREIGN KEY (course_id)
        REFERENCES courses(course_id)
);

CREATE TABLE problems (
    problem_id INT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    difficulty VARCHAR(20)
        CHECK (difficulty IN ('Easy', 'Medium', 'Hard'))
);

CREATE TABLE test_cases (
    testcase_id INT PRIMARY KEY,
    problem_id INT NOT NULL,
    input_data TEXT NOT NULL,
    expected_output TEXT NOT NULL,

    FOREIGN KEY (problem_id)
        REFERENCES problems(problem_id)
);

CREATE TABLE contests (
    contest_id INT PRIMARY KEY,
    contest_name VARCHAR(100) NOT NULL,
    start_time TIMESTAMP,
    end_time TIMESTAMP
);

CREATE TABLE contest_problems (
    contest_id INT,
    problem_id INT,

    PRIMARY KEY (contest_id, problem_id),

    FOREIGN KEY (contest_id)
        REFERENCES contests(contest_id),

    FOREIGN KEY (problem_id)
        REFERENCES problems(problem_id)
);

CREATE TABLE submissions (
    submission_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    problem_id INT NOT NULL,
    language VARCHAR(30) NOT NULL,
    verdict VARCHAR(30) NOT NULL,
    submitted_at TIMESTAMP NOT NULL,

    FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    FOREIGN KEY (problem_id)
        REFERENCES problems(problem_id)
);

CREATE TABLE plagiarism_flags (
    flag_id INT PRIMARY KEY,
    submission_id INT NOT NULL,
    similarity_score DECIMAL(5,2)
        CHECK (similarity_score BETWEEN 0 AND 100),

    FOREIGN KEY (submission_id)
        REFERENCES submissions(submission_id)
);
