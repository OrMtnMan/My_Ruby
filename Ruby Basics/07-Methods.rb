puts "Exercise 1:"
def print_me
	puts "I'm printing within the method!"
end

print_me

puts "Exercise 2:"
def print_me
	"I'm printing within the method!"
end

puts print_me

puts "Exercise 3:"
def hello
	"Hello"
end
def world
	"World"
end

puts hello+" "+world

puts "Exercise 4:"
def greet
	hello+" "+world
end

puts greet

puts "Exercise 5:"
def car(make,model)
	puts make+" "+model
end
car('Toyota','Corolla')

puts "Exercise 6:"
def time_of_day(dayl)
	puts "It's daytime!" if dayl
	puts "It's nighttime!" if !dayl
end

daylight = [true, false].sample
time_of_day(daylight)

puts "Exercise 7:"
def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

puts "Exercise 8:"
def assign_name(name='Bob')
	return name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

puts "Exercise 9:"
def add (n1,n2)
	return n1+n2
end
def multiply (n1,n2)
	return n1*n2
end
puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

puts "Exercise 10:"
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']
def name(array)
	return array[rand(4)]
end
def activity(array)
	return array[rand(3)]
end
def sentence(nm,act)
	nm+" went "+act+" today!"
end

puts sentence(name(names), activity(activities))