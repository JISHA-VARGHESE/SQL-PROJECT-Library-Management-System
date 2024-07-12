
------------ Display all the tables and Write the queries for the following -------------
/* 1. Retrieve the book title, category, and rental price of all available books. */
SELECT Book_title,category,rental_price from books;

/*2. List the employee names and their respective salaries in descending order of salary.*/
SELECT Emp_name,salary from employee group by EMP_name,salary order by salary desc;

/* 3. Retrieve the book titles and the corresponding customers who have issued those books. */

SELECT Issued_book_name, (SELECT Customer_name FROM CUSTOMER WHERE Customer_Id = ISSUE_STATUS.Issued_cust) AS Customer_name
FROM ISSUE_STATUS;

/* 4. Display the total count of books in each category. */

SELECT Category, COUNT(*) AS Total_Books FROM BOOKS WHERE STATUS = 'YES'
GROUP BY Category;

/* 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. */
SELECT Emp_name, Position, Salary FROM EMPLOYEE WHERE Salary > 50000;

/*6. List the customer names who registered before 2022-01-01 and have not issued any books yet. */
SELECT Customer_name, reg_date FROM CUSTOMER 
WHERE reg_date < '2022-01-01' AND Customer_Id NOT IN (SELECT Issued_cust FROM ISSUE_STATUS);

/* 7. Display the branch numbers and the total count of employees in each branch.*/
select Branch_no, count(emp_Id) from employee GROUP BY Branch_no;

/* 8. Display the names of customers who have issued books in the month of June 2023. */

SELECT DISTINCT CUSTOMER.Customer_name,ISSUE_STATUS.issue_date 
FROM CUSTOMER INNER JOIN ISSUE_STATUS ON CUSTOMER.Customer_Id = ISSUE_STATUS.Issued_cust 
WHERE ISSUE_STATUS.Issue_date BETWEEN '2023-06-01' AND '2023-06-30' group by Customer_name,issue_date ;

/*9. Retrieve book_title from book table containing history. */
SELECT Book_title, category from books where category ='HISTORY';

 -------------  OR --------------	

SELECT Book_title from books where category ='HISTORY'; --- IF YOU WANT TO DISPLAY BOOK_TITLE ONLY--

/* 10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees */
SELECT Branch_no, COUNT(Emp_Id) AS Employee_Count 
FROM EMPLOYEE 
GROUP BY Branch_no 
HAVING COUNT(Emp_Id) > 5;
 /* ----- NOTE : WHERE clause: Filters individual rows based on specified conditions before 
                 they are grouped or aggregated.
                 HAVING clause: Filters grouped data, applying conditions to the results of 
                 aggregate functions after the GROUP BY operation has been performed.---- */

/* 11. Retrieve the names of employees who manage branches and their respective branch addresses.*/
SELECT BRANCH.Branch_no, EMPLOYEE.EMP_name,BRANCH.Branch_Address
 FROM EMPLOYEE JOIN BRANCH ON EMPLOYEE.Branch_no = BRANCH.Branch_no;


/* 12.  Display the names of customers who have issued books with a rental price higher than Rs. 25. */

 SELECT customer.customer_name,BOOKS.Rental_price FROM customer 
 JOIN issue_status ON customer.customer_id = issue_status.Issued_cust 
 JOIN books ON issue_status.isbn_book = books.ISBN 
WHERE books.rental_price > 25;  
