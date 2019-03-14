puts 'Practice Problem 1:'
arr = ['10', '11', '9', '7', '8']

p arr.sort {|a, b| b.to_i <=> a.to_i}

puts 'Practice Problem 2:'
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

p books.sort_by {|b| b[:published]}

puts 'Practice Problem 3:'
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

puts arr1[2][1][3]
puts arr2[1][:third][0]
puts arr3[2][:third][0][0]
puts hsh1['b'][1]
puts hsh2[:third].key(0)

puts 'Practice Problem 4:'
arr1 = [1, [2, 3], 4]

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

hsh1 = {first: [1, 2, [3]]}

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

arr1[1][1] = 4
arr2[2] = 4
hsh1[:first][2][0] = 4
hsh2[['a']][:a][2] = 4

p arr1
p arr2
p hsh1
p hsh2

puts 'Practice Problem 5:'
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
ttl_male_age = 0
munsters.each_value{|h| ttl_male_age += h["age"] if h["gender"] == "male"}
puts ttl_male_age

puts 'Practice Problem 6:'
munsters.each_value{|h| puts "#{munsters.key(h)} is a #{h["age"]}-year-old #{h["gender"]}"}

puts 'Practice Problem 7:'
puts 'The final value of a would be 2. "a" didn\'t change because it has never been referenced directly.'
puts 'The final value of b would be [3, 8]. This is because the array point is referenced to change.'
puts 'The value of arr would have changes for the change to "a".'

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

puts a

p b

puts 'Practice Problem 8:'
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
vow = %w(a e i o u)
hsh.each_value{|a| a.each{|s| s.each_char {|c| puts c if vow.include?(c.downcase)}}}

puts 'Practice Problem 9:'
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
arr.each{|a| a.sort!{|a, b| b <=> a}}
p arr

puts 'Practice Problem 10:'
new_ary = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |h|
  new_hsh = {}
  h.each{|k, v| new_hsh[k] = v + 1}
  new_hsh
end

p new_ary

puts 'Practice Problem 11:'
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
arr.each{|a| a.reject!{|n| (n % 3) > 0 }}
p arr

puts 'Practice Problem 12:'
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
hsh = {}
arr.each{|a| hsh[a[0]] = a[1]}
p hsh

puts 'Practice Problem 13:'
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
arr.sort_by!{|a| a.select{|n| n.odd?}}
p arr

puts 'Practice Problem 14:'
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
new_ary = []
hsh.each_value do |f| 
  if f[:type] == 'fruit'
    new_ary << f[:colors].map!{|s| s.capitalize}
  else
    new_ary << f[:size].upcase
  end
end
p new_ary

puts 'Practice Problem 15:'
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
arr.select! do |h|
  h.all? do |k, v|
    v.all? do |i|
      i.even?
    end
  end
end
p arr

puts 'Practice Problem 16:'
def gen_UUID
  uuid = ''
  [8, 4, 4, 4, 12].each do |ct|
    ct.times do |_|
      uuid << %w(0 1 2 3 4 5 6 7 8 9 a b c d e f).sample
    end
    uuid << '-' if ct < 12
  end
  return uuid
end

puts gen_UUID