# Keys and Constraints

## Students Table

### Primary Key
student_id

Reason:
Uniquely identifies every student.

### Candidate Keys
- student_id
- email

### Alternate Key
email

### Constraints
- email UNIQUE
- name NOT NULL

---

## Courses Table

### Primary Key
course_id

### Constraints
- course_name UNIQUE
- duration CHECK(duration > 0)

---

## Enrollments Table

### Primary Key
enrollment_id

### Foreign Keys
- student_id REFERENCES students(student_id)
- course_id REFERENCES courses(course_id)

### Composite Unique Key
(student_id, course_id)

Reason:
A student should not enroll twice in same course.

---

## Problems Table

### Primary Key
problem_id

### CHECK Constraint
difficulty IN ('Easy', 'Medium', 'Hard')

---

## Submissions Table

### Primary Key
submission_id

### Foreign Keys
- student_id
- problem_id

### Constraints
- verdict NOT NULL
- language NOT NULL

---

## Contest_Problems Table

### Composite Primary Key
(contest_id, problem_id)

Reason:
Avoid duplicate mappings.

### Foreign Keys
- contest_id REFERENCES contests(contest_id)
- problem_id REFERENCES problems(problem_id)

---

## Test Cases Table

### Primary Key
testcase_id

### Foreign Key
problem_id REFERENCES problems(problem_id)

---

## Attendance Table

### Composite Unique Key
(student_id, session_id)

Reason:
One attendance entry per session.
