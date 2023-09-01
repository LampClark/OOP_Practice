require 'colorize'

class Dice
    def roll
        rand(1..6)
    end
end

dice = Dice.new
puts "Roll the dice !"
puts "Roll result: #{dice.roll}".light_red