# Create a class Time with attributes hours and minutes. 
# Add a method to add two Time objects together.

class Time
    attr_accessor :hours, :minutes

    def initialize(hours, minutes)
        @hours = hours
        @minutes = minutes
    end

    def +(other_time)
        total_minutes = @minutes + other_time.minutes
        total_hours = total_minutes / 60
        new_hours = (@hours + other_time.hours + total_hours) % 24
        new_minutes = total_minutes % 60
        Time.new(new_hours, new_minutes)
    end
end

time1 = Time.new(5, 30)
time2 = Time.new(3, 15)
sum_time = time1 + time2
puts "Total time: #{sum_time.hours} hours #{sum_time.minutes} minutes"