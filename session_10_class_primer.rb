
class MyClass
  def get_date
    Time.now
  end
end

new_class = MyClass.new
puts new_class.get_date

puts '------------------------------ GLOBAL AND LOCAL VARIABLES -----------------------------------------'

$global_variable = 10

class Class1
  def print_global
    puts "Global variable in Class1 is #{$global_variable}"
  end
end

class Class2
  MY_CONSTANT = 100

  def print_global
    puts "Global variable in Class2 is #{$global_variable}"
  end

  def print_global_plus_local(var)
    local_var = var
    puts "Global variable + local var in Class2 is #{$global_variable + local_var}"
  end

  def print_global_plus_constant
    puts "MY_CONSTANT in Class2 is #{MY_CONSTANT}"
    puts "Global variable + constant in Class2 is #{$global_variable + MY_CONSTANT}"
  end

end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global
class2obj.print_global_plus_local(1)
class2obj.print_global_plus_constant

puts '------------------------------ INSTANCE VARIABLES -----------------------------------------'
# a variable with an '@' means that it is an instance variable, which is specific to this object
# this variable is set in the constructor (initialize method)
# this is the constructor, specified with keyword 'initialize'

class Customer
  def initialize(id, name)
    @cust_id = id
    @cust_name = name
  end

  def display_details
    puts "Customer id #{@cust_id}"
    puts "Customer name #{@cust_name}"
  end
end

# Create Objects
cust1 = Customer.new('1', 'John')
cust2 = Customer.new('2', 'Paul')

# Call Methods
cust1.display_details
cust2.display_details


puts '-------------------------------Reference------------------------------------------------'
# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part1
# https://launchschool.com/books/ruby/read/variables#typesofvariables
# Dates:
# https://www.shortcutfoo.com/app/dojos/ruby-date-format-strftime/cheatsheet

# Exercise ________________________________________________________________________________________________
# Make a class called FirstClass.
# Make instance variable "name"
# Create the method in the class that would print out a greeting message with name included.
# Create a new instance of FirstClass  by calling the new method, pass the name
# call the print_greeting method on the object
#
#your code here
