puts "------------------------------ DATA TYPES --------------------------------------"

puts 'string variable----------'
first_variable = 'first string'
#print the variable
puts first_variable

puts 'numbers------------------'
num1 = 3
num2 = 4
sum = num1 + num2
puts sum

puts 'decimals------------------'

dec1 = 3.5
dec2 = 4.123
sum = dec1 + dec2
puts sum

puts 'Constants-----------------'
VAR1 = 100
VAR2 = 200
puts VAR1
puts VAR2

puts 'Null---------------------'
a = nil
puts a
puts a.inspect
a = 5
puts a

puts 'Boolean------------------'
flag = false
puts flag
flag = true
puts flag

puts 'Array----------------------'
#Ruby arrays are ordered, integer-indexed collections of any object.
arr = [0, 1, 2, 3]
puts arr
puts arr.inspect
puts arr[1]

puts 'Hashes---------'
#A Hash is a collection of key-value pairs. Keys should be unique
months_hash = {'01' => 'January', '02' => 'February', '03' => 'March'}
month = months_hash['01']
puts month

months_hash = {1 => 'January', 2 => 'February', 3 => 'March'}
month = months_hash[2]
puts month

#puts 'Symbols---------'
## Symbols are used to represent other objects. Several objects also have to_sym methods. These methods convert those objects to symbols.
## Ruby symbols are often used as hash keys, because we do not need full capabilities of a string objects for a key.
#months_hash = {:january => '01', :february => '02', :march => '03'}
#month = months_hash[:march]
#puts month

puts "------------------------------ CONVERSION OF TYPES -----------------------------------------"

str4 = '4'
object_class = str4.class
object_inspect = str4.inspect
puts object_class
puts object_inspect

puts"------------------------------------------------------"
num4 = str4.to_i
object_class = num4.class
object_inspect = num4.inspect
puts object_class
puts object_inspect
puts num4 + 3

#dec4 = num4.to_f
#object_class = dec4.class
#object_inspect = dec4.inspect
#puts object_class
#puts object_inspect

#-------------------------------Reference------------------------------------------------"

# variables:
# https://www.tutorialspoint.com/ruby/ruby_variables.htm
# https://www.w3resource.com/ruby/ruby-literals.php

# Strings:
# https://ruby-doc.org/core-2.5.5/String.html#

# Symbols:
# https://ruby-doc.org/core-2.5.0/Symbol.html
# https://launchschool.com/books/ruby/read/basics#symbols

# Arrays:
# https://ruby-doc.org/core-2.5.0/Array.html

# Hash
# https://ruby-doc.org/core-2.5.0/Hash.html

# Exceptions:
# https://www.tutorialspoint.com/ruby/ruby_exceptions.htm
# https://www.honeybadger.io/blog/ruby-exception-vs-standarderror-whats-the-difference/

# run ruby code online
# https://paiza.io/en/languages/ruby

puts "------------------------------ EXERCISES -----------------------------------------------"

# Convert the number with floating decimal point to string and output the class and value
#  dec = 1234567.89
#  str = dec.to_s
#  str_class =
#  puts

# Create a hash "team_members" , use names as keys and age as values.
# Get the age of one specific team member and output it.
# team_members = {'Olga' => '45', 'Abbas' => '40', 'Sunder' => '35'}
# olga_age = team_members['Olga']
# puts olga_age

