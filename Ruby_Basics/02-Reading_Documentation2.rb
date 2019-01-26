puts "Exercise 1:"
puts "Here is upcase"
a = "xyz"
puts a
puts a.upcase

puts "Exercise 2:"
a = %w(a b c d e)
p a.insert(3,5,6,7)

puts "Exercise 3:"
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts "Statement one will print [\"abc\",\"def\",\"ghi,jkl\",\"mno\",\"pqr,stu\",\"vwx\",\"yz\"]"
puts s.split.inspect
puts "Statement two will print [\"abc def ghi\",\"jkl mno pqr\",\"stu vwx yz\"]"
puts s.split(',').inspect
puts "Statement three will print ["\"abc def ghi\",\"jkl mno pqr,stu vwx yz\"]"
puts s.split(',',2).inspect
