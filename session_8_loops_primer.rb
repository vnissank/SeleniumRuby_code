#Ruby loops
# https://www.tutorialspoint.com/ruby/ruby_loops.htm
#Loops in Ruby are used to execute the same block of code specified number of times.

puts "-------------------GENERIC DO LOOP ----------------------------------------"
3.times do |i|
  puts "executing the loop with i: #{i}"
end

puts "-------------------Looping through the string of characters ----------------------------------------"

#loops are very useful in combination with strings, arrays and other data types
#lets make a loop that iterates over the letters of a string, and prints out each

str = "loop demo"
puts "the string is: #{str}"
str.each_char do |x|
  puts x
end

puts "------------------------------ Iterate through array -------------------------"

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
  break if k == 4
end

puts "------------------------------ Iterate through hash -------------------------"


months = {"1" => "January", "2" => "February", "3" => "March"}
months.each do |key, value|
  puts "The key: #{key}, value: #{value}"
end

puts "------------------------------ while loop -------------------------"

x = 3
while x >= 0
  puts x
  x = x - 1
end

puts "------------------------------ until loop -------------------------"
until x < 0
  puts x
  x -= 1
end

puts "-------------------------------Reference------------------------------------------------"
#there are many different syntax for loops in ruby, especially as you look at more data types
#learn a few ways to do loops and focus on the concepts
#Loops:
# https://launchschool.com/books/ruby/read/loops_iterators
#
# Strings:
# https://ruby-doc.org/core-2.5.5/String.html#method-i-each_char
#
# Ruby arrays:
# https://ruby-doc.org/core-2.5.5/Array.html#method-i-each

puts "------------------------------ Exercises -------------------------"

#Create an array of numbers 10 to 20.
# Use the loop of any kind to output the value of each element and break the loop if the value equals to 18
