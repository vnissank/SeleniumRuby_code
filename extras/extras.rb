puts "------------------------------ EXCEPTIONS -----------------------------------------"

num1 = 3
num2 = "4"
begin
  #raise "num2 is not a number" if num2.class != Integer
  puts "The sum of num1 and num2 is #{num1 + num2}"
rescue StandardError => e
  puts e.message
  puts e.backtrace.inspect
end
puts "The sum of num1 and num2 is #{num1.to_i + num2.to_i}"
# Exceptions:
# https://www.tutorialspoint.com/ruby/ruby_exceptions.htm
# https://www.honeybadger.io/blog/ruby-exception-vs-standarderror-whats-the-difference/

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

puts 'Split the string into array ---------------------------'
string1 = 'This is a test string'
arr_str = string1.split
puts arr_str
puts "The second word in '#{string1}' is '#{arr_str[1]}'"

puts'Format the string to include the value with 2 decimals ----------------------------------------'
price = 78.5431
puts "The price is %0.2f dollars" % [price]
your_price = "$%0.2f" % [price]
puts your_price

puts 'conversion of types --------------------------------------------------------'
num4 = 4
dec4 = num4.to_f
object_class = dec4.class
object_inspect = dec4.inspect
puts object_class
puts object_inspect

puts 'Hashes---------------------------------------------------------------------'
months_hash = {1 => 'January', 2 => 'February', 3 => 'March'}
month = months_hash[2]
puts month

puts 'Change the original hash -------------------------------------------'
hash_with_nil.compact!
puts hash_with_nil.inspect

puts 'Symbols---------'
# Symbols are used to represent other objects. Several objects also have to_sym methods. These methods convert those objects to symbols.
# Ruby symbols are often used as hash keys, because we do not need full capabilities of a string objects for a key.
months_hash = {:january => '01', :february => '02', :march => '03'}
month = months_hash[:march]
puts month

puts '-----------------------Change the original array -----------------------------------------------------------------'
names_length = names.length
names.compact!
names_length = names.length
puts names.inspect

puts '---------------------Use block of code with Array.new -----------------------------------------------------------'
changed_names = Array.new(names_length) { |e| names[e] = names[e]+'$' }
puts changed_names.inspect

puts '---------------------Iterate through array ----------------------------------------------------------------------'
changed_names.each { |x| x.delete!('$') }
puts changed_names.inspect
