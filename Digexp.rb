require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
$driver = Selenium::WebDriver.for :chrome

class DigitalExp
    def invoke
        $driver.get("https://app-mm-homepage-draft.dx-prod.cxawsprd.massmutual.com/product-performance/product-performance-listing-page/envision")
        $driver.manage.window.maximize()
        sleep 5
        
    end

    def alerthandle
        alert_close = $driver.find_element(:xpath =>"//span[@class ='icon-sm icon-close']")
        alert_close.click
    end

    def link_click
        sleep 3
        page = "MassMutual Envision - MassMutual"
        landed_page = $driver.title
        origwindow = $driver.window_handle
        if landed_page == page    
            list_links = $driver.find_elements(:tag_name => 'a')
            puts list_links.size
            for i in 1..list_links.size        
                list_text = list_links[i].text
                
                case list_text
        
                when 'Summary Prospectus'
                    puts "entered summary prospectus"
                    list_links[i].click
                    sleep 5
                    windowhandle(origwindow)
                    $driver.close
                    $driver.switch_to.window origwindow
                    puts $driver.title     
                    
                    
                when 'Prospectus'
                    puts "entered prospectus"
                    list_links[i].click
                    sleep 5
                    
                    puts $driver.title
                    
                    
                when 'Annual Report'
                    puts "entered Annual report"
                    list_links[i].click
                    sleep 5
                    
                    puts $driver.title
                    
                    
                when 'Semi-Annual Report'
                    puts "entered semi Annual report"
                    list_links[i].click
                    sleep 5
                    
                    puts $driver.title
                    
                    
                when 'Statement of Additional Information'
                    puts "entered statement of additional info"
                    list_links[i].click
                    sleep 5
                   
                    puts $driver.title
                    
                    
                when 'Q1'
                    puts "entered Q1"
                    list_links[i].click
                    sleep 5
                    
                    puts $driver.title
                    
                    
                when 'Q3'
                    puts "entered Q3"
                    list_links[i].click
                    sleep 5
                    
                    puts $driver.title
                    
                    
                else 
                    puts "unwanted link"
                end           
            end
        else 
            puts "Not appropriate page"
        end
    end

    def windowhandle(target)
        actual_window = target
        handles = $driver.window_handles
        handles.each do |handle|
            if handle != actual_window
                $driver.switch_to.window handle
                puts $driver.title
            end
        end

    end
end

obj = DigitalExp.new
obj.invoke
obj.alerthandle
obj.link_click







