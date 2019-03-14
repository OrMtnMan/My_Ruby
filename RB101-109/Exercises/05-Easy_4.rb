puts 'Exercise 1:'
def st_ln_st(st_a, st_b)
  st_a.length > st_b.length ? st_b + st_a + st_b : st_a + st_b + st_a
end

puts st_ln_st('abc', 'defgh')
puts st_ln_st('abcde', 'fgh')
puts st_ln_st('', 'xyz')

puts 'Exercise 2:'
def century(yr)
  cen = (yr.to_f/100).ceil.to_i.to_s
  suf_ary = ['th', 'st', 'nd', 'rd', 'th', 'th', 'th', 'th', 'th', 'th']
  if cen.end_with?('11', '12', '13')
    cen << suf_ary[0]
  else
    cen << suf_ary[cen[-1].to_i]
  end
end

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)
puts century(10103)
puts century(1052)
puts century(1127)
puts century(11201)

puts 'Exercise 3:'
def leap_year?(yr)
  ((yr % 4).zero? && !(yr % 100).zero?) || (yr % 400).zero?
end

puts leap_year?(2016)
puts leap_year?(2015)
puts leap_year?(2100)
puts leap_year?(2400)
puts leap_year?(240000)
puts leap_year?(240001)
puts leap_year?(2000)
puts leap_year?(1900)
puts leap_year?(1752)
puts leap_year?(1700)
puts leap_year?(1)
puts leap_year?(100)
puts leap_year?(400)

puts 'Exercise 4:'
def leap_year_BE?(yr)
  (yr < 1752 && (yr % 4).zero?) || (yr >= 1752 && leap_year?(yr))
end

puts leap_year_BE?(2016)
puts leap_year_BE?(2015)
puts leap_year_BE?(2100)
puts leap_year_BE?(2400)
puts leap_year_BE?(240000)
puts leap_year_BE?(240001)
puts leap_year_BE?(2000)
puts leap_year_BE?(1900)
puts leap_year_BE?(1752)
puts leap_year_BE?(1700)
puts leap_year_BE?(1)
puts leap_year_BE?(100)
puts leap_year_BE?(400)

puts 'Exercise 5:'
def multisum(nr)
  sum_dump = 0
  (nr + 1).times do |n|
    sum_dump += n if ((n % 3).zero? || (n % 5).zero?)
  end
  sum_dump
end

puts multisum(3)
puts multisum(5)
puts multisum(10)
puts multisum(1000)

puts 'Exercise 6:'
def running_total(ary)
  ary.map!.with_index { |n, i| i.zero? ? n : n += ary[i - 1] }
end

puts running_total([2, 5, 13]).inspect
puts running_total([14, 11, 7, 15, 20]).inspect
puts running_total([3]).inspect
puts running_total([]).inspect

puts 'Exercise 7:'
def string_to_integer(str)
  hsh = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
         '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }
  num_ary = str.tr('^0-9','').split(//).reverse
  eval (num_ary.map!.with_index { |n, i| hsh[n] * 10 ** i }).join("+")
end

puts string_to_integer('4321')
puts string_to_integer('570')

puts 'Exercise 8:'
def string_to_signed_integer(str)
  string_to_integer(str) * (str.start_with?('-') ? -1 : 1)
end

puts string_to_signed_integer('4321')
puts string_to_signed_integer('-570')
puts string_to_signed_integer('+100')

puts 'Exercise 9:'
def integer_to_string(int)
  hash = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4=> '4',
         5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }
  int.abs.digits.reverse.map!{ |n| hash[n] }.join
end

puts integer_to_string(4321)
puts integer_to_string(0)
puts integer_to_string(5000)

puts 'Exercise 10:'
def signed_integer_to_string(int)
  (int > 0 ? '+' : '') + (int < 0 ? '-' : '') + integer_to_string(int)
end

puts signed_integer_to_string(4321)
puts signed_integer_to_string(-123)
puts signed_integer_to_string(0)