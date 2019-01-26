puts "Exercise 1:"
sun = ['visible', 'hidden'].sample
if sun == 'visible'
	puts "The sun is so bright!"
end

puts "Exercise 2:"
unless sun == 'visible'
	puts "The clouds are blocking the sun!"
end

puts "Exercise 3:"
puts "The sun is so bright!" if sun == 'visible'
puts "The clouds are blocking the sun!" unless sun == 'visible'

puts "Exercise 4:"
boolean = [true, false].sample
puts boolean ? "I'm true!" : "I'm false!"

puts "Exercise 5:"
puts "The boolean will put out the first string because non 0 or false statements are true."
number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

puts "Exercise 6:"
stoplight = ['green', 'yellow', 'red'].sample
case
when stoplight == 'green'
	puts "Go!"
when stoplight == 'yellow'
	puts "Slow down!"
else
	puts "Stop!"
end

puts "Exercise 7:"
if stoplight == 'green'
	puts "Go!"
elsif
	puts "Slow down!"
else
	puts "Stop!"
end

puts "Exercise 8:"
status = ['awake', 'tired'].sample
stat = if status == 'awake'
	"Be productive!"
else
	"Go to sleep!"
end

puts stat

puts "Exercise 9:"
number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

puts "Exercise 10:"
case stoplight
when 'green' then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else puts 'Stop!'
end