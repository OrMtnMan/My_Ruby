puts "Exercise 1:"
loop do
  puts 'Just keep printing...'
	break
end

puts "Exercise 2:"
loop do
  puts 'This is the outer loop.'
	
  loop do
    puts 'This is the inner loop.'
		break
  end
	break
end

puts 'This is outside all loops.'

puts "Exercise 3:"
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
	iterations += 1
  if iterations > 5
		break
	end
end

puts "Exercise 4:"
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
	if answer == "yes"
		break
	end
end

puts "Exercise 5:"
say_hello = true
count = 0

while say_hello
	count += 1
  puts 'Hello!'
	if count == 5
		say_hello = false
	end
end

puts "Exercise 6:"
numbers = []

while numbers.count < 5
  rando = rand(99)
	numbers << rando
	puts rando
end

puts "Exercise 7:"
count = 1

until count == 11
	puts count
	count += 1
end

puts "Exercise 8:"
numbers = [7, 9, 13, 25, 18]

until numbers.empty?
	puts numbers[0]
	numbers.delete_at(0)
end

puts "Exercise 9:"
for i in 1..100
  if i.odd?
		puts i
	end
end

puts "Exercise 10:"
friends = ['Sarah', 'John', 'Hannah', 'Dave']
for i in friends
	puts "Hello, #{i}!"
end