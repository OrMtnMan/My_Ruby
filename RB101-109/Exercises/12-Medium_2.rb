require 'date'

puts 'Exercise 1:'
file = File.read('pg84.txt')
sentences = file.split(/\.|\?|!/)
long_sent = sentences.max_by{|s| s.split.length}
count = long_sent.split.length

puts "#{long_sent}"
puts "Containing #{count} words"

puts 'Exercise 2:'
def block_word?(str)
  ary_a = %w(B G V X R L D F Z C J N H)
  ary_b = %w(O T I K E Y Q S M P W A U)
  str_ary = str.upcase.split(//)
  str_ary_comp = str_ary.map do|c| 
    ary_a.include?(c) ? ary_b[ary_a.index(c)] : ary_a[ary_b.index(c)]
  end
  str_ary.each do |c|
    return false if str_ary.count(c) > 1 || str_ary_comp.include?(c)
  end
  true
end

p block_word?('BATCH')
p block_word?('BUTCH')
p block_word?('jest')

puts 'Exercise 3:'
def letter_percentages(str)
  low_case = (str.count('a-z').to_f / str.size * 100).round(1)
  up_case = (str.count('A-Z').to_f / str.size * 100).round(1)
  { lowercase: low_case, uppercase: up_case, neither: (100 - low_case - up_case) }
end

p letter_percentages('abCdef 123')
p letter_percentages('AbCd +Ef')
p letter_percentages('123')

puts 'Exercise 4:'
def balanced?(str)
  ctr = 0
  str.split(//).each do |c|
    ctr += 1 if c == '('
    ctr -= 1 if c == ')'
    return false if ctr < 0
  end
  ctr.zero? ? true : false
end

puts balanced?('What (is) this?')
puts balanced?('What is) this?')
puts balanced?('What (is this?')
puts balanced?('((What) (is this))?')
puts balanced?('((What)) (is this))?')
puts balanced?('Hey!')
puts balanced?(')Hey!(')
puts balanced?('What ((is))) up(')

puts 'Exercise 5:'
def triangle(s_a, s_b, s_c)
  tri_ary = [s_a, s_b, s_c]
  return :invalid if tri_ary.min(2).sum <= tri_ary.max
  return :equilateral if tri_ary.sum / 3 == tri_ary[0]
  return :scalene if tri_ary.uniq.size == 3
  :isosceles
end

p triangle(3, 3, 3)
p triangle(3, 3, 1.5)
p triangle(3, 4, 5)
p triangle(0, 3, 3)
p triangle(3, 1, 1)

puts 'Exercise 6:'
def triangle_b(a_a, a_b, a_c)
  tri_ary = [a_a, a_b, a_c]
  return :invalid unless tri_ary.sum == 180 && !tri_ary.include?(0)
  return :right if tri_ary.include?(90)
  return :obtuse if tri_ary.count{|n| n > 90} == 1
  :acute
end

p triangle_b(60, 70, 50)
p triangle_b(30, 90, 60)
p triangle_b(120, 50, 10)
p triangle_b(0, 90, 90)
p triangle_b(50, 50, 50)

puts 'Exercise 7:'
def friday_13th(yr)
  d = Date.new(yr, 1, 1)
  ct = 0
  loop do
    break if d == Date.new(yr, 12, 31)
    ct += 1 if d.friday? && d.day == 13
    d = d.next
  end
  ct
end

puts friday_13th(2015)
puts friday_13th(1986)
puts friday_13th(2019)

puts 'Exercise 8:'
def featured(nr)
  nxt_nr = nr + 1
  nxt_nr += 1 until (nxt_nr % 7).zero? && nxt_nr.odd?
  loop do
    break if nxt_nr >= 10_000_000_000
    return nxt_nr if nxt_nr.to_s.length == nxt_nr.digits.uniq.size
    nxt_nr += 14
  end
  'Error, no featured numbers remaining'
end

puts featured(12)
puts featured(20)
puts featured(21)
puts featured(997)
puts featured(1029)
puts featured(999_999)
puts featured(999_999_987)
puts featured(9_999_999_999)

puts 'Exercise 9:'
def bubble_sort!(ary)
  full_pass = 0
  while full_pass == 0
    full_pass = 1
    ary.map!.with_index do |obj, i|
      if (i + 1) == ary.size || obj < ary[i + 1]
        obj
      else
        sw_val = ary[i + 1]
        ary[i + 1] = obj
        full_pass = 0
        sw_val
      end
    end
  end
  ary
end

p bubble_sort!([5, 3])
p bubble_sort!([6, 2, 7, 1, 4])
p bubble_sort!(%w(Sue Pete Alice Tyler Rachel Kim Bonnie))

puts 'Exercise 10:'
def sum_square_difference(nr)
  (1..nr).sum**2 - (1..nr).map{|n| n**2}.sum
end

puts sum_square_difference(10)
puts sum_square_difference(1)
puts sum_square_difference(100)