puts 'Exercise 1:'
def rotate_array(ary)
  new_ary = ary
  rot = new_ary.shift
  new_ary << rot
end

array = [7, 3, 5, 2, 9, 1]
p rotate_array([7, 3, 5, 2, 9, 1])
p array
p rotate_array(['a', 'b', 'c'])
p rotate_array(['a'])

puts 'Exercise 2:'
def rotate_rightmost_digits(nr, ct)
  nr_ary = nr.to_s.split(//)
  rot_ary = nr_ary.pop(ct)
  nr_ary << rotate_array(rot_ary)
  nr_ary.join.to_i
end

puts rotate_rightmost_digits(735291, 1)
puts rotate_rightmost_digits(735291, 2)
puts rotate_rightmost_digits(735291, 3)
puts rotate_rightmost_digits(735291, 4)
puts rotate_rightmost_digits(735291, 5)
puts rotate_rightmost_digits(735291, 6)

puts 'Exercise 3:'
def max_rotation(nr)
  len = nr.to_s.length
  len.times do |ct|
    nr = rotate_rightmost_digits(nr, len - ct)
  end
  nr
end

puts max_rotation(735291)
puts max_rotation(3)
puts max_rotation(35)
puts max_rotation(105)
puts max_rotation(8_703_529_146)

puts 'Exercise 4:'
def lights_on(nr)
  on_off_ary = Array.new(nr, 0)
  nr.times do |ct|
    on_off_ary.map!.with_index do |n, i|
      ((i + 1) % (ct + 1)).zero? ? (n.zero? ? 1 : 0) : n
    end
  end
  on_ary = on_off_ary.map.with_index {|n, i| n > 0 ? n = i + 1 : 0}
  on_ary.reject! {|n| n.zero?}
  puts "#{on_off_ary.sum} lights are on: #{on_ary.to_s}"
end

lights_on(5)
lights_on(10)

puts 'Exercise 5:'
def diamond(ct)
  ct.times{|n| puts ("*" * (n + 1)).center(ct) if (n + 1).odd?}
  ct.times{|n| puts ("*" * (ct - (n + 1))).center(ct) if (ct - (n + 1)).odd?}
end

diamond(1)
diamond(3)
diamond(9)

puts 'Exercise 6:'
def minilang(str)
  reg = 0
  stack = []
  str.split.each do |op|
    puts reg if op == 'PRINT'
    reg = op.to_i if op.match?(/[0-9]/)
    stack.push(reg) if op == 'PUSH'
    reg *= stack.pop if op == 'MULT'
    reg /= stack.pop if op == 'DIV'
    reg %= stack.pop if op == 'MOD'
    reg += stack.pop if op == 'ADD'
    reg -= stack.pop if op == 'SUB'
    reg = stack.pop if op == 'POP'
  end
end

minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')

puts 'Exercise 7:'
def word_to_digit(str)
  strs = %w(zero one two three four five six seven eight nine)
  str_ary = str.split('. ').map!{|a| a.split(' ')}
  str_ary.map! do |ary|
    ary.map!{|s| strs.include?(s.downcase) ? strs.index(s) : s}
    ary.join(' ')
  end
  str_ary.join('. ')
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.')

puts 'Exercise 8:'
def fibonacci(nr)
  return 1 if nr <= 2
  fibonacci(nr - 2) + fibonacci(nr - 1)
end

puts fibonacci(1)
puts fibonacci(2)
puts fibonacci(3)
puts fibonacci(4)
puts fibonacci(5)
puts fibonacci(12)
puts fibonacci(20)

puts 'Exercise 9:'
def fibonacci_proc(nr)
  ret_nr = 0
  pnr_a = 0
  pnr_b = 0
  nr.times do |n|
    if n <= 1
      ret_nr = 1
      pnr_a = 1
      pnr_b = 1
    else
      ret_nr = pnr_a + pnr_b
      pnr_b = pnr_a
      pnr_a = ret_nr
    end
  end
  ret_nr
end

puts fibonacci_proc(20)
puts fibonacci_proc(100)
puts fibonacci_proc(100_001)

puts 'Exercise 10:'
def fibonacci_last(nr)
  fibonacci_proc(nr % 60).to_s[-1].to_i
end

puts fibonacci_last(15)
puts fibonacci_last(20)
puts fibonacci_last(100)
puts fibonacci_last(100_001)
puts fibonacci_last(1_000_007)
puts fibonacci_last(123456789)