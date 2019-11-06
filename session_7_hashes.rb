
puts '-------------------------------HASHES----------------------------------------------------------------------------'

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
puts 'Output all keys in hash'
keys = months.keys
puts keys
puts 'Access the key that is not in hash'
no_key = months["05"]
puts no_key
puts 'Add key 05'
months["05"] = "May"
puts months.inspect
puts 'Delete key 05'
months.delete("05")
puts months.inspect
puts 'Get the key of value February'
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

# Exercise.
# There is invert() function that returns a new hash created by using hash's values as keys, and the keys as values.
# Use the given hash below to flip the keys and values.
# output the value for 'dos' key
#
# my_hash = { :one => 'uno', :two => 'dos', :three => 'tres' }
# new_hash =
# puts "the value for 'dos' key is #{}"





