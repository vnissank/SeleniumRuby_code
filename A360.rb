require 'selenium-webdriver'
require './A360Signin.rb'

Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
$driver = Selenium::WebDriver.for :chrome

class A360
    
    include Signin
    include Dashboard
        
end

obj = A360.new
obj.invokeApplication
userId = gets.chomp
pwd = gets.chomp
obj.login(userId,pwd)
obj.impersonation("Colin Kimpel")
obj.hhsearch("ABBOTT, AMY")












