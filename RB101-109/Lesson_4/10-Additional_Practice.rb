puts 'Practice Problem 1:'
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}

flintstones.each_with_index do |s, i|
  flintstones_hash[s] = i
end

p flintstones_hash

puts 'Practice Problem 2:'
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
sum = 0
ages.each {|k, v| sum += v}

puts sum

puts 'Practice Problem 3:'
p ages.reject {|k, v| v > 100 }

puts 'Practive Problem 4:'
puts ages.values.min

puts 'Practice Problem 5:'
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts flintstones.index { |s| s[0, 2] == 'Be' }

puts 'Practice Problem 6:'
p flintstones.map!{|s| s[0..2]}

puts 'Practice Problem 7:'
statement = "The Flintstones Rock"
count = {}
statement.gsub(' ', '').chars.each{|c| count.has_key?(c) ? count[c] += 1 : count[c] = 1}
p count

puts 'Practice Problem 8:'
puts 'The first one would output 1 then 3.'
puts 'This is because it puts the vlue in the 0 index which is 1.'
puts 'Then the 1 is shifted out, then it outputs 3 because it is in the 1 index now.'
puts 'Then it stops because the 3 is shifted out and there is no 2 index.'
puts 'The second one would output 1 then 2.'
puts 'Similar to the above, it outputs the 0 index which is 1.' 
puts 'Then it pops the last index (3) out.'
puts 'Then it goes to the 1 index which is 2 and pops out the 2.'
puts 'Then there is no 2 index so it stops.'

puts 'Practice Problem 9:'
words = "the flintstones rock"

puts words.split.map!{|w| w.capitalize!}.join(' ')

puts 'Practice Problem 10:'
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |k, v|
  v['age_group'] = 'kid' if v['age'] < 18
  v['age_group'] = 'adult' if v['age'] > 17 && v['age'] < 65
  v['age_group'] = 'senior' if v['age'] > 64
end

p munsters