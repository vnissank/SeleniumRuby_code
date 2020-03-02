puts "------------------------------ ACCESSING METHODS OF OBJECTS -----------------------------------------"

# in ruby everything is an object, so the 'dot operator' allows us to call methods on those objects
# string has a method called downcase, so let's use it to make a variable all lowercase
puts 'downcase ----------------------------------------------'
upper_case = 'STARTED WITH ALL CAPS'
lower_case = upper_case.downcase

# Note that a variable can be inserted into a string with this syntax: "a variable: #{variable_name}"
puts "String before any changes: #{upper_case}"
puts "String after the downcase method: #{lower_case}"

puts 'Search for a string within a string--------------------'
search_string = 'all'
flag = lower_case.include?(search_string)
puts "The string '#{search_string}' exists in string '#{lower_case}' - #{flag}"


#-------------------------------Reference------------------------------------------------"

# Methods:
# https://launchschool.com/books/ruby/read/methods#whataremethodsandwhydoweneedthem

# variables:
# https://www.tutorialspoint.com/ruby/ruby_variables.htm
# https://www.w3resource.com/ruby/ruby-literals.php

# Strings:
# https://ruby-doc.org/core-2.5.5/String.html

#Strings formatting:
#https://www.rubyguides.com/2012/01/ruby-string-formatting/

# run ruby code online
# https://paiza.io/en/languages/ruby

puts "------------------------------ EXERCISES -----------------------------------------------"

#there is a string method called strip(), which returns a copy of str with leading and trailing whitespace removed
#use strip() method to remove whitespoaces and print it using the above example

 # str = "  this is test string     "
 # clean_string = str
 # puts "String after being stripped:"

# there is a string method called gsub(pattern, replacement), which returns a copy of str with the all occurrences of pattern substituted for the second argument
# use the str variable to have a replacement and print it using the above example

# str = "this is test string to test a string"
# replaced_string =
# puts "String after being partially replaced: "