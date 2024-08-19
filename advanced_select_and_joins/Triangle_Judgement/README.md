## 610. Triangle Judgement

Table: Triangle

| Column Name | Type |
|-------------|------|
| x           | int  |
| y           | int  |
| z           | int  |

In SQL, `(x, y, z)` is the primary key column for this table.  
Each row of this table contains the lengths of three line segments.

To determine if the three line segments can form a triangle, the sum of the lengths of any two sides must be greater than the length of the remaining side.

### Example 1:

Input:  
Triangle table:

| x  | y  | z  |
|----|----|----|
| 13 | 15 | 30 |
| 10 | 20 | 15 |

Output:

| x  | y  | z  | triangle |
|----|----|----|----------|
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |

Explanation:
- For the first row (13, 15, 30), the condition is not met because \(13 + 15 = 28\) which is less than 30.
- For the second row (10, 20, 15), the condition is met because \(10 + 20 > 15\), \(10 + 15 > 20\), and \(20 + 15 > 10\).
