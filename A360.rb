require 'selenium-webdriver'
require './Signin.rb'

Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
$driver = Selenium::WebDriver.for :chrome

class A360
    
    include Signin
    include Dashboard
        
end

obj = A360.new
obj.invokeApplication
obj.login("MM01073","2tL23XdWd8")
obj.impersonation("Colin Kimpel")
obj.hhsearch("ABBOTT, AMY")












