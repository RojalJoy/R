#Load the dataset from "employee_data.csv" into a data frame in R.
employee_data<-read.csv("employee_data.csv")
print(employee_data)
df<-data.frame(employee_data)
df
#Display the structure of the data frame, including column names and data types.
str(df)

#Calculate and add a new column named "Years of Service" to the data frame, representing the number of years each employee has worked in the company.
Years_of_Service<-c(10,5,2,4,13,5,6,5,8,10)
df<-cbind(df,Years_of_Service)

#Create a new data frame named "Senior Employees" containing records of employees who have worked for the company for 5 or more years.
s=subset(df,Years_of_Service>5)
Senior_Employees<-data.frame(s)
Senior_Employees

#Calculate and print the average salary of employees in each department
mean(df$Salary)

#Determine the highest and lowest salaries in the entire dataset and identify the employees with these salaries.
low=min(df$Salary)
subset(df,df$Salary==low)

high=max(df$Salary)
subset(df,df$Salary==high)

#Create a bar plot to visualize the number of employees in each department.
barplot(table(df$Department),
        main="Number of employess in each department",
        xlab = "Department",
        ylab = "Number of Employees",
        col=rainbow(length(unique(df$Department))))

#Generate a scatter plot to explore the relationship between years of service and salary.
plot(df$Years_of_Service,df$Salary,
     main="The relationship between years of service and salary",
     xlab="Years of service",
     ylab="Salary",
     pch=16,
     col="red"
     )

#Save the "Senior Employees" data frame as a CSV file named "senior_employees.csv."
write.csv(Senior_Employees,"senior_employees.csv.",row.names = FALSE)

