require 'selenium-webdriver'
require "./extras/pdf_support"

class RetireSmart
  include PdfSupport
  CHROMEDRIVER_PATH = './chromedriver.exe'
  def initialize(str_application_url, str_download_path)
    @url = str_application_url
    @download_path = str_download_path
  end

  Selenium::WebDriver::Chrome::Service.driver_path = CHROMEDRIVER_PATH
  prefs = {
      plugins: {
          plugins_disabled: ['Chrome PDF Viewer'],
          always_open_pdf_externally: true
      },
      download: {
          prompt_for_download: false,
          directory_upgrade:   true,
          default_directory:   @download_path
      }
  }

  driver = Selenium::WebDriver.for :chrome, prefs: prefs

  driver.get(@url)
  net_assets_link = driver.find_element(:id, 'select-assets-link')
  net_assets_link.click

  driver.quit


end

RetireSmart.new('https://www.massmutual.com/mmfunds/', 'C:\BB\ruby_primer\Download')
