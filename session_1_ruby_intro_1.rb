
puts "---------------------------------------------------------------------------------------"
puts "------------------------------ STRINGS/VARIABLES --------------------------------------"
puts "----------------------------------------------------------------------------------------"

# let's make a string variable
first_variable = "first string"

#let's print out some text using the 'puts' function
puts "printing our first variable on the next line"

#print the variable by placing it after 'puts'
puts first_variable

puts "---------------------------------------------------------------------------------------"
puts "------------------------------ OBJECTS/METHODS ----------------------------------------"
puts "----------------------------------------------------------------------------------------"


#in ruby everything is an object, so the 'dot operator' allows us to call methods on variables
#string has a method called downcase, so let's use it to make a variable all lowercase
upper_case = "STARTED WITH ALL CAPS"
lower_case = upper_case.downcase
puts lower_case

puts "---------------------------------------------------------------------------------------"
puts "------------------------------ STRING METHODS -----------------------------------------"
puts "----------------------------------------------------------------------------------------"


#Now let's print these variables and some desciptive text
#Note that a variable can be inserted into a string dynamically with this syntax: "a variable: #{variable_name}"
puts "String before any changes: #{upper_case}"
puts "String after the downcase method: #{lower_case}"

puts "---------------------------------------------------------------------------------------"
puts "------------------------------ EXERCISES -----------------------------------------------"
puts "----------------------------------------------------------------------------------------"

# variables:
# https://www.tutorialspoint.com/ruby/ruby_variables.htm
# Strings:
# https://ruby-doc.org/core-2.4.0/String.html
# run ruby code online
# https://www.tutorialspoint.com/execute_ruby_online.php

#there is a string method called reverse, which reverses str in place
#use the str variable to be reversed and print it using the above example

# str = "this is test string"
# reversed_string = str.reverse
# puts "String after being reversed: "

# there is a string method called gsub(pattern, replacement), which returns a copy of str with the all occurrences of pattern substituted for the second argument
# use the str variable to have a replacement and print it using the above example

# str = "this is test string to test a string"
# replaced_string = str.gsub('string', 'text')
# puts "String after being partially replaced: "