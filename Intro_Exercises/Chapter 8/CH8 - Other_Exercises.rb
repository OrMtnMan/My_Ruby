puts "Exercise 1:"
def has_lab?(string)
	if string =~ /lab/
		puts "#{string} has 'lab' in it"
	else
		puts "#{string} does not have 'lab' in it"
	end
end

words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

words.each do |word|
	has_lab?(word)
end

puts "Exercise 2:"
puts "Nothing is printed because there is no .call"
puts "It returns a proc"

puts "Exercise 3:"
puts "Exception handling stops codes at exceptions and helps narrow down where the error is occurring."

puts "Exercise 4:"
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

puts "Exercise 5:"
puts "The exception is thrown because the ampersand is missing in front of the argument block."