puts 'Exercise 1:'
def interleave(ary_a, ary_b)
  new_ary = ary_a
  ary_b.each.with_index{ |a, i| new_ary.insert((i * 2 + 1), a) }
  new_ary
end

p interleave([1, 2, 3], ['a', 'b', 'c'])

puts 'Exercise 2:'
def letter_case_count(str)
  hsh = { lowercase: 0, uppercase: 0, neither: 0 }
  str.chars.each do |c|
    hsh[:lowercase] += 1 if c.match(/[a-z]/)
    hsh[:uppercase] += 1 if c.match(/[A-Z]/)
    hsh[:neither] += 1 unless c.match(/[A-z]/)
  end
  hsh
end

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('') 

puts 'Exercise 3:'
def word_cap(str)
  str.split.each{|s| s.capitalize!}.join(' ')
end

puts word_cap('four score and seven')
puts word_cap('the javaScript language')
puts word_cap('this is a "quoted" word')

puts 'Exercise 4:'
def swapcase(str)
  str.split(//).each{|c| c.match(/[a-z]/) ? c.upcase! : c.downcase!}.join
end

puts swapcase('CamelCase')
puts swapcase('Tonight on XYZ-TV')

puts 'Exercise 5:'
def staggered_case(str)
  str.split(//).each.with_index do |c, i|
    (c.match(/[A-z]/) && i.even?) ? c.upcase! : c.downcase!
  end.join
end

puts staggered_case('I Love Launch School!')
puts staggered_case('ALL_CAPS')
puts staggered_case('ignore 77 the 444 numbers')

puts 'Exercise 6:'
def staggered_case_b(str)
  counter = 1
  str.split(//).each do |c|
    (c.match(/[A-z]/) && counter.odd?) ? c.upcase! : c.downcase!
    counter += 1 if (c.match(/[A-z]/))
  end.join
end

puts staggered_case_b('I Love Launch School!')
puts staggered_case_b('ALL CAPS')
puts staggered_case_b('ignore 77 the 444 numbers')

puts 'Exercise 7:'
def show_multiplicative_average(ary)
  mult = ary.inject(:*).to_f
  puts "The result is %0.3f" % [mult / ary.size]
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])

puts 'Exercise 8:'
def multiply_list(ary_a, ary_b)
  ary_a.map.with_index{|n, i| n * ary_b[i]}
end

p multiply_list([3, 5, 7], [9, 10, 11])

puts 'Exercise 9:'
def multiply_all_pairs(ary_a, ary_b)
  new_ary = []
  ary_a.each do |n|
    ary_b.each do |nr|
      new_ary << n * nr
    end
  end
  new_ary.sort!
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])

puts 'Exercise 10:'
def penultimate(str)
  str.split[-2]
end

puts penultimate('last word')
puts penultimate('Launch School is great!')