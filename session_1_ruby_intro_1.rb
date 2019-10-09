# this is comment
# commenting a block of code below
=begin
  comment
  block
  of code
=end

# Difference between double quotes and single quotes in outputting text, escape characters
puts("This string has a double quote: \"text in quotes\". It is escaped")
puts("Double-quote strings allow escaped characters such as \n for newline, \t for tab, etc.")
puts('Single-quote strings do not allow escaped characters such as \n for newline, \t for tab, etc.')
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
months_hash = {:january => '01', :february => '02', :march => '03'}
month = months_hash[:march]
puts month



puts "------------------------------ METHODS -----------------------------------------"

# in ruby everything is an object, so the 'dot operator' allows us to call methods on variables
# string has a method called downcase, so let's use it to make a variable all lowercase
upper_case = 'STARTED WITH ALL CAPS'
lower_case = upper_case.downcase

# Note that a variable can be inserted into a string with this syntax: "a variable: #{variable_name}"
puts "String before any changes: #{upper_case}"
puts "String after the downcase method: #{lower_case}"


search_string = 'all'
flag = lower_case.include?(search_string)
puts "The string '#{search_string}' exists in string '#{lower_case}' - #{flag}"

arr_str = lower_case.split
puts arr_str
puts "The second word in '#{lower_case}' is '#{arr_str[1]}'"

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

#TODO - move to Extras
puts "------------------------------ EXCEPTIONS -----------------------------------------"

num1 = 3
num2 = "4"
begin
  #raise "num2 is not a number" if num2.class != Integer
  puts "The sum of num1 and num2 is #{num1 + num2}"
rescue StandardError => e
  puts e.message
  puts e.backtrace.inspect
end
puts "The sum of num1 and num2 is #{num1.to_i + num2.to_i}"

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

#there is a string method called strip, which returns a copy of str with leading and trailing whitespace removed
#use the str variable to be reversed and print it using the above example

# str = "  this is test string     "
# clean_string =
# puts "String after being stripped:"

# there is a string method called gsub(pattern, replacement), which returns a copy of str with the all occurrences of pattern substituted for the second argument
# use the str variable to have a replacement and print it using the above example

# str = "this is test string to test a string"
# replaced_string =
# puts "String after being partially replaced: "