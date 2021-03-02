require 'selenium-webdriver'

search_text = 'Ruby Selenium Webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
driver = Selenium::WebDriver.for :chrome

driver.get "https://www.bing.com"
elem = driver.find_element(:name, 'q')
elem.send_keys search_text                  #send_keys method used to write text
elem.send_keys :enter
# Verify Page Header text
actual_header = driver.title
if actual_header.include?(search_text)
  puts "Verified page header is '#{actual_header}'"
else
  fail "\nPage header '#{actual_header}' does not have expected '#{search_text}'"
end

puts 'Closed the browser'
driver.quit

# Reference
# https://www.rubydoc.info/gems/selenium-webdriver/0.0.28/Selenium/WebDriver/Find
# https://devhints.io/xpath
#____________________________________________________________________
# Excersise - search for the text "Cats" on Bing, verify the next page contains the links with search text in it. 
# Output meaningful verification description for pass or fail results.

# your code here

