# Implement a class Employee with attributes name, position, and salary. 
# Add a method to give a raise to the employee's salary.

class Employee
    attr_accessor :name, :position, :salary

    def initialize(name, position, salary)
        @name = name
        @position = position
        @salary = salary
    end

    def raise_salary(amount)
        @salary += amount
        "Salary raised to RM #{@salary}"
    end
end

employee = Employee.new("Rei", "Software Engineer", 5020)

puts employee.name
puts employee.position
puts employee.salary
puts employee.raise_salary(684)
puts employee.salary