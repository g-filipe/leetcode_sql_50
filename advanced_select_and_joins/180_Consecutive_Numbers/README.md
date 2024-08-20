## 180. Consecutive Numbers

Table: Logs

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| num         | varchar |

In SQL, `id` is the primary key for this table and is an autoincrement column.

To find all numbers that appear at least three times consecutively, you need to check for sequences of the same number appearing in a row. Specifically, you need to identify numbers that have at least three consecutive rows with the same `num` value.

### Example 1:

Input:  
Logs table:

| id | num |
|----|-----|
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |

Output:

| ConsecutiveNums |
|-----------------|
| 1               |

Explanation:
- The number 1 appears consecutively at rows 1, 2, and 3.
- The number 2 does not appear consecutively three times; it only appears consecutively at rows 6 and 7.