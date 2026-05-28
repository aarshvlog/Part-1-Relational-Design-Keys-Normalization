# CodeJudge Database Design – Part 1

## Objective
This project converts the raw CodeJudge CSV dataset into a normalized relational database schema.

The work includes:
- schema understanding
- entity identification
- key and constraint analysis
- normalization reasoning
- SQL schema creation
- ERD design

## Files Included

| File | Description |
|------|-------------|
| schema.sql | SQL DDL for database creation |
| schema_explanation.md | Explanation of raw CSV schema |
| keys_and_relationships.md | PK/FK/candidate/composite key reasoning |
| normalization_notes.md | Normalization analysis |
| assumptions.md | Assumptions made during design |
| erd.md | ERD and relationship diagram |

## Main Entities
- Students
- Courses
- Batches
- Problems
- Contests
- Submissions
- Test Cases
- Attendance
- Regrade Requests
- Plagiarism Flags


## Database Design Goals
- Reduce redundancy
- Ensure referential integrity
- Support scalability
- Maintain normalized structure


## codejudge-dbms-part1/

-├── README.md
-── schema.sql
-├── schema_explanation.md
-├── keys_and_relationships.md
-├── normalization_notes.md
-├── assumptions.md
-└── erd.md
