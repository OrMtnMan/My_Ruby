puts "Exercise 1:"
# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select { |k,v| k == :sisters || k == :brothers}
p immediate_family.values.flatten

puts "Exercise 2:"
puts "The difference between merge and merge! is that the one with the '!' mutates the hash as demonstrated below."
puts "Whereas, the base one creates a new hash that you need to store if you want it."

h1 = {"a": 500, "b": 300}
h2 = {"b": 275, "c": 450}
h3 = {"c": 20, "d": 10}

p h1.merge(h2)
p h1

p h2.merge!(h3)
p h2

puts "In both cases if no block is given, the duplicated key defaults to the hash put in as the arguement."
puts "The block works the same on both as shown below."
p h1.merge(h2){|k,v1,v2| v1-v2}
p h1
p h1.merge!(h2){|k,v1,v2| v1-v2}
p h1

puts "Exercise 3"
puts "I will use my h1 from above"
h1.each_key {|k| puts k}
h1.each_value {|v| puts v}
h1.each_pair {|k,v| puts "The key is #{k} and the value is #{v}"}

puts "Exercise 4:"
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts "To access the name, I would use the fetch method. See it work below."
p person.fetch(:name)

puts "Exercise 5:"
puts "To find if a hash contains a certain value I would use the has_value method."
puts "I will demonstrate on my h1 to see if it has a 500 (which it should)."
p h1.has_value?(500)

puts "Exercise 6"
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anag = {}

words.each do |word|
	test_key = word.chars.sort
	if anag.has_key?(test_key)
		anag[test_key].push(word)
	else
		anag[test_key] = [word]
	end
end
anag.each_value do |v|
	p v
end
puts "That was the efficient one that matched the solution."
puts "Exercise 7:"
puts "The difference between the two the first one is using a symbol and the new hash syntax. The second is using a string for the key which requires the use of the old hash syntax."

puts "Exercise 8:"
puts "You are likely trying to use a hash method looking for keys in an array which has indexes. So, B."