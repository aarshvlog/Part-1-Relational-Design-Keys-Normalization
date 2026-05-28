# Schema Understanding Document

## 1. students.csv

Represents all registered students on the CodeJudge platform.

### Important Columns
| Column | Meaning |
|--------|---------|
| student_id | Unique student identifier |
| name | Student full name |
| email | Student email |
| batch_id | Batch assigned to student |
| phone | Contact number |

### Observations
- email should be unique
- batch information repeats across many students
- batch details should be separated into another table

---

## 2. batches.csv

Stores academic batch information.

| Column | Meaning |
|--------|---------|
| batch_id | Unique batch ID |
| batch_name | Batch title |
| start_date | Batch start date |

### Observations
- batch_id uniquely identifies records
- used to connect with students table

---

## 3. courses.csv

Contains available courses.

| Column | Meaning |
|--------|---------|
| course_id | Unique course ID |
| course_name | Name of course |
| duration | Course duration |

---

## 4. enrollments.csv

Represents student enrollment into courses.

| Column | Meaning |
|--------|---------|
| enrollment_id | Enrollment record |
| student_id | Student reference |
| course_id | Course reference |
| enrolled_on | Enrollment date |

### Observations
- many-to-many relationship between students and courses
- composite uniqueness needed on (student_id, course_id)

---

## 5. problems.csv

Stores coding problems.

| Column | Meaning |
|--------|---------|
| problem_id | Unique problem |
| title | Problem title |
| difficulty | Easy/Medium/Hard |

---

## 6. submissions.csv

Stores all coding submissions.

| Column | Meaning |
|--------|---------|
| submission_id | Unique submission |
| student_id | Submitted by |
| problem_id | Problem attempted |
| language | Programming language |
| verdict | Accepted/Wrong Answer |
| submitted_at | Timestamp |

### Observations
- repeated student and problem details should not be stored again
- foreign keys required

---

## 7. test_cases.csv

Stores hidden/public test cases for problems.

| Column | Meaning |
|--------|---------|
| testcase_id | Unique testcase |
| problem_id | Related problem |
| input_data | Input |
| expected_output | Expected output |

---

## 8. contests.csv

Stores contest details.

| Column | Meaning |
|--------|---------|
| contest_id | Contest ID |
| contest_name | Contest title |
| start_time | Start time |
| end_time | End time |

---

## 9. contest_problems.csv

Maps contests to problems.

### Purpose
One contest can contain many problems and one problem may appear in multiple contests.

### Composite Key
(contest_id, problem_id)

---

## 10. attendance.csv

Stores session attendance.

| Column | Meaning |
|--------|---------|
| attendance_id | Unique attendance |
| student_id | Student reference |
| session_id | Session reference |
| status | Present/Absent |

---

## 11. plagiarism_flags.csv

Stores plagiarism detection results.

| Column | Meaning |
|--------|---------|
| flag_id | Unique flag |
| submission_id | Suspicious submission |
| similarity_score | Matching percentage |

---

## General Observations

### Repeated Data
- batch names repeated in students
- course names repeated in enrollments
- problem details repeated in submissions

### Non-Normalized Areas
- storing course names directly in enrollment data
- storing batch details in student records
- storing contest problem titles repeatedly
