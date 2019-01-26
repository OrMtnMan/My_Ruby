puts "Exercise 1:"
p car = {type:"sedan", color:"blue", mileage:80_000}

puts "Exercise 2:"
car[:year] = 2003
p car

puts "Exercise 3:"
car.delete(:mileage)
p car

puts "Exercise 4:"
puts car[:color]

puts "Exercise 5:"
numbers = {high:100,medium:50,low:10}
numbers.each {|k,v| puts "A #{k.to_s} number is #{v.to_s}"}

puts "Exercise 6:"
p half_numbers = numbers.map {|k,v| v/2}

puts "Exercise 7:"
p low_numbers = numbers.select {|k,v| v<25}

puts "Exercise 8:"
p low_numbers = numbers.select! {|k,v| v<25}
p numbers

puts "Exercise 9:"
p cars = {car:{type:"sedan", color:"blue", year:2003},truck:{type:"pickup", color:"red", year:1998}}

puts "Exercise 10:"
p car.to_a