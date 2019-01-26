puts "Exercise 1:"
puts "The documentation links are here:"
puts "https://ruby-doc.org/core-2.2.0/File.html#method-i-path"
puts "https://ruby-doc.org/core-2.2.0/File.html#method-c-path"
puts "The difference between the two is the #path returns the string for a newly created path, whereas the ::path can be for new or old."
puts "------------------------------"
puts "Exercise 2:"
puts "The Date.new will be some odd date in BC."
puts "The Date.new(2016) will output the date 1/1/16"
puts "The Date.new(2016,5) will output the date 5/1/16"
puts "The Date.new(2016,5,13) will output the date 5/13/16"
puts "Here's the test:"
require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)
puts "------------------------------"
puts "Exercise 3:"
puts "Here is the documentation:"
puts "https://docs.ruby-lang.org/en/2.0.0/syntax/calling_methods_rdoc.html#label-Default+Positional+Arguments"
puts "As it says a little bit down in the examples, it will put out [1,5,3,6] because the non default values are filled with the arguments first from their ends."
puts "Then the default values are filled left to right."
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
puts "------------------------------"
puts "Exercise 4:"
puts "Per this: https://ruby-doc.org/core-2.2.0/Array.html#method-i-bsearch"
puts "It would look like this: a.bsearch{|nr| nr >8}"
a = [1, 4, 8, 11, 15, 19]
puts a.bsearch{|nr| nr >8}
puts "------------------------------"
puts "Exercise 5:"
puts "The %w creates an array out of the string separating by spaces."
puts "The first one will put out a IndexError, I'll comment it out."
puts "The second will put out 'beats me'"
puts "The third will put out 49."
a = %w(a b c d e)
##puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }
puts "------------------------------"
puts "Exercise 6:"
puts "The code will output 5, 8."
puts "It is iterating over a range starting with 5 and adding 3 until it reaches 10"
5.step(to: 10, by: 3) { |value| puts value }
puts "------------------------------"
puts "Exercise 7:"
puts "All you would need to do is add (all=false) to the public_methods"
s = 'abc'
puts s.public_methods(all=false).inspect
puts "------------------------------"
puts "Exercise 8:"
puts "Just tack a (2) onto the end."
a = [5, 9, 3, 11]
puts a.min(2)
puts "------------------------------"
puts "Exercise 9:"
puts "This is an old thing..."
puts "Here is the documentation:"
puts "https://ruby-doc.org/stdlib-1.8.6/libdoc/yaml/rdoc/YAML.html#method-c-load_file"