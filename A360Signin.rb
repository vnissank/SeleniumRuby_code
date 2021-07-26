module Signin

    def invokeApplication
        $driver.get("https://massmutual.oktapreview.com/")
        $driver.manage.window.maximize()
        #script_timeout = 30000
        sleep 5
        expected_page = "MassMutual Preview Dev/QA - Sign In"
        page_title = $driver.title
        if page_title == expected_page
            puts "Landed on Sign on Page"
        else
            puts "Not appropriate page"
        end
        
    end

    def login(username,pwd)
        sleep 5
        userid = username
        userid_box = $driver.find_element(:xpath => "//input[@id = 'idp-discovery-username']")
        userid_box.send_keys userid
        userid_box.send_keys :enter

        pass_word = pwd
        #script_timeout = 30000
        sleep 5
        pwd_box = $driver.find_element(:class => 'password-with-toggle')
        pwd_box.send_keys pass_word
        pwd_box.send_keys :enter
        sleep 10
        parent_window = $driver.window_handle
        a360_preprod_img = $driver.find_element(:xpath => "//a[@href='https://massmutual.oktapreview.com/home/bookmark/0oanq46dpy6CZiOrv0h7/1280?fromHome=true']")
        a360_preprod_img.click
        sleep 10
        windowswitch(parent_window)
    end

    def windowswitch(actual)
        actual_window = actual
        puts actual_window
        handles = $driver.window_handles
        handles.each do |handle|
            puts handle
            if handle != actual_window
                $driver.switch_to.window handle
                puts $driver.title
            end
            sleep 5
        end
    end

end

module Dashboard
    def impersonation(adv)
        advisor = adv
        impersonate = $driver.find_element(:xpath => "//input[@placeholder = 'Impersonate']")
        impersonate.send_keys advisor
        sleep 5
        impersonate_select = $driver.find_element(:xpath => "//p[text()=' COLIN W KIMPEL ']")
        impersonate_select.click
        sleep 5        
    end
    def hhsearch(hh)
        house_hold = hh
        hhsearch_field = $driver.find_element(:xpath => "//input[@placeholder ='COLIN, click here for last 10 or type name, account, or policy/contract']")
        hhsearch_field.send_keys house_hold
        sleep 5
        hhresult = $driver.find_element(:xpath => "//span[@class=' household']/button")
        hhresult.click
        sleep 10
        puts "Household clicked and C360 opened"
    end
end



