puts 'Exercise 1:'
def greetings(ary, hash)
  puts "Hello, #{ary.join(' ')}! Nice to have a" +
       " #{hash[:title]} #{hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

puts 'Exercise 2:'
def twice(int)
  mid = (int.to_s.length / 2)
  return int if int.to_s[0..(mid - 1)] == int.to_s[mid..-1]
  int * 2
end

puts twice(37)
puts twice(44)
puts twice(334433)
puts twice(444)
puts twice(107)
puts twice(103103)
puts twice(3333)
puts twice(7676)
puts twice(123_456_789_123_456_789)
puts twice(5)

puts 'Exercise 3:'
def negative(nr)
  nr < 0 ? nr : nr * -1
end

puts negative(5)
puts negative(-3)
puts negative(0)

puts 'Exercise 4:'
def sequence(nr)
  (1..nr).to_a
end

p sequence(5)
p sequence(3)
p sequence(1)

puts 'Exercise 5:'
def uppercase?(str)
  str == str.upcase
end

p uppercase?('t')
p uppercase?('T')
p uppercase?('Four Score')
p uppercase?('FOUR SCORE')
p uppercase?('4SCORE!')
p uppercase?('')

puts 'Exercise 6:'
def word_lengths(str)
  str.split.map!{|s| s + ' ' + s.length.to_s}
end

p word_lengths("cow sheep chicken")
p word_lengths("baseball hot dogs and apple pie")
p word_lengths("It ain't easy, is it?")
p word_lengths("Supercalifragilisticexpialidocious")
p word_lengths("")

puts 'Exercise 7:'
def swap_name(str)
  str.split.reverse.join(", ")  
end

puts swap_name('Joe Roberts')

puts 'Exercise 8:'
def sequence(ct, nr)
  ret_ary = []
  ct.times {|i| ret_ary << nr * (1 + i)}
  ret_ary
end

p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 1000000)

puts 'Exercise 9:'
def get_grade(g_a, g_b, g_c)
  grade = %w(F F F F F F D C B A A)
  grade[(g_a + g_b + g_c)/30]
end

puts get_grade(95, 90, 93)
puts get_grade(50, 50, 95)

puts 'Exercise 10:'
def buy_fruit(ary)
  new_ary = []
  ary.each{|a| a[1].times{|_| new_ary << a[0]}}
  new_ary
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])