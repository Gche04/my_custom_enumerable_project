require_relative "main.rb"

arr = [1, 1, 2, 3, 5, 8, 13, 21, 34]

puts ""
puts "for my each"
arr.my_each do |item|
  print item + 1
  print " "
end
puts ""

puts ""
puts "for my all?"
puts arr.my_all?{|value| value > 0}
puts arr.my_all?{|value| value > 10}
puts arr.my_all?{|value| value < 5}

puts ""
puts "for my_count"
puts arr.my_count
puts arr.my_count {|val| val > 5}

puts ""
puts "for my_map"
print arr.my_map { |val| val * 2 }
puts ""

puts ""
puts "for my_any?"
puts arr.my_any?(&:even?)

puts ""
puts "for my_each_with_index"
arr.my_each_with_index do |item|
  print item
  print " "
end
puts ""

puts ""
arr.my_each_with_index do |item, idx|
  puts "#{item * 2} at index #{idx * 2}"
end

puts ""
puts "for my_none?"
puts arr.my_none? { |val| val < 0 }
puts arr.my_none? { |val| val == 1 }

puts ""
puts "for my_inject"
puts arr.my_inject(0) { |sum, value| sum + value }
puts arr.my_inject(1) { |prod, value| prod * value }
puts arr.my_inject(100) { |sum, value| sum + value }

puts ""
puts "for my_select"
puts arr.my_select { |value| value > 10 }
puts arr.my_select { |value| value > 40 }
