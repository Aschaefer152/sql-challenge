-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Employees] (
    [emp_no] INT  NOT NULL ,
    [emp_title] VARCHAR  NOT NULL ,
    [birth_date] VARCHAR  NOT NULL ,
    [first_name] VARCHAR  NOT NULL ,
    [last_name] VARCHAR  NOT NULL ,
    [sex] VARCHAR  NOT NULL ,
    [hire_date] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED (
        [emp_no] ASC
    )
)

CREATE TABLE [Salaries] (
    [emp_no] INT  NOT NULL ,
    [salary] INETGER  NOT NULL 
)

CREATE TABLE [Titles] (
    [title] VARCHAR  NOT NULL ,
    [title_id] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_Titles] PRIMARY KEY CLUSTERED (
        [title_id] ASC
    )
)

CREATE TABLE [Departments] (
    [dept_name] VARCHAR  NOT NULL ,
    [dept_no] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED (
        [dept_no] ASC
    )
)

CREATE TABLE [Department_Manager] (
    [dept_no] VARCHAR  NOT NULL ,
    [emp_no] INT  NOT NULL 
)

CREATE TABLE [Employee_Department] (
    [emp_no] INT  NOT NULL ,
    [dept_no] VARCHAR  NOT NULL 
)

ALTER TABLE [Employees] WITH CHECK ADD CONSTRAINT [FK_Employees_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Salaries] ([emp_no])

ALTER TABLE [Employees] CHECK CONSTRAINT [FK_Employees_emp_no]

ALTER TABLE [Employees] WITH CHECK ADD CONSTRAINT [FK_Employees_emp_title] FOREIGN KEY([emp_title])
REFERENCES [Titles] ([title_id])

ALTER TABLE [Employees] CHECK CONSTRAINT [FK_Employees_emp_title]

ALTER TABLE [Departments] WITH CHECK ADD CONSTRAINT [FK_Departments_dept_no] FOREIGN KEY([dept_no])
REFERENCES [Department_Manager] ([dept_no])

ALTER TABLE [Departments] CHECK CONSTRAINT [FK_Departments_dept_no]

ALTER TABLE [Department_Manager] WITH CHECK ADD CONSTRAINT [FK_Department_Manager_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Employees] ([emp_no])

ALTER TABLE [Department_Manager] CHECK CONSTRAINT [FK_Department_Manager_emp_no]

ALTER TABLE [Employee_Department] WITH CHECK ADD CONSTRAINT [FK_Employee_Department_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Employees] ([emp_no])

ALTER TABLE [Employee_Department] CHECK CONSTRAINT [FK_Employee_Department_emp_no]

COMMIT TRANSACTION QUICKDBD