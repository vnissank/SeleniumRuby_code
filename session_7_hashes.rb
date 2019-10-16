
puts '-------------------------------HASHES----------------------------------------------------------------------------'
#months = {"01" => "January", "02" => "February", "03" => "March", "04" => "April"}

puts "create months hash with default value 'any month'"
months = Hash.new("any month")
puts months
puts 'Add keys and values -------------'
months["01"] = "January"
months["02"] = "February"
months["03"] = "March"
months["04"] = "April"
puts 'Get the value of key 01'
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

puts 'Compare Hashes'
#The orders of each hashes are not compared.

h1 = { "a" => 1, "c" => 2 }
h2 = { "c" => 2, "a" => 1 }
puts h1 == h2

puts 'Mixed values hash'
hash_with_nil = { a: 1, b: false, c: nil, d: 2 }
puts hash_with_nil.inspect
puts 'Remove nils and assign to new hash'
compacted_hash = hash_with_nil.compact
puts compacted_hash.inspect
puts 'Change the original hash'
hash_with_nil.compact!
puts hash_with_nil.inspect


puts '-------------------------------Reference------------------------------------------------'


# Hashes:
# https://ruby-doc.org/core-2.5.5/Hash.html
# #https://www.tutorialspoint.com/ruby/ruby_hashes.htm
# # https://launchschool.com/books/ruby/read/hashes
# -----------------------------------------
#  run ruby code online
#  https://paiza.io/en/languages/ruby

puts '------------------------------ EXERCISES ----------------------------------------------'

# Exercise1.
# Create an array and print out the first and last elements
# my_array = Array[1,2,3,4,5,6,7]
# first = my_array[0]
# last = my_array[-1]
# puts "The first value is: #{first}"
# puts "The last value is: #{last}"

# Exercise2.
# Given the array of names with question marks at the end.
# names = Array['Peter?', 'Olga?', 'Sunder?', 'Len?']
# # Remove question mark from each name using Array.new with block of code. Should be one line of code.
# Array.new(names.length) { |e| names[e] = names[e].delete!'?' }
# puts names.inspect



