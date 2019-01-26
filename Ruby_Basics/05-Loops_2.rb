puts "Exercise 1:"
count = 1
oddeven = ""
loop do
	if count.odd?
		oddeven = " is odd."
	else
		oddeven = " is even."
	end
	puts count.to_s+oddeven
  count += 1
	if count == 6
		break
	end
end

puts "Exercise 2:"
loop do
  number = rand(100)
  puts number
	if number <=10 && number >=0
		break
	end
end

puts "Exercise 3:"
loop do
	process_the_loop = [true, false].sample
	puts "#{process_the_loop ? "The loop was processed!" : "The loop wasn't processed!"}"
	break if process_the_loop
end

puts "Exercise 4:"
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
	puts "#{answer==4 ? "That's correct!" : "Wrong answer, Try again!"}"
	break if answer == 4
end

puts "Exercise 5:"
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
	numbers << input
	break if numbers.length >= 5
end
puts numbers

puts "Exercise 6:"
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
	puts names[0]
	names.delete_at(0)
	break if names.empty?
end

puts "Exercise 7:"
5.times do |index|
	puts index
  break if index==2
end

puts "Exercise 8:"
number = 0

until number == 10
  number += 1
	next if number.odd?
  puts number
end

puts "Exercise 9:"
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
	next if number_a < 5 && number_b < 5
	puts "5 was reached"
  break
end

puts "Exercise 10:"
def greeting
  puts 'Hello!'
end

number_of_greetings = 2
while number_of_greetings > 0 
	number_of_greetings -= 1
	greeting
end