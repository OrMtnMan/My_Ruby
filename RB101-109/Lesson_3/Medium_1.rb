puts 'Question 1:'
10.times do |n|
  puts 'The Flinstones Rock!'.center(20 + n * 2)
end

puts 'Question 2:'
puts 'The error is that you\'re trying to combine a string and an integer.'
puts 'Here is one fix:'
puts 'The value of 40 + 2 is ' + (40 + 2).to_s
puts 'Here is another possible fix'
puts "The value of 40 + 2 is #{40 + 2}"

puts 'Question 3:'
def factors(nr)
  factors = []
  nr.times { |n| factors << nr / (n + 1) if nr % (n + 1) == 0 }
  factors
end

puts factors(-1).inspect
puts factors(0).inspect
puts factors(2).inspect
puts factors(522).inspect

puts 'Bonus 1: The purpose is to find if the divisor is a factor of the number.'
puts 'If the result of the % is 0 it is a factor.'

puts 'Bonus 2: The purpose of line 8 is to set the return value of the method.'
puts 'In this case it is returning the array of factors.'

puts 'Question 4:'
puts 'Yes, there is a difference, the first method will mutate the buffer arguement.'

puts 'Question 5:'
puts 'The limit number is not passed into the method.'
puts 'So the method doesn\'t know what limit is'
puts 'Here\s the fix'

limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

puts 'Question 6:'
def tricky_method(an_array_param)
  an_array_param << "rutabaga"
end

my_array = ["pumpkins"]
tricky_method(my_array)

puts "My string looks like this now: #{my_array.join}"
puts "My array looks like this now: #{my_array}"

puts 'Question 7:'
puts 'It will output 34'
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

puts 'Question 8:'
puts 'The info will be alteredbecause the hash is passed directly into the method.'
puts 'If it were reassigned prior to being passed in ot reassigned, it would not have.'

puts 'Question 9:'
puts 'The result would be as follows:'
puts 'Heres the base: puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")'
puts 'First Step: puts rps(rps("paper", "rock"), "rock")'
puts 'Second Step: puts rps("paper", "rock")'
puts 'Final Step: puts "paper"'
puts 'Here is the test:'

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

puts 'Question 10:'
puts 'The output would be "no"'
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

puts bar(foo)