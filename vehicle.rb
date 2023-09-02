# Implement a class hierarchy: Vehicle and Car. Implement their constructors.
# Add a method to the Car class to start the engine.
# Demonstrate method overriding by creating a method in both the Vehicle and Car classes with the same name.

class Vehicle
    def initialize
        @engine_started = false
    end

    def start_engine
        @engine_started = true
        "Engine started"
    end

    def engine_status
        "Engine is running"
    end
end

class Car < Vehicle
    def start_engine
        super + ", Car's engine started"
    end

    def engine_status
        "Car's engine is running"
    end
end

vehicle = Vehicle.new
puts vehicle.start_engine
puts vehicle.engine_status

puts

car = Car.new
puts car.start_engine
puts car.engine_status