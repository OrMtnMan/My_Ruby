puts "Exercise 1:"
puts "ruby-doc.org is easy to use. The sidebars make it easy to navigate to what I am looking for."

puts "Exercise 2:"
puts "Here is a tutorial link: https://ruby-doc.org/docs/ruby-doc-bundle/Tutorial/part_02/while.html"
puts "The documentation is here: https://ruby-doc.org/core-2.2.0/doc/syntax/control_expressions_rdoc.html"

puts "Exercise 3:"
puts "A while loop puts out a nil unless a break is used."

puts "Exercise 4:"
puts "Break is found here: http://ruby-doc.org/docs/keywords/1.9/Object.html"
puts "The break puts out the value it is given, see my example."
a = 1
while a < 2 do
	break a
end

puts "Exercise 5:"
puts "Ruby uses underscores in lieu of commas in large numbers 1000 would look like 1_000. 1,000 would cause issues in calculations."
puts "There are others but that is probably the most obvious."

puts "Exercise 6:"
puts "A symbol of my name would look like :ConnorBates."

puts "Exercise 7:"
puts "Here is the string class page: https://ruby-doc.com/core/String.html"

puts "Exercise 8:"
puts "To right justify a string you would use the rjust method."
just = "Heya"
puts just
puts just.rjust(15)