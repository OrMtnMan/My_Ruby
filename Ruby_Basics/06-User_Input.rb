puts "Exercise 1:"
puts "Type anything you want:"
input = gets.chomp
puts input

puts "Exercise 2:"
loop do
	puts "What is your age in years?"
	input = gets.chomp.to_i*12
	next if input == 0
	puts "You are #{input} months old."
	break
end

puts "Exercise 3:"
puts "Would you like me to print something? (y/n)"
ans = gets.chomp
puts "something" if ans == "y"

puts "Exercise 4:"
loop do
	puts "Would you like me to print something? (y/n)"
	ans = gets.chomp
	puts "something" if ans.downcase == "y"
	break if ans.downcase == "y" || ans.downcase == "n"
	puts "Invalid input! please enter y or n"
end

puts "Exercise 5:"
puts "How many times should we say Launch School is the best?"
loop do
	count = gets.chomp.to_i
	puts "It needs to be at least 3 times, come on!" if count < 3
	next if count < 3
	while count > 0
		puts "Launch School is the best!"
		count -= 1
	end
	break
end

puts "Exercise 6:"
pw = "SecreT"
loop do
	puts "Please enter your password:"
	inppw = gets.chomp
	puts "Welcome!" if inppw == pw
	break if inppw == pw
	puts "Invalid Password!"
end

puts "Exerise 7:"
login = {"admin" => "PassWord"}
loop do
	puts "Please enter your user name:"
	uname = gets.chomp
	puts "Please enter your password:"
	pword = gets.chomp
	if login[uname] == pword
		puts "Welcome!"
		break
	end
	puts "Authorization failed!"
end

puts "Exercise 8:"
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end
loop do
	numer = 0
	denom = 0
	loop do
		puts "Please provide the numerator:"
		numer = gets.chomp
		next if !valid_number?(numer)
		break
	end
	loop do
		puts "Please provide the denominator:"
		denom = gets.chomp
		if valid_number?(denom) && denom.to_i != 0
			break
		end
	end
	puts "#{numer} / #{denom} is #{numer.to_i/denom.to_i}"
	break
end

puts "Exercise 9:"
number_of_lines = 0
loop do
	loop do
		puts '>> How many output lines do you want? Enter a number >= 3 or \'q\' to quit:'
		input = gets.chomp
		number_of_lines = input.to_i
		break if input.downcase == "q"
		break if number_of_lines >= 3
		puts ">> That's not enough lines."
	end

	while number_of_lines > 0
		puts 'Launch School is the best!'
		number_of_lines -= 1
	end
	break if input == "q"
end

puts "Exercise 10:"
inputsgood = 1
int1 = 0
int2 = 0
loop do
	puts "Please enter the first integer at least one should be negative and one positive:"
	int1 = gets.chomp.to_i
	puts "Please enter the second integer at least one should be negative and one positive:"
	int2 = gets.chomp.to_i
	if (int1 > 0 && int2 > 0) || (int1 < 0 && int2 < 0)
		inputsgood = 0
		puts "Input one negative and one positive number!"
		next
	end
	inputsgood = 1
	break if inputsgood == 1
end

puts "#{int1} + #{int2} = #{int1+int2}"