produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(full_hsh)
  new_hsh = {}
  full_hsh.each {|k, v| new_hsh[k] = v if v == 'Fruit'}
  new_hsh
end

p select_fruit(produce)

def double_numbers!(ary)
  ary.map!{|n| n * 2 }
end

my_numbers = [1, 4, 3, 7, 2, 6]

p double_numbers!(my_numbers)
p my_numbers

def double_odd_numbers!(ary)
  ary.map!{|n| n.odd? ? n * 2 : n }
end

my_numbers = [1, 4, 3, 7, 2, 6]

p double_odd_numbers!(my_numbers)
p my_numbers

def multiply(ary, nr)
  ary.map!{|n| n * nr }
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3)
p my_numbers