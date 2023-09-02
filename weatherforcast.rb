# Build a class WeatherForecast that generates a random weather forecast for the day.
require 'colorize'

class WeatherForecast
    def generate_weather
        ["Sunny", "Snowy", "Foggy", "Windy", "Cloudy", "Rainbow"].sample.green
    end
end

forecast = WeatherForecast.new
puts "Today's weather forecast: #{forecast.generate_weather}"