puts 'Question 1:'
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
puts ages.key?('Spot')
puts ages.include?('Spot')
puts ages.has_key?('Spot')

puts 'Question 2:'
munsters_description = 'The Munsters are creepy in a good way.'
puts munsters_description.swapcase
puts munsters_description.capitalize
puts munsters_description.downcase
puts munsters_description.upcase

puts 'Question 3:'
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
puts ages.merge(additional_ages)

puts 'Question 4:'
advice = 'Few things in life are as important as house training your pet dinosaur.'
puts advice.include?('Dino')

puts 'Question 5:'
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts flintstones.to_s

puts 'Question 6:'
puts (flintstones << 'Dino').to_s 

puts 'Question 7:'
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts flintstones.insert(-1, 'Dino', 'Hoppy').to_s

puts 'Question 8:'
puts advice.slice!(0, (advice.index('house')))
puts advice

puts 'Question 9'
statement = "The Flintstones Rock!"
puts statement.count('t')

puts 'Question 10:'
title = "Flintstone Family Members"
puts title.center(40)