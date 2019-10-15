puts "  ------------------------ IF/ELSE STATEMENTS  --------------------------------------"

first_number = 1
second_number = 9
#we can use an if statement to control the flow of the application with values
#the inner blocks of code in the if statement only happens if the condition applies
if first_number > second_number
  puts "first number is greater than second number"
elsif first_number < second_number
  puts "first number is less than second number"
elsif first_number == second_number
  puts "first number is equal to second number"
end

a= 'black'
b= 'white'
if a == 'black' and b == 'white'
  puts 'and condition met'
else
  puts 'and condition not met'
end

if a == 'black' && b == 'white'
  puts '&& condition met'
else
  puts '&& condition not met'
end

a= 'black'
b= 'red'
if a == 'black' or b == 'white'
  puts 'or condition met'
else
  puts 'or condition not met'
end

a= 'green'
b= 'red'
if a == 'black' || b == 'white'
  puts '|| condition met'
else
  puts '|| condition not met'
end

puts "-------------------------------Reference------------------------------------------------"
# Ruby operators :
# https://www.tutorialspoint.com/ruby/ruby_operators.htm
# https://www.w3resource.com/ruby/ruby-operators-precedence.php
# https://www.rubyguides.com/2018/07/ruby-operators/
#
# # ruby if/else statements
# # https://www.tutorialspoint.com/ruby/ruby_if_else.htm
#
# #Ruby methods
# #https://www.tutorialspoint.com/ruby/ruby_methods.htm
#
# run ruby code online
# https://paiza.io/en/languages/ruby

puts "------------------------------ EXERCISES ----------------------------------------------"
#you can compare strings with the '==' operator, just like we can with numbers
#assign two strings to variables and compare them with if statement

# string1 = ""
# string2 = ""
# if()
#  puts "strings are equal"
# else
#  puts "strings are not equal"
# end
