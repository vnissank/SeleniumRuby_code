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

puts 'Create function that returns 2 values --------------------------------------------------'
def find_person(name, country_hash, age_hash)
  name_symbol = name.downcase.to_sym
  country = country_hash[name_symbol]
  age = age_hash[name_symbol]
  return country, age
end
puts 'Call the function and assign the result to one variable---------------------------------'
country_h = { olga: 'USA', sunder: 'Canada', vishnu: 'India' }
age_h = { olga: 40, sunder: 35, vishnu: 30 }
first_name = 'Olga'
info = find_person(first_name, country_h, age_h)
puts info.inspect

puts 'Call the function use parallel variable assignment---------------------------------------'
country_info, age_info = find_person(first_name, country_h, age_h)
puts "The country for #{first_name} is #{country_info} and age is #{age_info}"

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

#1. now you make a function that adds two numbers a and b and prints them
#given that a and b are numbers
# your code here

def numbers_add(num1,num2)
  first_number = num1
  second_number = num2
  added_number = first_number + second_number
  puts added_number
  return added_number
end

#2. now call the functions a few times with different inputs
# your code here
summation = numbers_add(10,20)
puts summation.inspect

