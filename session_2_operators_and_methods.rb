# Assignment operators
puts ("assignment operator in Ruby------------")
x = 4
puts ("abbreviated assignment add")
puts x += 20
puts ("abbreviated assignment subtract")
puts x -= 20
puts ("abbreviated assignment multiply")
puts x *= 4
puts ("abbreviated assignment divide")
puts x /= 4
puts ("paralel assignment")
l1, l2, l3 = "Python", "Ruby", "PHP"
puts 11, 12, 13


puts("Arithmetic operators------------------")
puts ("add operator")
puts(5 + 6)
puts ("subtract operator")
puts(10 - 4)
puts ("multiply operator")
puts(5 * 6)
puts ("divide operator")
puts(15 / 3)
puts ("raise to a power operator")
puts(15**2)
puts ("modulo operator")
puts(14 % 5)

puts("Comparison operators-----------")
# # <	Less than
# # > Greater than
# # >=	Greater or equal than
# # <=	Less or equal than
# # ==	Equals
# # !=	Not equals
# # <=>	Greater, Equal, Or Less
puts ("Test two numbers for equality with ==, !=, or <=>")
puts 14 == 16
puts 14 != 16
puts 14 <=> 14
puts 14 <=> 12
puts 14 <=> 16
puts 14 < 16
puts 14 < 14
puts 14 <= 14
puts 14.0 > 12.5
puts 14.0 >= 14

compared_num = 1 > 4
puts "Is number 1 > 4 ? #{compared_num}"

puts 'cat'.eql?('cat')
puts 'cat'.eql?('dog')

puts "  ------------------------ IF/ELSE STATEMENTS  --------------------------------------"

first_number = 1
second_number = 9
#we can use an if statement to control the flow of the application with values
#the inner blocks of code in the if statement only happens if the condition applies
if(first_number > second_number)
    puts "first number is greater than second number"
elsif (first_number < second_number)
    puts "first number is less than second number"
elsif (first_number == second_number)
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
#you can compare strings with the '==' operator, just like we can with numbers
#assign two strings to variables and compare them with if statement

# string1 = ""
# string2 = ""
# if()
#  puts "strings are equal"
# else
#  puts "strings are not equal"
# end


#now you try make a function that adds two numbers a and b and prints them
#given that a and b are numbers

#def add_numbers(a,b)
#  
#  
#end

#now call the functions a few times with different inputs

