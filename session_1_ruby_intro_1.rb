
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

#there is a string method called capitalize, which returns a copy of the string with the first letter uppercase
#use the previous section to get the string to be capitalized and print it

#capitalized_string = lower_case.capitalize
#puts "String after being capitalized: " 