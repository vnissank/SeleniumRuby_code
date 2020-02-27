puts "  --------------------------- WRITING METHODS  --------------------------------------"

#a function can make blocks of code reusable and concise

#lets make a function to print out number equality, like the first section
def compare_number_values(num1, num2)
  puts "First number is: #{num1} | Second number is: #{num2}"
  if(num1 > num2)
    puts "first number is greater than second number"
  elsif (num1 < num2)
    puts "first number is less than second number"
  elsif (num1 == num2)
    puts "first number is equal to second number"
  end
end

#now lets call the function a few times, using different parameters
puts "function call ----------------"
compare_number_values(1,2)
puts "------------------------------"
compare_number_values(5,2)
puts "------------------------------"
compare_number_values(5,5)

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

#1. now you try make a function that adds two numbers a and b and prints them
#given that a and b are numbers

#def add_numbers(a,b)
#
#
#end

#2. now call the functions a few times with different inputs