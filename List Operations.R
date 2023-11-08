# Create a list named employee representing the details of an employee with the following components:
# EmployeeID: A unique employee identifier (as a numeric value).
# Name: The employee's full name (as a string).
# Salary: The employee's monthly salary (as a numeric value).
# Departments: A vector containing the names of the departments the employee is associated with (as strings).
# Display the entire content of the employee list.
employee<-list(01,"Anita",500,c("Marketing","Management","Sales","Devolpement"))
employee

names(employee)=c("EmployeeID","Name","Salary","Departments")
employee

#Calculate and print the employee's annual salary (12 times the monthly salary).
annual_salary<-employee$Salary*12
annual_salary

#Update the employee's name to a different name.
employee[2]="Rose"
employee

#Add a new department to the Departments vector for the employee.
employee$Departments<-c(employee$Departments,"IT")
employee

#Create a list named organization to represent an organization with the following components:
#Name: The name of the organization (as a string).
#Employees: A list containing details of at least three employees, using the structure created in Task 1
emp1<-list("EmployeeID"= 01,"Name"="Anita","Salary"=500,"Departments"=c("Marketing","Management","Sales","Devolpement"))
emp2<-list("EmployeeID"= 02,"Name"="Rose","Salary"=600,"Departments"=c("Marketing","Management","Devolpement"))
emp3<-list("EmployeeID"= 03,"Name"="Tincy","Salary"=800,"Departments"=c("Marketing","Management","Sales","Devolpement"))

#Display the entire content of the nested list organization.
organization<-list(Name="AXC","Employees"=list(emp1,emp2,emp3))
organization

#Access and print the annual salary of the second employee in the organization.
print(organization$Employees[[2]]$Salary*12)

#Access and print the name of the organization.
print(organization$Name)

#Create a new list named department_employees that groups employees by department. Each department should have a list of employees associated with it.
department_employees <- list()
for(emp in organization$Employees)
{
  dept=emp$Departments
  for(d in dept)
  {
    if(is.null(department_employees[[d]]))
    { department_employees[[d]]=list(emp)}
    else
    { department_employees[[d]]=c(department_employees[[d]],list(emp))}
  }
}
department_employees

#Print each list created in the script to show the structure and content of the lists after performing the operations in Tasks 1-5.
print("Structure and content of employee")
str(employee)
print(employee)

print("Structure and content of emp1")
str(emp1)
print(emp1)

print("Structure and content of emp2")
str(emp2)
print(emp2)

print("Structure and content of emp3")
str(emp3)
print(emp3)

print("Structure and content of organization")
str(organization)
print(organization)

#Also, print the department_employees list to demonstrate how employees are grouped by department.
print("Structure and content of department_employees")
str(department_employees)
print(department_employees)

