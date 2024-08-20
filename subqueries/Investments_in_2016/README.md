## 585. Investments in 2016

Table: Insurance

| Column Name | Type  |
|-------------|-------|
| pid         | int   |
| tiv_2015    | float |
| tiv_2016    | float |
| lat         | float |
| lon         | float |

- `pid` is the primary key (column with unique values) for this table.
- Each row of this table contains information about one policy:
    - `pid` is the policyholder's policy ID.
    - `tiv_2015` is the total investment value in 2015.
    - `tiv_2016` is the total investment value in 2016.
    - `lat` is the latitude of the policyholder's city (guaranteed to not be NULL).
    - `lon` is the longitude of the policyholder's city (guaranteed to not be NULL).

Write a solution to report the sum of all total investment values in 2016 (`tiv_2016`), for all policyholders who:
1. Have the same `tiv_2015` value as one or more other policyholders.
2. Are not located in the same city as any other policyholder (i.e., the `(lat, lon)` attribute pairs must be unique).

Round `tiv_2016` to two decimal places.

## Example

**Input:**

Insurance table:

| pid | tiv_2015 | tiv_2016 | lat | lon |
|-----|----------|----------|-----|-----|
| 1   | 10       | 5        | 10  | 10  |
| 2   | 20       | 20       | 20  | 20  |
| 3   | 10       | 30       | 20  | 20  |
| 4   | 10       | 40       | 40  | 40  |

**Output:**

| tiv_2016 |
|----------|
| 45.00    |

**Explanation:**

- The first and last records meet both criteria:
    1. The `tiv_2015` value (10) is the same as that of the third and fourth records.
    2. Their `(lat, lon)` pairs are unique (no other policyholder shares the same location).

- The second and third records do not meet the criteria:
    - The second record has a unique `tiv_2015` value and shares the same location as the third record.
    - The third record fails due to sharing the same location as the second.

Thus, the result is the sum of `tiv_2016` for the first and last records, which equals 45.00.
