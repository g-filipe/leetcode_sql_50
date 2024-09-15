## 176. Second Highest Salary
### Difficulty: Medium

<br>



**Table: Employee**

| Column Name | Type |
|-------------|------|
| id          | int  |
| salary      | int  |
<br>

id is the primary key (column with unique values) for this table.
Each row of this table contains information about the salary of an employee.




Write a solution to findthe second highest distinct salary from the Employee table. If there is no second highest salary,returnnull (returnNone in Pandas).

The result format is in the following example.


**Example 1:**

**Input:** 


**Employee table:**


| id | salary |
|----|--------|
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
<br>

**Output:** 


| SecondHighestSalary |
|---------------------|
| 200                 |
<br>



**Example 2:**

**Input:** 


**Employee table:**


| id | salary |
|----|--------|
| 1  | 100    |
<br>

**Output:** 


| SecondHighestSalary |
|---------------------|
| null                |
<br>


