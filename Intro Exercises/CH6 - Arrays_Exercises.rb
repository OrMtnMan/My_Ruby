puts "Exercise 1:"
arr = [1, 3, 5, 7, 9, 11]
number = 3
if arr.include?(number) 
	puts "#{number.to_s} is in there." 
end

puts "Exercise 2:"
puts "The first example combines the first array with a second making b,1; b,2; b,3; a,1; a,2; a,3."
puts "But the final line goes to the first item in the array b,1 and deletes the last item of that first nested array making just b."
puts "The second example adds the array [1, 2, 3] to bot a and b, making b,[1,2,3] and a,[1,2,3]."
puts "Then like example 1, it goes to the first item (the b one) and deletes the last element in that nested array leaving only the b."

puts "Exercise 3:"
puts "You can get 'example' by a reference like arr.last.first"
arr2 = [["test", "hello", "world"],["example", "mem"]]
puts arr2.last.first

puts "Exercise 4:"
puts "1. would output 5 because it uses the index method."
puts "2. would output an error because it is using brackets with the index function when it should be using ()"
puts "3. would output 8 because it is directly referencing the number in the brackets."

puts "Exercise 5:"
puts "a would output 'e'"
puts "b would output 'A'"
puts "c would output nil because the string only goes to 18"

puts "Exercise 6:"
puts "The issue is, the direct reference needs an integer for the array index reference, not the value."
puts "So, change 'margaret' to 4."

puts "Exercise 7:"
array = [1,2,3,4,5]
array2 = []
p array
array.each do |nr|
	array2.push(nr+2)
end
p array2
