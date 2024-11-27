use assignment_3;
CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Age INT NOT NULL,CHECK (Age >= 18 AND Age <= 65));
ALTER TABLE Managers 
ADD Gender VARCHAR(10) NOT NULL,
 add   Department VARCHAR(50) NOT NULL,
 add   Salary DECIMAL(10, 2) NOT NULL;
 
 INSERT INTO Managers (Manager_Id, First_Name, Last_Name, DOB, Age, Gender, Department, Salary)
VALUES
(1, 'John', 'Doe', '1985-03-15', 39, 'Male', 'HR', 35000),
(2, 'Emma', 'Stone', '1990-07-22', 34, 'Female', 'Finance', 45000),
(3, 'Aaliya', 'Khan', '1992-05-10', 32, 'Female', 'IT', 60000),  -- Aaliya included here
(4, 'David', 'Smith', '1980-11-03', 44, 'Male', 'Marketing', 50000),
(5, 'Michael', 'Brown', '1975-01-25', 49, 'Male', 'Operations', 75000),
(6, 'Olivia', 'Johnson', '1991-02-14', 33, 'Female', 'Sales', 28000),
(7, 'Ethan', 'Williams', '1988-09-12', 36, 'Male', 'Finance', 42000),
(8, 'Sophia', 'Davis', '1994-12-01', 30, 'Female', 'HR', 25000),
(9, 'Lucas', 'Miller', '1987-04-17', 37, 'Male', 'IT', 55000),
(10, 'Isabella', 'Moore', '1993-10-28', 31, 'Female', 'Operations', 62000);

SELECT First_Name, Last_Name, DOB #Write a query that retrieves the name and date of birth of the manager with Manager_Id 1
FROM Managers
WHERE Manager_Id = 1;

SELECT First_Name, Last_Name, Salary * 12 AS Annual_Income # Write a query to display the annual income of all managers.
FROM Managers;

SELECT * #Write a query to display records of all managers except ‘Aaliya’.
FROM Managers
WHERE First_Name = 'Aaliya';

SELECT * # managers whose department is IT and earns more than 25000 per month
FROM Managers
WHERE Department = 'IT' 
  AND Salary > 25000;
  
  SELECT * #managers whose salary is between 10000 and 35000.
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;







