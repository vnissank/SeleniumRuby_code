#Use CamelCase convention to name the class
#TODO Olga add mathematical operation method
#


puts "------------------------------ GLOBAL VARIABLES -----------------------------------------"

$global_variable = 10
class Class1
    def print_global
        puts "Global variable in Class1 is #{$global_variable}"
    end
end
class Class2
    def print_global
        puts "Global variable in Class2 is #{$global_variable+1}"
    end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global

puts "------------------------------ INSTANCE VARIABLES -----------------------------------------"

class Customer
    def initialize(id, name)
        @cust_id = id
        @cust_name = name
    end
    def display_details()
        puts "Customer id #{@cust_id}"
        puts "Customer name #{@cust_name}"
    end
end

# Create Objects
cust1 = Customer.new("1", "John")
cust2 = Customer.new("2", "Paul")

# Call Methods
cust1.display_details()
cust2.display_details()

class FirstClass

    #a variable with an '@' means that it is an instance variable, which is specific to this object
    #this variable is set in the constructor (initialize method)
    @name

    #this is the constructor, specified with keyword 'initialize'... it is called with syntax FirstClass.new(string_for_name)
    #this contains instruction to do upon creating the object, such as setting the class variables to desired input
    def initialize(name)
        @name = name
    end

    #this is an instance method, meaning that it is called through an object: some_object.print_name
    def print_name()
        puts "The @name is #{@name}"
    end
end

#here we create a new instance of the class by calling the new method on the class
a = FirstClass.new("Olga") # try with Hello World

#this calls the print_name method on the object
a.print_name


puts "-------------------------------Reference------------------------------------------------"
# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part1

# Exercise ________________________________________________________________________________________________
# Create a class called MyCar.
# When you initialize a new instance or object of the class,
# allow the user to define some instance variables that tell us the year, color, and model of the car.