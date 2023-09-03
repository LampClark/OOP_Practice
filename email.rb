# Write a class Email with attributes sender, receiver, and content. 
# Implement a method to check if the content contains any offensive words.
class Email
    attr_accessor :sender, :receiver, :content

    OFFENSIVE_WORDS = ["pooper", "hellcat", "asscat"]

    def initialize(sender, receiver, content)
        @sender = sender
        @receiver = receiver
        @content = content
    end

    def contains_offensive_words?
        OFFENSIVE_WORDS.any? { |word| @content.include?(word) }
    end

    def check_offensive_words
        if contains_offensive_words?
            puts "This email contains offensive words."
        else
            puts "This email does not contain offensive words."
        end
    end
end

email1 = Email.new("dog@underdog.com", "meow@cat.com", "you pooper hellcat meow! ")
email2 = Email.new("meow@cat.com", "dog@underdog.com", ":3")

email1.check_offensive_words
email2.check_offensive_words