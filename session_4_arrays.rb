
puts "------------------------------ ARRAYS ---------------------------------"

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
s = arr.size
l = arr.length
puts arr.inspect

puts '------------------------Array of strings ------------------------------------------------------------------------'
names = Array['Peter', 'Olga', 'Sunder', 'Len']
names_length = names.length
puts 'add more elements'
names << 'Abbas'
names << 'Anthony'
names_length = names.length
puts names.inspect

puts '-----------------------Array of strings with predefined length --------------------------------------------------'
names = Array.new(8)
names[0] = 'Peter'
names[1] = 'Olga'
names[2] = 'Sunder'
names[3] = 'Len'
names_length = names.length
names << 'Abbas'
names << 'Anthony'
names << 'Melissa'
names_length = names.length
puts names.inspect
puts '-----------------------Remove nil elements and assign to new array -----------------------------------------------'
new_names = names.compact
puts new_names.inspect
puts '-----------------------Change the original array -----------------------------------------------------------------'
names_length = names.length
names.compact!
names_length = names.length
puts names.inspect

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

puts '---------------------Use block of code with Array.new -----------------------------------------------------------'
changed_names = Array.new(names_length) { |e| names[e] = names[e]+'$' }
puts changed_names.inspect

puts '---------------------Iterate through array ----------------------------------------------------------------------'
changed_names.each do |x|
  puts x
  x.delete!('$')
  puts x
end
puts changed_names.inspect

puts '------------------------------ MIXED ARRAY ----------------------------------------------------------------------'
#in ruby arrays can hold values of different types
mixed_arr = [1, 'some string', 3]
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

#TODO - move to separate file Hashes
puts '-------------------------------HASHES----------------------------------------------------------------------------'
#months = {"01" => "January", "02" => "February", "03" => "March", "04" => "April"}

months = Hash.new( "any month" )  # any_month is default value to be returned if key not found
months["01"] = "January"
months["02"] = "February"
months["03"] = "March"
months["04"] = "April"

first_month = months["01"]
puts first_month
keys = months.keys
puts keys
no_key = months["07"]
puts no_key
months["05"] = "May"
puts months.inspect
months.delete("05")
puts months.inspect
key_feb = months.key("February")
puts key_feb

#The orders of each hashes are not compared.

h1 = { "a" => 1, "c" => 2 }
h2 = { "c" => 2, "a" => 1 }
puts h1 == h2

hash_with_nil = { a: 1, b: false, c: nil, d: 2 }
puts hash_with_nil.inspect
compacted_hash = hash_with_nil.compact
puts compacted_hash.inspect
hash_with_nil.compact!
puts hash_with_nil.inspect


puts '-------------------------------Reference------------------------------------------------'

# Ruby arrays:
# https://ruby-doc.org/core-2.4.1/Array.html
# Hashes:
# https://ruby-doc.org/core-2.5.0/Hash.html
#Arrays are ordered, integer-indexed collections of any object.

  # #https://www.tutorialspoint.com/ruby/ruby_hashes.htm
# # https://launchschool.com/books/ruby/read/hashes

puts '------------------------------ EXERCISES ----------------------------------------------'

# Exercise1.
# Create an array and print out the first and last elements
my_array = Array[1,2,3,4,5,6,7]
first = my_array[0]
last = my_array[-1]
puts "The first value is: #{first}"
puts "The last value is: #{last}"

# Exercise2.
# Given the array of names with question marks at the end.
names = Array['Peter?', 'Olga?', 'Sunder?', 'Len?']
# Remove question mark from each name using Array.new with block of code. Should be one line of code.
Array.new(names.length) { |e| names[e] = names[e].delete!'?' }
puts names.inspect



