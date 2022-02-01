-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/fqLKyL
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

-- SQL-Challenge
-- AUG 2021
-- GT Bootcamp
CREATE TABLE [Departments] (
    [dept_no] VARCHAR(10)  NOT NULL ,
    [dept_name] VARCHAR(30)  NOT NULL ,
    CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED (
        [dept_no] ASC
    )
)

CREATE TABLE [Titles] (
    [title_id] VARCHAR(10)  NOT NULL ,
    [title] VARCHAR(20)  NOT NULL ,
    CONSTRAINT [PK_Titles] PRIMARY KEY CLUSTERED (
        [title_id] ASC
    )
)

CREATE TABLE [Employees] (
    [emp_no] INT  NOT NULL ,
    [emp_title_id] VARCHAR(10)  NOT NULL ,
    [birth_data] DATE  NOT NULL ,
    [First_Name] VARCHAR(20)  NOT NULL ,
    [Last_Name] VARCHAR(20)  NOT NULL ,
    [sex(2)] VARCHAR(2)  NOT NULL ,
    [hire_date] DATE  NOT NULL ,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED (
        [emp_no] ASC
    )
)

CREATE TABLE [Salaries] (
    [emp_no] int  NOT NULL ,
    [salary] int  NOT NULL 
)

CREATE TABLE [Dept_managers] (
    [dept_no] VARCHAR(10)  NOT NULL ,
    [emp_no] INT  NOT NULL 
)

CREATE TABLE [Dept_emp] (
    [emp__no] int  NOT NULL ,
    [dept_no] VARCHAR(10)  NOT NULL 
)

ALTER TABLE [Titles] WITH CHECK ADD CONSTRAINT [FK_Titles_title_id] FOREIGN KEY([title_id])
REFERENCES [Employees] ([emp_title_id])

ALTER TABLE [Titles] CHECK CONSTRAINT [FK_Titles_title_id]

ALTER TABLE [Employees] WITH CHECK ADD CONSTRAINT [FK_Employees_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Salaries] ([emp_no])

ALTER TABLE [Employees] CHECK CONSTRAINT [FK_Employees_emp_no]

ALTER TABLE [Dept_managers] WITH CHECK ADD CONSTRAINT [FK_Dept_managers_dept_no] FOREIGN KEY([dept_no])
REFERENCES [Departments] ([dept_no])

ALTER TABLE [Dept_managers] CHECK CONSTRAINT [FK_Dept_managers_dept_no]

ALTER TABLE [Dept_managers] WITH CHECK ADD CONSTRAINT [FK_Dept_managers_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Employees] ([emp_no])

ALTER TABLE [Dept_managers] CHECK CONSTRAINT [FK_Dept_managers_emp_no]

ALTER TABLE [Dept_emp] WITH CHECK ADD CONSTRAINT [FK_Dept_emp_emp__no] FOREIGN KEY([emp__no])
REFERENCES [Employees] ([emp_no])

ALTER TABLE [Dept_emp] CHECK CONSTRAINT [FK_Dept_emp_emp__no]

ALTER TABLE [Dept_emp] WITH CHECK ADD CONSTRAINT [FK_Dept_emp_dept_no] FOREIGN KEY([dept_no])
REFERENCES [Departments] ([dept_no])

ALTER TABLE [Dept_emp] CHECK CONSTRAINT [FK_Dept_emp_dept_no]

COMMIT TRANSACTION QUICKDBD