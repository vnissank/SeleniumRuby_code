require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
prefs = {download: {prompt_for_download: false}}
options = Selenium::WebDriver::Chrome::Options.new(args: ['start-maximized', 'user-data-dir=/tmp/temp_profile'])
driver = Selenium::WebDriver.for(:chrome, options: options, prefs: prefs)
url = 'https://www.massmutual.com'
driver.get(url)
Selenium::WebDriver::Wait.new(:timeout => 15)

# Verify MassMutual page opened,
# Click on College Savings link,
# verify "How much do I need to save for college?" text ,
# click Calculate button,
# Verify the page "College Savings Calculator" displayed
# close the browser
