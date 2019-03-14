puts 'Question 1:'
puts 'It would output [1, 2, 2, 3] because the non-mutating version of #uniq was used.'

puts 'Question 2:'
puts '! is a falsey or truthy modifier, whereas ? is a tester for truthiness.'
puts '! can also signify if a method is a mutating method but not always.'
puts '1. That is a does not equal boolean test, it should be used to compare to values or objects.'
puts '2. Putting ! before something means \'not\' for falsey for whatever it is put in front of.'
puts '3. Putting ! after something usually signifies the mutating version of a method.'
puts '4. A ? before something means it is the true output of a ternery operator.'
puts '5. A ? after something means it is the boolean for the ternery operator.'
puts '6. Putting a !! before something makes it truthy.'

puts 'Question 3:'
advice = 'Few things in life are as important as house training your pet dinosaur.'
puts advice.sub('important', 'urgent')

puts 'Question 4:'
puts 'The first one deletes the arry item at the 1 index which in this case would be 2'
puts 'The second one deletes any integer 1 from the array.'

puts 'Question 5:'
puts (10 .. 100).include?(42)

puts 'Question 6:'
famous_words = 'seven years ago...'
puts 'Four score and ' + famous_words
puts famous_words.insert(0, 'Four score and ')

puts 'Question 7:'
puts 'It would result in 42.'

puts 'Question 8:'
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
puts flintstones.flatten.inspect

puts 'Question 9:'
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
puts flintstones.select { |k, v| k == 'Barney' }.to_a.flatten.to_s
