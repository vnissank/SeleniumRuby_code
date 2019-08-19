#Use CamelCase convention to name the class
# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part1

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
a = FirstClass.new("Olga")

#this calls the print_name method on the object
a.print_name

# Exercise ________________________________________________________________________________________________
# Create a class called MyCar.
# When you initialize a new instance or object of the class,
# allow the user to define some instance variables that tell us the year, color, and model of the car.