=begin
str = "    I am the Legend    "
puts str
s1 = str.split
puts s1
s2 = str.strip
puts s2
s3 = str.gsub("I","Mani")
puts s3

str1 = "Manikantha"
str2 = "Manikanta"
str3 = "Naidu"
inp_str = gets.chomp

if inp_str == str1
    puts " This is Mani's Certificate Name"
elsif inp_str == str2
    puts "This is calling Name "
elsif inp_str == str3
    puts "Mani's Nick name "
else 
    puts "Not a valid input"
end

Name = gets.chomp
case Name 
when "Manikanta"
    puts "Calling Name "
when "Manikantha"
    puts "Writing Name "
when "Naidu"
    puts "Nick Name"
when "Soujanya"
    puts "Wife's Name"
else 
    puts "Not valid input"
end

arr = Array.new
arr[0] = 1
arr[1] = 2
arr[2] = 3
arr[3] = 4
puts arr
puts arr.inspect
puts arr.size



names = Array['Peter', 'Olga', 'Sunder', 'Len']
names_length = names.length
puts names.inspect
puts 'add more elements'
names << 'Abbas'
names << 'Anthony'
names_length = names.length
puts names.inspect


names = Array.new(8)
puts names.inspect
puts 'assign values to 4 elements'
names[0] = 'Peter'
names[1] = 'Olga'
names[2] = 'Sunder'
names[3] = 'Len'
names[4] = 'Mani'
names[5] = 'Nani'
puts names.inspect
names_length = names.length
puts names_length
puts 'add more elements'
names << 'Abbas'
names << 'Anthony'
names << 'Melissa'
names_length = names.length
puts names_length
puts names
puts names.inspect

names_new = names.compact
puts names_new
puts names_new.inspect

names_new.delete('Mani')
puts names_new.inspect

names_new.delete_at(5)
puts names_new.inspect

names_new.pop
puts names_new.inspect


#creating an array
arr = Array.new(10)
for i in 0...10
    arr[i] = gets.chomp
end
puts arr.inspect

# printing first and last elements
puts arr[-1]
puts arr[0]


names = Array['Peter?', 'Olga?', 'Sunder?', 'Len?']
names.each {|i| i.delete!('?')}
puts names.inspect

my_hash = { :one => 'uno', :two => 'dos', :three => 'tres' }
new_hash = my_hash.invert
puts new_hash.inspect
puts new_hash["dos"]



array = [15,16,17,18,19,16,20]
array.each do |i|
    puts i
end
counter = 0
for i in 0..array.size-1
    puts "This is array: #{array[i]}"
    for j in i+1..array.size-1
        puts "this is array2:#{array[j]}"
        if array[i] == array[j]
            puts "Elements are equal" 
            counter = counter+1
            break                  
        end  
            
    end
    break if counter == 1
end

class FirstClass 
    def greeting(name)
      @name = name
      puts "Welcome #@name" 
    end
  
  end
  obj = FirstClass.new
  obj.greeting("Mani")
=end 

require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
driver = Selenium::WebDriver.for :chrome 

#invoke application
driver.get("https://www.massmutual.com")
 sleep 10
 driver.manage.window.maximize()
 forms = driver.find_element(:xpath => "")
 ele = driver.find_element(:xpath => "//div[@class ='modal-dialog']/div/div/button")
 ele.click
 puts "first Popup closed"
 sleep 3
 alert = driver.find_element(:xpath => "//span[@class ='icon-sm icon-close']")
 alert.click
 puts "second Popup closed"
 sleep 3





