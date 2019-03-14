puts 'Question 1:'
puts 'The greeting variable will be nil and will throw an error.'
puts 'This is because it is not initialized.'

puts 'Question 2:'
puts 'The output would be only the part of the hash with "hi there"/'
puts 'This is because informal_greeting is changed, not greetings.'
puts 'informal_greetiing gets assigned the same hash object as greetins but it is not greetings.'

puts 'Question 3:'
puts 'A will output that one is one and so forth because the = doesn\'t mutate.'
puts 'B will also not mutate.'
puts 'C will change because the method is using a mutator gsub.'

puts 'Question 4:'
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.length == 4
  dot_separated_words.each {|w| return false unless is_an_ip_number?(w) }
  true
end