puts "In exercise 1, the each method would return the array [1,2,3,4,5]."
puts "Exercise 2:"

loop do
	puts "Say STOP."
	typed = gets.chomp
	if typed == "STOP"
		puts "OK, bye."
		break
	end
	puts "You didn't say STOP."
end

puts "Exercise 3:"
array = ["Boom", "Shaka", "Laka"]

array.each_with_index { |frag,index| puts "Nr. #{index} is #{frag}" }

puts "Exercise 4:"

def countdown(numba)
	puts (numba)
	if numba < 0
		puts "Why you messin with negative numbers?"
	elsif numba != 0
		countdown(numba -= 1)
	else
		puts "We're done!"
	end
end

puts "What number do you want to count down from?"
number = gets.chomp.to_i
countdown(number)