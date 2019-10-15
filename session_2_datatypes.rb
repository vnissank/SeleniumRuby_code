puts "------------------------------ VARIABLE TYPES --------------------------------------"

puts 'string variable----------'
first_variable = 'first string'

#print the variable
puts first_variable

puts 'numbers-----------'
num1 = 3
num2 = 4
sum = num1 + num2
puts sum

puts 'Constants-----------'
VAR1 = 100
VAR2 = 200
puts VAR1 + VAR2

puts 'Null-----------'
a = nil
puts a.inspect
a = 5
puts a

puts 'Boolean--------'
flag = false
puts flag
flag = true
puts flag

puts 'Array---------'
#Ruby arrays are ordered, integer-indexed collections of any object.
arr = [0, 1, 2, 3]
puts arr
puts arr[1]

puts 'Hashes---------'
#A Hash is a collection of key-value pairs. Keys should be unique
months_hash = {'01' => 'January', '02' => 'February', '03' => 'March'}
month = months_hash['01']
puts month

months_hash = {1 => 'January', 2 => 'February', 3 => 'March'}
month = months_hash[2]
puts month

puts 'Symbols---------'
# Symbols are used to represent other objects. Several objects also have to_sym methods. These methods convert those objects to symbols.
# Ruby symbols are often used as hash keys, because we do not need full capabilities of a string objects for a key.
months_hash = {:january => '01', :february => '02', :march => '03'}
month = months_hash[:march]
puts month

puts "------------------------------ CONVERSION OF TYPES -----------------------------------------"

str4 = '4'
c = str4.class
insp = str4.inspect
puts "str4 is #{c} #{insp}"
num4 = str4.to_i
insp = num4.inspect
c = num4.class
puts "num4 is #{c} #{insp}"
puts num4 + 3

#-------------------------------Reference------------------------------------------------"

# variables:
# https://www.tutorialspoint.com/ruby/ruby_variables.htm
# https://www.w3resource.com/ruby/ruby-literals.php

# Strings:
# https://ruby-doc.org/core-2.4.0/String.html

# Exceptions:
# https://www.tutorialspoint.com/ruby/ruby_exceptions.htm
# https://www.honeybadger.io/blog/ruby-exception-vs-standarderror-whats-the-difference/

# run ruby code online
# https://paiza.io/en/languages/ruby

puts "------------------------------ EXERCISES -----------------------------------------------"

#TODO add excercise
