#a loop is a way to repeat blocks of code under certain conditions
#use the following code as a simple way to do a loop
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

puts "-----------------------------------------------------------------------"
puts "------------------- ARRAY LOOP -----------------------------------------"
puts "-----------------------------------------------------------------------"

#lets do the same for an array
arr = [4,6,3,2,9]
p arr
for k in arr
    puts k
end

#there are many different syntax for loops in ruby, especially as you look at more data types
#learn a few ways to do loops and focus on the concepts

#do some practice with loops on arrays below