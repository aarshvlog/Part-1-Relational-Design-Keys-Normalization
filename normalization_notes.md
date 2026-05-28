# Normalization Notes

## Example 1: Batch Data Redundancy

### Problem
Batch name repeated for every student.

### Solution
Create separate batches table.

### Benefit
- reduces redundancy
- easier updates

---

## Example 2: Course Details in Enrollments

### Problem
Course information repeated in enrollment records.

### Solution
Separate courses table.

### Functional Dependency
course_id → course_name, duration

---

## Example 3: Problem Details in Submissions

### Problem
Problem title stored repeatedly in submissions.

### Solution
Store only problem_id.

---

# Functional Dependencies

## Students
student_id → name, email, batch_id

## Courses
course_id → course_name, duration

## Problems
problem_id → title, difficulty

---

# Partial Dependency Example

In contest_problems:
(contest_id, problem_id) is composite key.

No non-key attribute should depend on only one part.

---

# Normal Form Analysis

## 1NF
- Atomic values used
- No repeating groups

## 2NF
- No partial dependency on composite keys

## 3NF
- Non-key attributes depend only on primary keys

---

# Trade-offs

- Some denormalization may improve reporting speed
- Keeping verdict text in submissions improves readability
