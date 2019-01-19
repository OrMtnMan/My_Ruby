puts "Please enter your name..."
name = gets.chomp

def thanks (to_thank)
	to_thank = "Thank you, "+to_thank+"!"
end

puts thanks(name)

puts "For exercise 2, 1 outputs '2', 2 outputs nil because of the 'puts', 2 outputs 'Joe', 4 outputs 'four' and 5 would be nil because of the space between print and something."

puts "Please enter the first number to multiply."
num1 = gets.chomp.to_i
puts "Thank you. Please enter the second number to multiply."
num2 = gets.chomp.to_i
puts "Thank you!"

def multiply (number1, number2)
	number1 * number2
end

puts "The product is "+multiply(num1, num2).to_s+"."

puts "For exercise 4, the output would be a blank due to the blank return"

puts "Here is the fixed version"

def scream(words)
	words += "!!!!"
	puts words
end

scream("Yippeee")

puts "This would still return a nil"

puts "For exercise 6, the error is saying there are two few arguments (1 instead of 2) being given to the 'calculate_product' method."