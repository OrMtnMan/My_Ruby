puts "Exercise 1:"
puts "The code will output 7 because b is not brought out of the block."
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

puts "Exercise 2:"
puts "The code will output 7 because a and the a in the block are two different variables."
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

puts "Exercise 3:"
puts "The code will output 7 because like the previous exercise, the reassignment happens within the block making a different variable."
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

puts "Exercise 4:"
puts "The code should output \"Xy-zy\"."
puts "This one is unexpected and interesting. because the method [] is run on it, it mutates the string."
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

puts "Exercise 5:"
puts "This code should output \"Xyzzy\" because reassignments do not mutate so it is isolated in the block."
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

puts "Exercise 6:"
puts "This one will output an error because a is not defined within the block nor it is passed in."
##a = 7

##def my_value(b)
  ##b = a + a
##end

##my_value(a)
##puts a
puts "I commented this one out so we can move on."

puts "Exercise 7:"
puts "Because of the each method, a should output as 3."
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

puts "Exercise 8:"
puts "This one should output an error because a is defined inside the block."
puts "The difference with the last example is that a was defined outside the block then changed within."
puts "I changed the variable name so it isn't confused with the last exercises."
puts "It threw me for a loop that it didn't error out when I first tried it in this code, then I realised I had a defined up above."
##array = [1, 2, 3]

##array.each do |element|
  ##c = element
##end

##puts c
puts "I commented this one out so we could move on."

puts "Exercise 9:"
puts "This one should output 7 because the a in the block is different than the one outside."
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

puts "Exercise 10:"
puts "The code will print out an error because it is trying to use a undefined. It was never passed inside."
##a = 7
##array = [1, 2, 3]

##def my_value(ary)
  ##ary.each do |b|
    ##a += b
  ##end
##end

##my_value(array)
##puts a
puts "I commented it out to move on without issue."