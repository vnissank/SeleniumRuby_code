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
