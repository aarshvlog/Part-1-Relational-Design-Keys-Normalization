# ERD

students
- student_id (PK)
- batch_id (FK)

batches
- batch_id (PK)

courses
- course_id (PK)

enrollments
- enrollment_id (PK)
- student_id (FK)
- course_id (FK)

problems
- problem_id (PK)

test_cases
- testcase_id (PK)
- problem_id (FK)

submissions
- submission_id (PK)
- student_id (FK)
- problem_id (FK)

contests
- contest_id (PK)

contest_problems
- contest_id (FK)
- problem_id (FK)

plagiarism_flags
- flag_id (PK)
- submission_id (FK)

Relationships:

batches 1 ----- * students

students * ----- * courses
(using enrollments)

students 1 ----- * submissions

problems 1 ----- * submissions

problems 1 ----- * test_cases

contests * ----- * problems
(using contest_problems)

submissions 1 ----- * plagiarism_flags
