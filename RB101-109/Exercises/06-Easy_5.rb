puts 'Exercise 1:'
def ascii_value(str)
  a_val = 0
  a_ary = str.split(//)
  a_ary.each{|s| a_val += s.ord}
  a_val
end

puts ascii_value('Four score')
puts ascii_value('Launch School')
puts ascii_value('a')
puts ascii_value('')

puts 'Exercise 2:'
def time_of_day(min)
  min -= (min / 1440 * 1440)
  time_ary = []
  time_ary << min / 60 / 10
  time_ary << min / 60 % 10
  time_ary << min % 60 / 10
  time_ary << min % 60 % 10
  return "#{time_ary[0]}#{time_ary[1]}:#{time_ary[2]}#{time_ary[3]}"
end

puts time_of_day(0)
puts time_of_day(-3)
puts time_of_day(35)
puts time_of_day(-1437)
puts time_of_day(3000)
puts time_of_day(800)
puts time_of_day(-4231)

puts 'Exercise 3:'
def after_midnight(str)
  str_ary = str.split(':')
  str_ary.map!{|s| s.to_i}
  ret_val = (str_ary[1] + str_ary[0] * 60) % 1440
end

def before_midnight(str)
  str_ary = str.split(':')
  str_ary.map!{|s| s.to_i}
  ret_val = (1440 - (str_ary[1] + str_ary[0] * 60)) % 1440
end

puts after_midnight('00:00')
puts before_midnight('00:00')
puts after_midnight('12:34')
puts before_midnight('12:34')
puts after_midnight('24:00')
puts before_midnight('24:00')

puts 'Exercise 4:'
def swap(str)
  str_ary = str.split
  str_ary.map!{|s| s.reverse!}
  str_ary.join(' ')
end

puts swap('Oh what a wonderful day it is')
puts swap('Abcde')
puts swap('a')

puts 'Exercise 5:'
def cleanup(str)
  str.tr('^0-9' && '^A-z',' ').squeeze(' ')
end

puts cleanup("---what's my +*& line?")

puts 'Exercise 6:'
def word_sizes(str)
  ct_hsh = {}
  str.split.each do |s| 
    sym = s.length
    ct_hsh.key?(sym) ? ct_hsh[sym] += 1 : ct_hsh[sym] = 1
  end
  ct_hsh.sort.to_h
end

puts word_sizes('Four score and seven.').inspect
puts word_sizes('Hey diddle diddle, the cat and the fiddle!').inspect
puts word_sizes("What's up doc?").inspect
puts word_sizes('').inspect

puts 'Exercise 7:'
def word_sizes_b(str)
  ct_hsh = {}
  str.split.each do |s| 
    sym = s.tr('^A-z','').length
    ct_hsh.key?(sym) ? ct_hsh[sym] += 1 : ct_hsh[sym] = 1
  end
  ct_hsh.sort.to_h
end

puts word_sizes_b('Four score and seven.').inspect
puts word_sizes_b('Hey diddle diddle, the cat and the fiddle!').inspect
puts word_sizes_b("What's up doc?").inspect
puts word_sizes_b('').inspect

puts 'Exercise 8:'
def alphabetic_number_sort(ary)
  z_to_n = %w(zero one two three four five six seven eight nine ten eleven 
              twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  ary.map!{|n| z_to_n[n]}.sort!.map!{|w| z_to_n.index(w)}
end

p alphabetic_number_sort((0..19).to_a)

puts 'Exercise 9:'
def crunch(str)
  new_str = ''
  str.each_char {|c| new_str << c if c != new_str[-1]}
  new_str
end

puts crunch('ddaaiillyy ddoouubbllee')
puts crunch('4444abcabccba')
puts crunch('ggggggggggggggg')
puts crunch('a')
puts crunch('')

puts 'Exercise 10:'
def print_in_box(str)
  size = str.length
  puts "+-#{'-'*size}-+"
  puts "| #{' '*size} |"
  puts "| #{str} |"
  puts "| #{' '*size} |"
  puts "+-#{'-'*size}-+"
end

puts print_in_box('To boldly go where no one has gone before.')

puts 'Exercise 11:'
puts 'It will be a different object than the one passed within.'
puts 'This is because the split made a new aray object.'
puts 'So, the mutating methods are on the new object.'
puts print_in_box('')