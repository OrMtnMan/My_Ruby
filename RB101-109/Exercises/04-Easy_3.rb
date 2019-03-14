def prompt(message)
  puts '==> ' + message
end

prompt 'Exercise 1:'
nr_ary = []
count = %w(1st 2nd 3rd 4th 5th last)
check = 0
in_ary = ['appears', 'doesn\'t appear']
in_there = ''

6.times do |n|
  prompt "Please enter the #{count[n]} number:"
  input = gets.chomp.to_i
  n < 5 ? nr_ary << input : check = input
end

nr_ary.include?(check) ? in_there = in_ary[0] : in_there = in_ary[1]

prompt "The number #{check} #{in_there} in #{nr_ary.inspect}"

prompt 'Exercise 2:'
nrs = []
count = %w(first second)
ops = %w(+ - * / % **)

2.times do |n|
  prompt "Please enter the #{count[n]} number:"
  nrs << gets.chomp.to_i.abs
end

6.times do |n|
  if nrs[1].zero? && (ops[n] == '/' || ops[n] == '%')
    prompt 'Divide by zero error!'
  else
    prompt "#{nrs[0]} #{ops[n]} #{nrs[1]} = #{eval(nrs[0].to_s+ops[n]+nrs[1].to_s)}"
  end
end

prompt 'Exercise 3:'
prompt 'Please write a word or multiple words:'
words = gets.chomp
nr_char = words.delete(' ').length
multi = (nr_char > 1)

prompt "There #{multi ? 'are' : 'is'} #{nr_char} character#{multi ? 's' : ''} in \"#{words}\"."

prompt 'Exercise 4:'
def multiply(nr_a, nr_b)
  nr_a * nr_b
end

prompt multiply(5, 3).to_s

prompt 'Exercise 5:'
def square(nr)
  multiply(nr, nr)
end

prompt square(5).to_s

prompt 'Exercise 6:'
def xor?(bool_a, bool_b)
  return false if (bool_a && bool_b) || (!bool_a && !bool_b)
  return true if bool_a || bool_b
end

prompt xor?(5.even?, 4.even?).to_s
prompt xor?(5.odd?, 4.odd?).to_s
prompt xor?(5.odd?, 4.even?).to_s
prompt xor?(5.even?, 4.odd?).to_s

prompt 'Exercise 7:'
def oddities(ary)
  ary2 = []
  ary.length.times do |i|
    ary2 << ary[i] if (i + 1).odd? 
  end
  ary2
end

prompt oddities([2, 3, 4, 5, 6]).to_s
prompt oddities([1, 2, 3, 4, 5, 6]).to_s
prompt oddities(['abc', 'def']).to_s
prompt oddities([123]).to_s
prompt oddities([]).to_s

prompt 'Exercise 8:'
def palindrome?(word)
  word == word.reverse
end

prompt palindrome?('madam').to_s
prompt palindrome?('Madam').to_s
prompt palindrome?("madam i'm adam").to_s
prompt palindrome?('356653').to_s

prompt 'Exercise 9:'
def palindrome_a?(word)
  word = word.downcase.delete('^a-z0-9')
  palindrome?(word)
end

prompt palindrome_a?('madam').to_s
prompt palindrome_a?('Madam').to_s
prompt palindrome_a?("Madam, I'm Adam").to_s
prompt palindrome_a?('356653').to_s
prompt palindrome_a?('356a653').to_s
prompt palindrome_a?('123ab321').to_s

prompt 'Exercise 10:'
def palindrome_n?(nr)
  nr.integer? && palindrome?(nr.to_s)
end

prompt palindrome_n?(34543).to_s
prompt palindrome_n?(123210).to_s
prompt palindrome_n?(22).to_s
prompt palindrome_n?(5).to_s