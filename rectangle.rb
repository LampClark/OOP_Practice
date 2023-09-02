# Implement a class Rectangle with attributes width and height. 
# Add methods to calculate the area and perimeter.
require 'colorize'

class Rectangle
    attr_accessor :width, :height

    def initialize(width, height)
        @width = width
        @height = height
    end

    def area
        @width * @height
    end

    def perimeter
        2 * (@width + @height)
    end
end

puts "Input the width number:".green
width = gets.chomp.to_i

puts "Input the height number:".light_green
height = gets.chomp.to_i

rectangle = Rectangle.new(width, height)
puts "Area: #{rectangle.area}, Perimeter: #{rectangle.perimeter}".light_cyan