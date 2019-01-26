puts "Exercise 1:"
pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2]
puts "I have a pet #{my_pet}!"

puts "Exercise 2:"
my_pets = pets[2,3]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

puts "Exercise 3:"
my_pets.pop
puts "I have a pet #{my_pets[0]}!"

puts "Exercise 4:"
my_pets << pets[1]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

puts "Exercise 5:"
colors = ['red', 'yellow', 'purple', 'green']
colors.each {|col| puts "I'm the color #{col}!"}

puts "Exercise 6:"
numbers = [1, 2, 3, 4, 5]
p doubled_numbers = numbers.map {|nr| nr*2}

puts "Exercise 7:"
numbers = [5, 9, 21, 26, 39]
p divisible_by_three = numbers.select {|nr| nr%3 == 0}

puts "Exercise 8:"
p favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

puts "Exercise 9:"
p flat_favorites = favorites.flatten

puts "Exercise 10:"
array1 = [1, 5, 9]
array2 = [1, 9, 5]
puts array1.eql?(array2)