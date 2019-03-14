puts 'Question 1:'
puts 'First, the variables defined outside of the block keep their values when called again outside and after the block.'
puts 'Next, inside the block, the inner ids will match the outer ids initially.'
puts 'After that, the inner values are changed.'
puts 'This changes the object IDs.'
puts 'Otherwise it will try to use the same IDs when it can.'
puts 'The final output is "ugh ohhhhh"'

puts 'Question 2:'
puts 'First the values are defined like Q1.'
puts 'It works like before for the second part as well.'
puts 'The inner objects are not the same as the outside ones but Ruby will use the IDs if it can.'
puts 'Then like before the values are changed changing the object ID.'
puts 'Now, the changed values of our outers match the inners.'
puts 'This is because the second method call took the outer values as arguemrnts.'
puts 'Finally it still outputs "ugh ohhhhh"'

puts 'Question 3:'
puts 'The code will display pumpkins in thestring line because the += does not mutate.'
puts 'However the array line will have pumpkins and rutabaga because the << does mutate.'
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

puts 'Question 4:'
puts 'The string line will be pumpkinsrutabaga because, again, the << mutates.'
puts 'However the array would only have pumpkin because = does not mutate.'
def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

puts 'Question 5:'
def color_valid(color)
  color == 'blue' || color == 'green'
end