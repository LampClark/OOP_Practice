# Create a class Student with attributes name and grades as an array. 
# Implement a method in the Student class to calculate the average grade.
require 'colorize'

class Student
    attr_accessor :name, :grades

    def initialize(name, grades)
        @name = name.light_cyan
        @grades = grades
    end

    def formatted_grades
        @grades.map { |grades| grades.to_s.light_red }
    end

    def average_grade
        @grades.sum / @grades.length.to_f
    end
end

student1 = Student.new("Rei", [87, 66, 86, 20, 50])
student2 = Student.new("Corvo", [76, 81, 91, 67, 65])

puts "Name: #{student1.name} | Grades: #{student1.formatted_grades.join(', ')}"
puts "#{student1.name}'s Average Grade: #{student1.average_grade}".light_green
puts "-----------------------------------------"
puts "Name: #{student2.name} | Grades: #{student2.formatted_grades.join(', ')}"
puts "#{student2.name}'s Average Grade: #{student2.average_grade}".light_green