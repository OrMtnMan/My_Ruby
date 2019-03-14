puts 'Exercise 1:'
def sum_of_sums(ary)
  sum = 0
  ary.each_with_index{ |n, i| sum += (n*(ary.size - i)) }
  sum
end

puts sum_of_sums([3, 5, 2])
puts sum_of_sums([1, 5, 7, 3])
puts sum_of_sums([4])
puts sum_of_sums([1, 2, 3, 4, 5])

puts 'Exercise 2:'
puts 'Madlibs!'
hsh = {noun: '', verb: '', adjective: '', adverb: ''}
hsh.each do |k, v|
  puts "Enter the #{k.to_s}:"
  hsh[k] = gets.chomp
end
  
puts "Do you #{hsh[:verb]} your #{hsh[:adjective]} #{hsh[:noun]} #{hsh[:adverb]}? That's hilarious!"

puts 'Exercise 3:'
def substrings_at_start(str)
  new_ary = str.split(//)
  new_ary.map!.with_index {|c, i| i.zero? ? c : new_ary[i-1] + c}
end

p substrings_at_start('abc')
p substrings_at_start('a')
p substrings_at_start('xyzzy')

puts 'Exercise 4:'
def substrings(str)
  ret_ary = []
  str.chars.each_index do |i|
    (str.length - i).times do |ct|
      ret_ary << str[i..(ct + i)]
    end
  end
  ret_ary
end

p substrings('abcde')

puts 'Exercise 5:'
def palindromes(str)
  new_ary = []
  substrings(str).each {|s| new_ary << s if (s.length > 1 && s == s.reverse)}
  new_ary
end

p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')

puts 'Exercise 6:'
def fizzbuzz(nr_s, nr_e)
  (nr_s.. nr_e).each do |n|
    puts "#{n if n % 3 > 0 && n % 5 >0}#{'Fizz' if (n % 3).zero?}#{'Buzz' if (n % 5).zero?}"
  end
end

fizzbuzz(1, 15)

puts 'Exercise 7:'
def repeater(str)
  str.chars.map!{|c| c * 2}.join
end

puts repeater('Hello')
puts repeater('Good Job!')
puts repeater('')

puts 'Exercise 8:'
def double_consonants(str)
  str.chars.map!{|c| 'bcdfghjklmnpqrstvwxyz'.include?(c.downcase) ? c * 2 : c}.join
end

puts double_consonants('String')
puts double_consonants("Hello-World!")
puts double_consonants("July 4th")
puts double_consonants('')

puts 'Exercise 9:'
def reversed_number(int)
  int.to_s.reverse.to_i
end

puts reversed_number(12345)
puts reversed_number(12213)
puts reversed_number(456)
puts reversed_number(12000)
puts reversed_number(12003)
puts reversed_number(1)

puts 'Exercise 10:'
def center_of(str)
  half = (str.length / 2).floor
  return str[half] if str.length.odd?
  str[(half - 1) .. half] if str.length.even?
end

puts center_of('I love ruby')
puts center_of('Launch School')
puts center_of('Launch')
puts center_of('Launchschool')
puts center_of('x')