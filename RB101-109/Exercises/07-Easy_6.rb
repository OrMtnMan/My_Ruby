puts 'Exercise 1:'
def dms(nr)
  deg = nr.to_i
  min_a = ((nr.round(6) % 1 * 60).to_i / 10)
  min_b = ((nr.round(6) % 1 * 60).to_i % 10)
  sec_a = ((nr.round(6) % 1 * 60 % 1 * 60).to_i / 10)
  sec_b = ((nr.round(6) % 1 * 60 % 1 * 60).to_i % 10)
  "%(#{deg}°#{min_a}#{min_b}'#{sec_a}#{sec_b}\")"
end

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)

puts 'Exercise 2:'
def remove_vowels(ary)
  ary.map!{|s| s.tr('aeiouAEIOU', '')}
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)).inspect
puts remove_vowels(%w(green YELLOW black white)).inspect
puts remove_vowels(%w(ABC AEIOU XYZ)).inspect

puts 'Exercise 3:'
def find_fibonacci_index_by_length(dig)
  index = 3
  n_a = 1
  n_b = 2
  loop do
    sum = n_a + n_b
    n_a = n_b
    n_b = sum
    index += 1
    break if n_b.to_s.length == dig
  end
  index
end

puts find_fibonacci_index_by_length(2)
puts find_fibonacci_index_by_length(3)
puts find_fibonacci_index_by_length(10)
puts find_fibonacci_index_by_length(100)
puts find_fibonacci_index_by_length(1000)
puts find_fibonacci_index_by_length(10000)

puts 'Exercise 4:'
def list_rev(ary)
  new_ary = []
  ary.each{|a| new_ary.insert(0, a)}
  ary.map!.with_index{|a, i| new_ary[i] }
end

list = [1, 2, 3, 4]
puts list_rev(list).inspect
puts list.inspect
puts list_rev(%w( a b e d c)).inspect
puts list_rev(['abc']).inspect
puts list_rev([]).inspect

puts 'Exercise 5:'
def list_rev_b(ary)
  new_ary = []
  ary.each{|a| new_ary.insert(0, a)}
  new_ary
end

list = [1, 2, 3, 4]
puts list_rev_b(list).inspect
puts list.inspect
puts list_rev_b(%w( a b e d c)).inspect
puts list_rev_b(['abc']).inspect
puts list_rev_b([]).inspect

puts 'Exercise 6:'
def merge(ary_a, ary_b)
  ary_b.each{|x| ary_a << x if !ary_a.include?(x)}
  ary_a
end

puts merge([1, 3, 5], [3, 6, 9]).inspect

puts 'Exercise 7:'
def halvsies(ary_a)
  ary_b = []
  comb_ary = []
  ary_b << ary_a.pop(ary_a.size / 2)
  comb_ary << ary_a
  comb_ary << ary_b
end

puts halvsies([1, 2, 3, 4]).inspect
puts halvsies([1, 5, 2, 4, 3]).inspect
puts halvsies([5]).inspect
puts halvsies([]).inspect

puts 'Exercise 8:'
def find_dup(ary)
  ary.each{|n| return n if ary.count(n) > 1}
end

puts find_dup([1, 5, 3, 1]).inspect
puts find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
               38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
               14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
               78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
               89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
               41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
               55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
               85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
               40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
               7,  34, 57, 74, 45, 11, 88, 67,  5, 58]).inspect

puts 'Exercise 9:'
def does_have?(ary, nr)
  ary.each{|n| return true if n == nr }
  false
end

puts does_have?([1,2,3,4,5], 3)
puts does_have?([1,2,3,4,5], 6)
puts does_have?([], 3)
puts does_have?([nil], nil)
puts does_have?([], nil)

puts 'Exercise 10:'
def triangle(nr)
  nr_b = 1
  loop do
    puts ' ' * (nr - nr_b) + '*' * nr_b
    nr_b += 1
    break if nr < nr_b
  end
end

triangle(5)
triangle(9)