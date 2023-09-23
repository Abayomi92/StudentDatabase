--Creating Student_Demographics and Student_Grades Table

Create Table Student_Demographics
(Student_ID int, First_Name varchar(50), Last_Name varchar(50),
Gender varchar(50), Age int)

Create Table Student_Grades 
(Student_ID int, Department varchar(50), Exam_Scores int)

--Inserting Data into Student_Demographics and Student_Grades

Insert Into Student_Demographics Values
(1001, 'Samuel', 'Adams', 'Male', 27),
(1002, 'Blessing', 'John', 'Female', 18),

Insert Into Student_Grades Values
(1001, 'Business_Management', 74),
(1002, 'Medicine', 82)

--Selecting data from Database

Select*
From Student_Grades

Select* 
From Student_Demographics

Select Top 5*
From Student_Demographics

Select Distinct 'Chioma'
From Student_Demographics

Select Max(Exam_scores) Maxscore
From Student_Grades

Select Avg(Exam_Scores) AvgScore
From Student_Grades

Select Sum(Exam_Scores/10)
From Student_Grades

--Join Table

Select First_Name, Last_Name, Gender, Age, Department, Exam_Scores
From Student_Demographics Demo
Join Student_Grades Grade
On Demo.Student_ID = Grade.Student_ID
Order by First_Name Asc

