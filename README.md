# A Mystery in Two Parts

![sql.png](sql.png)

## Background

In this project I demonstrate my SQL skills.  I conduct a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

In this assignment, I designed the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data.

1. Data Engineering

3. Data Analysis

#### Data Modeling

First I inspect the CSVs and sketch out an ERD of the tables. I used a free tool to design the ERD [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

#### Data Engineering

* I created a table schema for each of the six CSV files. Specifed are the data types, primary keys, foreign keys, and other constraints.

  * For the primary keys I checked to see if the column is unique, otherwise created a [composite key](https://en.wikipedia.org/wiki/Compound_key). Which takes to primary keys in order to uniquely identify a row.
  * I created tables in the correct order to handle foreign keys.

* I Imported each CSV file into the corresponding SQL table. **Note** I imported the data in the same order that the tables were created and account for the headers when importing to avoid errors.

#### Data Analysis

After the DB was built, I did the following steps:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Additional steps:

As I examined the data, I wanted to ensure the dataset was not fake.  I took the following steps to generate a visualization of the data:

1. Import the SQL database into Pandas. 

2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.