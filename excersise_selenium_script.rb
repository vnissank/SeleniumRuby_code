require 'selenium-webdriver'

search_text = 'Ruby Selenium Webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
driver = Selenium::WebDriver.for :chrome

driver.get "https://www.bing.com"
elem = driver.find_element(:name, 'q')
elem.send_keys search_text                  #send_keys method used to write text
elem.submit

# Verify Page Header text
actual_header = driver.title
if actual_header.include?(search_text)
  puts "Verified page header is '#{actual_header}'"
else
  fail "\nPage header '#{actual_header}' \n does not have expected '#{search_text}'"
end
puts 'Closed the browser'
driver.quit

# Reference
# https://www.rubydoc.info/gems/selenium-webdriver/0.0.28/Selenium/WebDriver/Find
# https://devhints.io/xpath
#____________________________________________________________________
# Excersise - search for the name on Bing, verify text coming in links
#
#search_text = 'Cats'
#Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
#driver = Selenium::WebDriver.for :chrome
##Search text
#driver.get "https://www.bing.com"
#elem = driver.find_element(:name, 'q')
#elem.send_keys search_text
#elem.submit
## Verify links coming
#links_collection = driver.find_elements(:partial_link_text, search_text)
#if links_collection.count>0
#  puts "Verified page contains the links with search text #{search_text}"
#  links_collection.each do |link|
#    puts link.text
#    puts '----------------------------'
#  end
#else
#  puts "The page does not contain the links with search text #{search_text}"
#end
#puts 'Closed the browser'
#driver.quit

