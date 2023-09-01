require 'colorize'

class Circle
    attr_accessor :radius

    def initialize(radius)
        @radius = radius
    end

    def area
        Math::PI * @radius**2
    end

    def circumference
        2 * Math::PI * @radius
    end
end

puts "Input the radius of the circles: ".light_blue
radius = gets.chomp.to_f

circle = Circle.new(radius)

puts "Area: #{circle.area} | Circumference: #{circle.circumference}".light_green