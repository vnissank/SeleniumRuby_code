#Ruby loops
# https://www.tutorialspoint.com/ruby/ruby_loops.htm
#Loops in Ruby are used to execute the same block of code specified number of times.

puts "-----------------------------------------------------------------------"
puts "-------------------GENERIC LOOP ----------------------------------------"
puts "-----------------------------------------------------------------------"
3.times do |i|
  puts "executing the loop with i: #{i}"
end

puts "-----------------------------------------------------------------------"
puts "-------------------STRING LOOP ----------------------------------------"
puts "-----------------------------------------------------------------------"

#loops are very useful in combination with strings, arrays and other data types

#lets make a loop that iterates over the letters of a string, and prints out each

str = "loop demo"
puts "the string is: #{str}"
str.each_char do |x|
  puts x
end


puts "------------------------------------------------------------------------------"
puts "------------------------------ Iterate through array -------------------------"
puts "------------------------------------------------------------------------------"

#https://www.tutorialspoint.com/ruby/ruby_arrays.htm
#This will iterate through all the elements:
#
array = [1, 2, 3, 4, 5, 6]

puts "Print values with Do loop -----------------------------------------------------------"
array.each do |x|
  puts x
end

puts "Iterate with block of code -----------------------------------------------------------"
array.each { |x| puts x + 10}

puts "Iterate with for loop -----------------------------------------------------------"

for k in array
    puts k
end

puts "------------------------------------------------------------------------------"
puts "------------------------------ Iterate through hash -------------------------"
puts "------------------------------------------------------------------------------"

#https://www.tutorialspoint.com/ruby/ruby_hashes.htm
# https://launchschool.com/books/ruby/read/hashes
#
months = {"1" => "January", "2" => "February", "3" => "March"}
months.each do |key, value|
  puts "The key: #{key}, value: #{value}"
end

puts "------------------------------------------------------------------------------"
puts "------------------------------ Exercises -------------------------"
puts "------------------------------------------------------------------------------"

#there are many different syntax for loops in ruby, especially as you look at more data types
#learn a few ways to do loops and focus on the concepts
# https://launchschool.com/books/ruby/read/loops_iterators

#do some practice with loops on arrays below