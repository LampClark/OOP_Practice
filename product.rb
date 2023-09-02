# Build a Product class with attributes name, price, and quantity. 
# Add methods to calculate the total price for a given quantity of products.
require 'colorize'

class Product
    attr_accessor :name, :price, :quantity

    def initialize(name, price, quantity)
        @name = name
        @price = price
        @quantity = quantity
    end

    def display_details
        puts "Item: #{name} | Quantity: #{quantity}".light_cyan
    end

    def total_price
        total = @price * @quantity
        puts "Total Price: RM #{total}".light_green
    end
end

product1 = Product.new("LTT Water Bottle", 139.38, 3)
product2 = Product.new("LTT Screwdriver", 325.28, 2)

product1.display_details
product1.total_price
product2.display_details
product2.total_price
