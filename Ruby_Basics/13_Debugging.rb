puts "Exercise 1:"
puts "The first example would have an error for trying to put too many arguments through the method."
puts "To fix that, it should be an array."
puts "The second error will be for trying to apply the #each to an integer when it should be an array."

puts "Exercise 2:"
puts "The issue is that the sample is of a string version of true and false, not an actual boolean."
puts "A non boolean variable that isn't nil will always be a true boolean."
def predict_weather
  sunshine = ['true', 'false'].sample

  if sunshine == 'true'
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather

puts "Exercise 3:"
puts "The issue is that the gets.chomp returns a string which you are then performing math on."
puts "To fix it, you need to use gets.chomp.to_i"
def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"

puts "Exercise 4:"
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] << 'bowser'

p pets

puts "Exercise 5:"
puts "It is not working because you're using map instead of select"
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n if n.even?
end

p even_numbers
puts "This could be condensed to one line like so:"
p even_numbers = numbers.select {|n| n.even?}

puts "Exercise 6:"
puts "The issue is you need to use a return or the method will not return a value, it will instead be nil."
def get_quote(person)
  if person == 'Yoda'
    return 'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    return 'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

puts "Exercise 7:"
puts "The issue is, you are changing the value of balance instead of adjusting the value."
# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts balance

puts "Exercise 8:"
puts "The issue comes from the break if on the colors.length."
puts "the things array is shorter, so it should be things.length."
puts "ALSO, i as an array iterator will be 1 less than length. so add in a -1."
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > things.length-1

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end
puts "You could halve also fixed it by keeping the colors.length and putting -2."

puts "Exercise 9:"
puts "The issue is that your doing a *= on a 0 which will always be 0."
puts "You can fix it by changing product to 1."
def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end

p digit_product('12345')

puts "Exercise 10:"
puts "To get rid of the error, you need to add a .to_sym to the chomps line."
puts "This lets you actually reference a hash symbol."
puts "Now you're running into a second issue where the merge isn't sticking around for the final puts."
puts "Fix that with a bang on the merge."
player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase.to_sym

player.merge!(character_classes[input])

puts 'Your character stats:'
puts player