puts 'Exercise 1:'
prng = Random.new

rand_age = prng.rand(20..200)
puts "Teddy is #{rand_age} years old!"

puts 'Exercise 2:'
puts 'Please enter the length of the room in meters:'
length = gets.chomp.to_f
puts 'Please enter the width of the room in meters:'
width = gets.chomp.to_f
sq_met = length * width
sq_ft = sq_met * 10.7639
puts "The area of the room is #{sq_met.round(2)} sq. meters (#{sq_ft.round(2)} sq. feet)."

puts 'Exercise 3:'
puts 'What is the bill?'
bill = gets.chomp.to_f
puts 'What percent do you want to tip?'
puts 'Enter as a whole number, e.g. for 15% put in 15'
tipperc = gets.chomp.to_f
tip = (bill * tipperc / 100).round(2)
puts "The tip is $#{tip}."
puts "Which makes the total $#{(bill + tip).round(2)}."

puts 'Exercise 4:'
puts 'How old are you?'
age = gets.chomp.to_i
puts 'At what age do you want to retire?'
ret_age = gets.chomp.to_i
year = Time.now.year
puts "It's #{year} now, so you will retire in #{year + ret_age - age}."
puts "You only have #{ret_age - age} years to go!"

puts 'Exercise 5:'
puts 'What is your name?'
name = gets.chomp
name_ary = name.split(//)

if name_ary.include?('!')
  name_ary.delete('!')
  name = name_ary.join.upcase
  puts "HI, #{name}! WHY ARE YOU YELLING?"
else
  puts "Hello, #{name}."
end

puts 'Exercise 6:'
99.times { |n| puts n if n.odd? }

puts 'Exercise 7:'
99.times { |n| puts n if n.even? }

puts 'Exercise 8:'
def val_input(nr)
  puts 'Please input a valid whole number greater than 0.' if nr <= 0
  nr > 0  
end

number = 0
op = ''
OP_WORDS = {s: 'sum', p: 'product'}.freeze
res = 1

puts 'Please enter an integer greater than 0:'
loop do
  number = gets.chomp.to_i
  break if val_input(number)
  puts 'Please enter an integer greater than 0:'
end

puts 'Please enter \'s\' to compute the sum of each part, or \'p\' to compute the product:'
loop do
  op = gets.chomp.downcase
  break if op == 's' || op == 'p'
  puts 'Please enter either \'s\' or \'p\'.'
end

if op == 's'
  res -= 1
  2..number.times { |n| res += (n + 1) }
else
  2..number.times { |n| res *= (n + 1) }
end

puts "The #{OP_WORDS[op.to_sym]} of the integers between 1 and #{number} is #{res}."

puts 'Exercise 9:'
puts 'The second set woudl put out BOB then BOB on the next line.'
puts 'This is because the \'!\' mutates the caller.'
puts 'Both variables are pointing to the same object which is then changed.'
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

puts 'Exercise 10:'
puts 'Similar to exercise 9, the \'!\' is mutating the callers.'
puts 'The array will have the C and S names capped.'
puts 'Each array has the same pointers to the same objects.'
puts 'When it is transferred into the array 2 it does not make a copy.'
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2