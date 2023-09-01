# Create a class Book with attributes title, author, and pages. 
# Add a method to display the book's information.

require 'colorize'

class Book
    attr_accessor :title, :author, :pages

    def initialize(title, author, pages)
        @title = title
        @author = author
        @pages = pages
    end

    def display_info
        "Title: #{@title} | Author: #{@author} | Pages: #{@pages}".light_red
    end
end

book = Book.new("Forbidden Words", "Rei", 1840)
puts book.display_info