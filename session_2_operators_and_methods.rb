#let's make two numbers
first_number = 1
second_number = 9

#let's print the numbers
puts "First number is: #{first_number} | Second number is: #{second_number}"

# --------------------------------------------------------------------------------------
#  ------------------------ CONDITIONAL OPERATORS --------------------------------------
# --------------------------------------------------------------------------------------

#we can compare numbers with conditional operators, which evaluate statements to true or false
#examples of operators: >, <, ==
#use case example:  1 > 4
#    this would evaluate to false, because 1 is not greater than 4

puts "first number (#{first_number}) > second number (#{second_number}) ? #{first_number > second_number}"
puts "first number (#{first_number}) = second number (#{second_number}) ? #{first_number == second_number}"
puts "first number (#{first_number}) = second number (#{second_number}) ? #{first_number < second_number}"

# --------------------------------------------------------------------------------------
#  ------------------------ IF/ELSE STATEMENTS  --------------------------------------
# --------------------------------------------------------------------------------------

#we can use an if statement to control the flow of the application with values
#the inner blocks of code in the if statement only happens if the condition applies
if(first_number > second_number)
    puts "first number is greater than second number"
elsif (first_number < second_number)
    puts "first number is less than second number"
elsif (first_number == second_number)
    puts "first number is equal to second number"
end

#you can compare strings with the '==' operator, just like we can with numbers
#try to make two strings and compare them with if statements
#string_1 = 
#string_2 = 
#if()
#  puts "strings are equal"
#else
#  puts "strings are not equal"
#end

# --------------------------------------------------------------------------------------
#  ------------------------ WRITING METHODS  --------------------------------------
# --------------------------------------------------------------------------------------


#a function can make blocks of code reusable and concise
#functions can have parameters, or inputs

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
compare_number_values(1,2)
puts "--------------------------------------------------------------------"
compare_number_values(5,2)
puts "--------------------------------------------------------------------"
compare_number_values(5,5)
puts "--------------------------------------------------------------------"


puts "---------------------------------------------------------------------------------------"
puts "------------------------------ EXERCISES ----------------------------------------------"
puts "----------------------------------------------------------------------------------------"

#now you try make a function that adds two numbers and prints them 
#NOTE: sum = a + b, given that a and b are numbers

#def add_numbers(a,b)
#  
#  
#end

#now call the functions a few times with different inputs

