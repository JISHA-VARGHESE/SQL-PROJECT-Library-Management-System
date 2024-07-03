Library Management System

Overview

The Library Management System (LMS) project aims to optimize the management of library resources, including books, customers, employees, and library operations. It provides a comprehensive database structure with six main tables: Branch, Employee, Books, Customer, IssueStatus, and ReturnStatus. Each table is designed to store specific information essential for efficient library operations.

Features
1. Book Management
•	Book Catalog: Maintains a detailed catalog of all books available in the library, including ISBN, title, author, publisher, category, rental price, and availability status.
•	Availability Status: Tracks whether a book is available for borrowing or currently issued.
2. Customer Management
•	Customer Registration: Records customer details such as name, address, registration date, and maintains a unique identifier for each customer.
•	Issuance History: Tracks the books issued by each customer, including issue dates and due dates.
3. Employee Management
•	Employee Details: Stores employee information including employee ID, name, position, salary, and the branch they are associated with.
•	Branch Management: Manages branches of the library, including branch numbers, manager details, branch address, and contact information.
4. Issue and Return Management
•	Issuance: Records details of books issued to customers, including the customer ID, book details, and issue date.
•	Return: Tracks books returned by customers, including return dates and book details.
5. Reporting and Analytics
•	Book Category Count: Provides reports on the count of books available in each category.
•	Employee Count per Branch: Displays the total number of employees working in each branch.
•	Salary Analysis: Lists employees earning above a specified salary threshold.
•	Customer Engagement: Reports on customer activities such as books issued and returned.

Queries Implemented:
1.	Retrieve book title, category, and rental price of available books.
2.	List employee names and their salaries in descending order of salary.
3.	Display book titles and corresponding customers who have issued those books.
4.	Show total count of books in each category.
5.	Retrieve employee names and positions for those earning above Rs. 50,000.
6.	List customer names who registered before 2022-01-01 and have not issued any books yet.
7.	Display branch numbers and total employee count for each branch.
8.	Show names of customers who issued books in June 2023.
9.	Retrieve book titles categorized under "History".
10.	Display branch numbers with employee counts where more than 5 employees are present.
11.	Retrieve names of employees managing branches along with their branch addresses.
12.	Display names of customers who have issued books with rental prices higher than Rs. 25.
    
Technology Stack
•	Database: MySQL
•	Programming Language: SQL (Structured Query Language)
•	Environment: Designed to run on any platform with MySQL compatibility.
