let titles = [

"Sorting and Grouping", "2356. Number of Unique Subjects Taught by Each Teacher", "1141. User Activity for the Past 30 Days I", "1070. Product Sales Analysis III", "596. Classes More Than 5 Students", "1729. Find Followers Count", "619. Biggest Single Number", "1045. Customers Who Bought All Products",
"Advanced Select and Joins", "1731. The Number of Employees Which Report to Each Employee", "1789. Primary Department for Each Employee", "610. Triangle Judgement", "180. Consecutive Numbers", "1164. Product Price at a Given Date", "1204. Last Person to Fit in the Bus", "1907. Count Salary Categories",
"Subqueries", "1978. Employees Whose Manager Left the Company", "626. Exchange Seats", "1341. Movie Rating", "1321. Restaurant Growth", "602. Friend Requests II: Who Has the Most Friends", "585. Investments in 2016", "185. Department Top Three Salaries",
"Advanced String Functions / Regex / Clause", "1667. Fix Names in a Table", "1527. Patients With a Condition", "196. Delete Duplicate Emails", "176. Second Highest Salary", "1484. Group Sold Products By The Date", "1327. List the Products Ordered in a Period", "1517. Find Users With Valid E-Mails"
]

function transformeTitles(titles) {
  return titles.map(title => title.replaceAll(' ', '_'))
}

let transformedTitles = transformeTitles(titles)

console.log(transformedTitles)