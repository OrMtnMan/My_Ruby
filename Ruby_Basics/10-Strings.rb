puts "Exercise 1:"
str = String("Yay!")
puts str

puts "Exercise 2:"
puts "It's now 12 o' clock."

puts "Exercise 3:"
name = 'Roger'
puts name.casecmp?('RoGeR')
puts name.casecmp?('DAVE')

puts "Exercise 4:"

name = 'Elizabeth'

puts "Hello, #{name}!"

puts "Exercise 5:"
first_name = 'John'
last_name = 'Doe'
puts full_name = first_name+" "+last_name

puts "Exercise 6:"
state = 'tExAs'
puts state.capitalize!

puts "Exercise 7:"
greeting = 'Hello!'
puts greeting.replace('Goodbye!')

puts "Exercise 8:"
alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split(//)

puts "Exercise 9:"
words = 'car human elephant airplane'
array = words.split()
array.each {|word| puts word+"s"}

puts "Exercise 10:"
colors = 'blue pink yellow orange'
puts colors.include? 'yellow'
puts colors.include? 'purple'