puts "Exercise 1:"
count = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

count.each {|nr| puts nr}

puts "Exercise 2:"
count.each {|nr| puts nr if nr >5}

puts "Exercise 3:"
odd_count = count.select {|nr| nr.odd?}
p odd_count

puts "Exercise 4:"
count << 11
count.unshift(0)
p count

puts "Exercise 5:"
count << 3
count.delete (11)
p count

puts "Exercise 6:"
count.uniq!
p count

puts "Exercise 7:"
puts "An array stores values in a list referenced by indexes while a hash uses keyed pairs."

puts "Exercise 8:"
hash = {:Key => "Value"}
hashnew = {Key: "Value"}
p hash
p hashnew

puts "Exercise 9:"
h = {a:1, b:2, c:3, d:4}
puts h[:b]
h[:e] = 5
p h
h.delete_if {|k,v| v.to_f < 3.5}
p h

puts "Exercise 10:"
puts "Yes to both."
p hash={a: [4,5,6,3], b: [2,2,6,7]}
p arr=[{a:1, b:2},{c:3, d:4}]

puts "Exercise 11:"
puts "So far I am liking ruby-doc, it is clear, easy to navigate and has good examples. It also was the first I looked at or tried and I haven't needed to look elsewhere."
puts "That said, I looked at apidock but it was not as easy to navigate around. I also looked at api.rubyonrails and it looks easy but I already have one that does what I need."

puts "Exercise 12:"
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts "Exercise 13:"
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

puts "Exercise 14:"
contact_data.each do |arr|
	test_name = arr[0].chomp("@email.com")
	contacts.each_key do |k|
		if k.downcase.include? test_name
			contacts[k][:email] = arr[0]
			contacts[k][:address] = arr[1]
			contacts[k][:phone] = arr[2]
		else
			puts "uh-oh"
		end
	end
	p contacts
end

puts "Exercise 15:"
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|word| word.start_with?("s")}
p arr
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|word| word.start_with?("s","w")}
p arr

puts "Exercise 16:"
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map {|words| words.split}
a = a.flatten
p a

puts "Exercise 17:"
puts "The program will output that they are the same."
puts "The order in which the keys are listed in the hash doesn't matter"
puts "See, watch."
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end



