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


