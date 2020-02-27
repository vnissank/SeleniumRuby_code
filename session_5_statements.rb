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

# AND
a= 'black'
b= 'white'
if a == 'black' && b == 'white'
  puts '&& condition met'
else
  puts '&& condition not met'
end

#OR
a= 'black'
b= 'red'
if a == 'black' || b == 'white'
  puts 'or condition met'
else
  puts 'or condition not met'
end

#OR
a= 'green'
b= 'red'
if a == 'black' || b == 'white'
  puts '|| condition met'
else
  puts '|| condition not met'
end


puts "  ------------------------ CASE STATEMENT  --------------------------------------"

user = 'home office'
case user
when 'home office'
  puts "User has full access"
when 'external'
  puts "User has partial access"
when 'temporary'
  puts "User has no access"
else
  puts "Not a valid user"
end

puts "-------------------------------Reference------------------------------------------------"
# Ruby operators :
# https://www.tutorialspoint.com/ruby/ruby_operators.htm
# https://www.w3resource.com/ruby/ruby-operators-precedence.php
# https://www.rubyguides.com/2018/07/ruby-operators/
#
# ruby if/else statements:
# https://www.tutorialspoint.com/ruby/ruby_if_else.htm
# https://launchschool.com/books/ruby/read/flow_control#conditionals

# Range:
# https://ruby-doc.org/core-2.5.0/Range.html

# run ruby code online
# https://paiza.io/en/languages/ruby

puts "------------------------------ EXERCISES ----------------------------------------------"
#you can compare strings with the '==' operator, just like we can with numbers
#assign two strings to variables and compare them with if statement

# string1 = "kkkk"
# string2 = "nnnnn"
# if string1 == string2
#  puts "string #{string1} are equal to string #{string2}"
# else
#  puts "string \n #{string1} \n are not equal to \n #{string2}"
# end
