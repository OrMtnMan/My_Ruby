puts "Exercise 1:"
def repeat(str,cnt)
	while cnt > 0 do
		puts str
		cnt -= 1
	end
end

repeat('Hello', 3)
puts "-----------------------------------"
puts "Exercise 2:"
def is_odd?(num)
	num.odd?
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)
puts "-----------------------------------"
puts "Exercise 3:"
def digit_list(numba)
	if numba.negative?
		"Only positive integers please."
	else
		p numba.to_s.split('').map {|n| n.to_i}
	end
end

puts digit_list(12345) == [1, 2, 3, 4, 5] 
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4] 
puts "-----------------------------------"
puts "Exercise 4:"
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences (ary)
	count = {}
	ary.each do |veh|
		if count.has_key?(veh.to_sym)
			count[veh.to_sym] += 1
		else
			count[veh.to_sym] = 1
		end
	end
	count.each_pair{|k,v| puts "#{k.to_s} => #{v}"}
end

count_occurrences(vehicles)
puts "-----------------------------------"
puts "Exercise 5:"
def reverse_sentence(str)
	words = str.split
	str2 = ''
	words.reverse_each{|w| str2+= w+' '}
	if str2 == ''
		''
	else
		str2.strip!
	end
end

puts reverse_sentence('')
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World')
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words')
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts "-----------------------------------"
puts "Exercise 6:"
def reverse_words(str)
	wrd_ary = str.split
	str2 = ''
	wrd_ary.map do |w|
		if w.length >= 5
			w.reverse!
		end
		str2 += w+' '
	end
	if str2 == ''
		''
	else
		str2.strip!
	end
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School') 
puts "-----------------------------------"
puts "Exercise 7:"
def stringy(nr)
	od = '0'
	ev = '0'
	str = ''
	nr.odd? ? od = '1': ev = '1'
	while nr > 0 do
		nr.odd? ? str += od : str += ev
		nr -= 1
	end
	return str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts "-----------------------------------"
puts "Exercise 8:"
def average(ary)
	summ = 0
	ary.map {|nr| summ += nr}
	avg = summ/ary.length
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts "-----------------------------------"
puts "Exercise 9:"
def sum(int)
	ttl = 0
	int.to_s.split('').map {|n| ttl += n.to_i}
	return ttl
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
puts "-----------------------------------"
puts "Exercise 10:"
def calculate_bonus(int, bool)
	bool ? int/2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000