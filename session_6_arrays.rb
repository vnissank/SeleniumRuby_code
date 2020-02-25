
puts "------------------------------ ARRAYS ---------------------------------"
# Arrays are ordered, integer-indexed collections of any object.
# Array indexing starts at 0.
# A negative index is assumed relative to the end of the array -
# that is, an index of -1 indicates the last element of the array, -2 is the next to last element in the array, and so on.
# Ruby arrays grow automatically while adding elements to them.

puts '------------------------Array of numbers ------------------------------------------------------------------------'
arr = Array.new
arr[0] = 1
arr[1] = 2
arr[2] = 3
arr[3] = 4
size = arr.size
length = arr.length
puts arr.inspect

puts '------------------------Array of strings ------------------------------------------------------------------------'
names = Array['Peter', 'Olga', 'Sunder', 'Len']
names_length = names.length
puts names.inspect
puts 'add more elements'
names << 'Abbas'
names << 'Anthony'
names_length = names.length
puts names.inspect

puts '-----------------------Array of strings with predefined length --------------------------------------------------'
puts 'create array object with 8 elements'
names = Array.new(8)
puts names.inspect
puts 'assign values to 4 elements'
names[0] = 'Peter'
names[1] = 'Olga'
names[2] = 'Sunder'
names[3] = 'Len'
puts names.inspect
names_length = names.length
puts 'add more elements'
names << 'Abbas'
names << 'Anthony'
names << 'Melissa'
names_length = names.length
puts names.inspect
puts '-----------------------Remove nil elements and assign to new array -----------------------------------------------'
new_names = names.compact
puts new_names.inspect
#puts '-----------------------Change the original array -----------------------------------------------------------------'
#names_length = names.length
#names.compact!
#names_length = names.length
#puts names.inspect
puts '---------------------- Delete the element by value ---------------------------------------------------------------'
new_names.delete('Peter')
names_length = new_names.length
puts new_names.inspect

puts '------------------------Delete the element by index --------------------------------------------------------------'
new_names.delete_at(5)
names_length = new_names.length
puts new_names.inspect

puts '-----------------------Delete the last element -------------------------------------------------------------------'
new_names.pop
names_length = new_names.length
puts new_names.inspect
puts '---------------------Iterate through array ----------------------------------------------------------------------'
new_names.each do |x|
  x.downcase!
  puts x
end
puts new_names.inspect

#puts '---------------------Use block of code with Array.new -----------------------------------------------------------'
#changed_names = Array.new(names_length) { |e| names[e] = names[e]+'$' }
#puts changed_names.inspect
#
#puts '---------------------Iterate through array ----------------------------------------------------------------------'
#changed_names.each { |x| x.delete!('$') }
#puts changed_names.inspect

puts '------------------------------ MIXED ARRAY ----------------------------------------------------------------------'
#in ruby arrays can hold values of different types
mixed_arr = [1, 'some string', true]
puts mixed_arr

puts '------------------------------ ACCESSING ARRAY ELEMENTS ---------------------------------------------------------'
#indexing starts at 0
#find a value from an array with syntax: arr_name[index]
value_at_zero = mixed_arr[0]
puts "The value at zero is: #{value_at_zero}"

puts '------------------------------ LAST ELEMENTS -------------------------'
#the last index of an array is always at index: length - 1
value = mixed_arr[-1]
puts "The last value is: #{value}"
value = mixed_arr[-2]
puts "The value before the last is: #{value}"

puts '---------------------String is also treated as an array ---------------------------------------------------------'
test_str = 'this is test string'
one_char = test_str[1]
puts "The character number 2 in string is : #{one_char}"
mid_string = test_str[8..11]
puts "String charachters 8 to 11 : #{mid_string}"
end_string = test_str[-1]
puts "Last character in the string: #{end_string}"


puts '-------------------------------Reference------------------------------------------------'

# Ruby arrays:
# https://ruby-doc.org/core-2.5.5/Array.html
# -----------------------------------------
#  run ruby code online
#  https://paiza.io/en/languages/ruby

puts '------------------------------ EXERCISES ----------------------------------------------'

# Exercise1.
# Create an array and print out the first and last elements

# my_array = Array[1,2,3,4,5,6,7]
# first =
# last =
# puts "The first value is: #{first}"
# puts "The last value is: #{last}"

 #Exercise2.
 #Given the array of names with question marks at the end.
 #
 #names = Array['Peter?', 'Olga?', 'Sunder?', 'Len?']
 ## Remove question mark from each name using Array.new with block of code. Should be one line of code.
 #
 #Array.new(names.length) { |e| names[e] = names[e].delete!'?' }
 #puts names.inspect

