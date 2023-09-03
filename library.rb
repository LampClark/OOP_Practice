# Build a class Library that holds a collection of books. 
# Implement methods to add, remove, and list books.
require 'colorize'

# Add a book to the library
class Library
    def initialize
        @books = []
    end

    # Remove a book from the library
    def add_book(title, author)
        book = {title: title, author: author}
        @books << book
        puts "#{title.colorize(:light_cyan)} by #{author.colorize(:yellow)} has been added to the library."
    end

    def remove_book(title)
        book_to_remove = @books.find { |book| book[:title] == title }

        if book_to_remove
            @books.delete(book_to_remove)
            puts "#{title.colorize(:light_red)} has been removed from the library."
        else
            puts "#{title.colorize(:light_red)} is not in the library."
        end
    end

    # List all the books in the library
    def list_books
        if @books.empty?
            puts "The library is empty."
        else
            puts "Books in the library:"
            @books.each_with_index do |book, index|
                title = book[:title].colorize(:light_cyan)
                author = book[:author].colorize(:light_green)
                puts "#{index + 1}. #{title} by #{author}."
                # puts "#{index + 1}. #{book[:title]} by #{book[:author]}"
            end
        end
    end
end

library = Library.new

library.add_book("Kill the empress", "Isaac Clark")
library.add_book("The Forbidden Door", "Josh Attano")
library.add_book("Master Alchemist", "Harper Oath")

library.list_books

library.remove_book("Master Alchemist")

library.list_books