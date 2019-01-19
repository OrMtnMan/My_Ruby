puts "For the 1st exercise:"
puts "1 will output 'false' because the product is 128."
puts "2 will output 'false' because !true is false and false == false."
puts "3 will output 'false' because while anything not false or nil is 'true', true does not equal 4."
puts "4 will output 'true' because the integer does not equal the string and false = false"
puts "5 will output 'true' because the !true is false, moving to the next where the !20 == 20 outputs a false, thus moving on to where 328/4 = 82 which == 82 being true and stopping."

puts (32 * 4) >= 129
puts false != !true
puts true == 4
puts false == (847 == '847')
puts (!true || (!(100 / 5) == 20) || ((328/4) == 82)) || false

puts "OK. Please give me a word longer than 10 characters to make uppercase."
word = gets.chomp
if word.length < 10
	puts "I said more than 10 characters!"
else
	puts "Here it is uppercase " + word.upcase + "."
end

puts "Please give me a number between 0 and 100."
number = gets.chomp.to_i
if number < 51
	puts "The number you put in: "+number.to_s+", is between 0 and 50."
elsif number < 100
	puts "The number you put in: "+number.to_s+", is between 51 and 100."
else
	puts "The number you put in: "+number.to_s+", is greater than 100."
end

puts "For the 4th exercise:"
puts "1 will output 'FALSE' because the string does not equal the integer."
puts "2 will output 'Did you get it right?' because 2*3/2 = 3 and 4+4-2-3=3."
puts "3 will output 'Alright now!' because 10+1 >= 9."
'4' == 4 ? puts("TRUE") : puts("FALSE")

x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end

y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end

puts "Here is the case version of exercise 3."

puts "Please give me a number between 0 and 100. For the case statement."
number = gets.chomp.to_i
case
  when number < 51
	  puts "The number you put in: "+number.to_s+", is between 0 and 50."
  when number < 100
	  puts "The number you put in: "+number.to_s+", is between 51 and 100."
  else
	  puts "The number you put in: "+number.to_s+", is greater than 100."
end

puts "To fix the code in exercise 6, you need to input the missing end to the if statement."
puts "See, watch!"
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
	end
end

equal_to_four(5)