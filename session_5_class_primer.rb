#Use CamelCase convention to name the class
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
        puts @name
    end
end

#here we create a function by calling the new method on the class... this refers to the initialize method we created
a = FirstClass.new("me")

#this calls the print_name method on the object
a.print_name