# Assumptions

1. student_id, course_id, problem_id are globally unique.

2. One student cannot enroll in the same course multiple times.

3. Each submission belongs to exactly one student and one problem.

4. Difficulty levels are limited to:
- Easy
- Medium
- Hard

5. Similarity score ranges from 0 to 100.

6. CSV files may contain duplicates or inconsistent records.
Hence, staging/raw tables may be used before final insertion.

7. Contest-problem relationship is many-to-many.
