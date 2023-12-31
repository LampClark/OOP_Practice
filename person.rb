# Create a Ruby class called Person with attributes name and age. 
# Include a method to compare ages of two people.

require 'colorize'
class Person
    attr_accessor :name, :age
    
    def initialize(name, age)
        @name = name
        @age = age
    end

    def compare_age(other_person)
        if @age > other_person.age
            "#{@name} is older than #{other_person.name}".light_cyan

        elsif @age < other_person.age
            "#{@name} is younger than #{other_person.name}".light_cyan
            
        else
            "#{@name} and #{other_person.name} are the same age".light_cyan
        end
    end
end

person1 = Person.new("Charles", 23)
person2 = Person.new("Rei", 30)
person3 = Person.new("Sophie", 33)
person4 = Person.new("Clara", 33)

puts "Name: #{person1.name} | Age: #{person1.age}".light_green
puts "Name: #{person2.name} | Age: #{person2.age}".light_green
puts "Name: #{person3.name} | Age: #{person3.age}".light_green
puts "Name: #{person4.name} | Age: #{person4.age}".light_green
puts "------------------------------------------------------"
puts person1.compare_age(person2)
puts person2.compare_age(person1)
puts person3.compare_age(person4)