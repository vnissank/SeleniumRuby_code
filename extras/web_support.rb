require 'selenium-webdriver'
module WebSupport

  CHROMEDRIVER_PATH = './chromedriver.exe'

  def WebSupport.get_driver(download_path)

    Selenium::WebDriver::Chrome::Service.driver_path = CHROMEDRIVER_PATH
    prefs = {
        plugins: {
            plugins_disabled: ['Chrome PDF Viewer'],
            always_open_pdf_externally: true
        },
        download: {
            prompt_for_download: false,
            directory_upgrade:   true,
            default_directory:   download_path
        }
    }
    options = Selenium::WebDriver::Chrome::Options.new(args: ['start-maximized', 'user-data-dir=/tmp/temp_profile'])
    Selenium::WebDriver::Wait.new(:timeout => 15)
    driver = Selenium::WebDriver.for(:chrome, options: options, prefs: prefs)

  end

end