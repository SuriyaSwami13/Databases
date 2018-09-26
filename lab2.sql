select * from details;

#1
select * from details where age < 40 or age > 50; 
#2
select * from details where hours BETWEEN 10 and 15;
#3 
select * from details where firstname LIKE '%e%';
#4
select * from details where firstname LIKE '_u%';
#5a
select * from details where firstname like '%n' and length(firstname)=4;
#5b
select * from details where firstname like 'J%' and length(firstname)=4; 
#5c
select * from details firstname where length(firstname)=3;
#5d
select * from details firstname where length(firstname) > 4;
#6
select * from details where age like '%3%' and gender='F';
#7
SELECT COUNT(*) from details where gender = 'F';
#8
SELECT COUNT(*) from details where gender = 'M';
#9
select round(AVG(age),0) as 'AvgFemaleAge' from details where gender = 'F';
#10
select AVG(age) from details where gender = 'M';
#11
select firstname, lastname,age from details where age = (select min(age) from details);
#12
select min(age) from details;
#13
select AVG(hours) from details;
#14
select sum(rate*hours) from details where gender='F';
#15
select sum(rate*hours) from details where gender='M';
#16
select department,avg(age) from details group by department; 
#17
select position,avg(age) from details group by department; 