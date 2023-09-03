# Write a Ruby program that takes a sentence as input and outputs the number of words in it.

def count_words(sentence)
    words = sentence.split()
    word_count = words.length
end

puts "Enter a sentence:"
input_sentence = gets.chomp

result = count_words(input_sentence)
puts "Number of the sentence: #{result}"

# Given a hash student_scores with student names as keys and their corresponding test scores as values, write code to find the student with the highest score.
student_scores = {
    "Potato" => 65,
    "Rei" => 84,
    "Clara" => 92,
    "Michael" => 90
}

highest_score = -1
top_student = nil

student_scores.each do |student, score|
    if score > highest_score
        highest_score = score
        top_student = student
    end
end

if top_student
    puts "The student with the highest score is #{top_student} with a score of #{highest_score}."
else
    puts "No students found in the list."
end


# Given a hash fruit_prices with fruit names as keys and their prices as values, write code to print the names of fruits that are priced less than $1.
fruit_prices = {
    "Apple" => 0.60,
    "Potato" => 0.71,
    "Strawberry" => 1.10,
    "Grape" => 0.80,
    "Blackberry" => 1.30 
}

puts "Fruits priced less than RM 1:"
fruit_prices.each do |fruit, price|
    if price < 1.0
        puts fruit
    end
end

# Create an array of strings representing names. Write code to filter and print the names that start with the letter "A".
names = ["Ada", "Anna", "Rei", "Bear", "Alex", "Amy", "Clark", "Attano"]

puts "Names that start with 'A':"
names.each do |name|
    if name.start_with?("A")
        puts name
    end
end

# Create an array of strings representing words. Write code to join the words in the array into a single sentence.
words = ["Array", "of", "strings", "representing", "words."]
sentence = words.join(" ")
puts sentence