puts "-----------------------------------------------------------------------"
puts "------------------------------ ARRAYS ---------------------------------"
puts "-----------------------------------------------------------------------"
# Ruby arrays:
# https://ruby-doc.org/core-2.4.1/Array.html
#Arrays are ordered, integer-indexed collections of any object.
#let's make an array and print it out
num_arr = [1, 5, 3]
puts num_arr

puts "-----------------------------------------------------------------------"
puts "------------------------------ MIXED ARRAY ----------------------------"
puts "-----------------------------------------------------------------------"

#in ruby arrays can hold values of different types
mixed_arr = [1, "some string", 3]
p mixed_arr

puts "-----------------------------------------------------------------------"
puts "------------------------------ ARRAY ELEMENTS -------------------------"
puts "-----------------------------------------------------------------------"

#arrays denote the location of values as indexes, which start at 0
#find a value from an array with syntax: arr[index]
value_at_zero = mixed_arr[0]
puts "The value at zero is: #{value_at_zero}"

puts "-----------------------------------------------------------------------"
puts "------------------------------ ARRAY FIELDS  --------------------------"
puts "-----------------------------------------------------------------------"
#arrays have functions, since they are objects
#to get the length of an array use syntax: arr.length
length_of_array = mixed_arr.length
puts "The length of the array is: #{length_of_array}"

puts "-----------------------------------------------------------------------"
puts "------------------------------ LAST ELEMENTS -------------------------"
puts "-----------------------------------------------------------------------"

#length is helpful for finding the last element of an array
#the last index of an array is always at index: length - 1
last_value = mixed_arr[mixed_arr.length - 1]
puts "The last value is: #{last_value}"



puts "---------------------------------------------------------------------------------------"
puts "------------------------------ EXERCISES ----------------------------------------------"
puts "----------------------------------------------------------------------------------------"

#now you can create an array and print of the first and last elements below

