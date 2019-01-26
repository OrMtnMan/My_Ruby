puts "Exercise 1:"
puts "The code would print Breakfast because Breakfast is being returned by the method which is being printed."
def meal
  return 'Breakfast'
end

puts meal

puts "Exercise 2:"
puts "This code would also print out what's in the method (Evening). It doesn't need return in this instance."
def meal
  'Evening'
end

puts meal

puts "Exercise 3:"
puts "This code would output Breakfast because the return ends the method and sends out the info."
def meal
  return 'Breakfast'
  'Dinner'
end

puts meal

puts "Exercise 4:"
puts "This code would also put out Dinner then Breakfast due to the position of the return line."
def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

puts "Exercise 5:"
puts "It will output Dinner from inside the method but the p will return a nil because the method doesn't have a value."
def meal
  'Dinner'
  puts 'Dinner'
end

p meal

puts "Exercise 6:"
puts "It will output only Breakfast because the return line cuts off the rest of the lines."
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal

puts "Exercise 7:"
puts "The method will count from 0 to 5. This is due to the .times. It counts out the number as sheep then prints it."
def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

puts "Exercise 8:"
puts "This one will print as above then 10 will be output and printed outside the method."
def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

puts "Exercise 9:"
puts "This one starts counting but when 3 is reached it stops. the p comes back as nil."
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

puts "Exercise 10:"
puts "The method would return 1 because that is what is defined and any non 0 or false comes back as true."
def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number
