require "./extras/web_support"
require "./extras/pdf_support"
require "./extras/file_helper"

class RetireSmart
  include WebSupport
  include FileHelper
  include PdfSupport

    url = 'https://www.massmutual.com/mmfunds/'
    download_path = 'C:\BB\ruby_primer\Download'

  expected_txt_file_path = 'C:\BB\ruby_primer\Data\select_assets_expected.txt'

  driver = WebSupport.get_driver(download_path)

  # Navigate to the MM Funds page
  driver.get(url)
  Selenium::WebDriver::Wait.new(:timeout => 15)

  # Verify Title
  expected_title = 'Product Offers, Performance, Investor Resources - MassMutual Funds'
  actual_title = driver.title
  if expected_title.eql?(actual_title)
    puts "Verified that page displayed with title '#{actual_title}'"
  else
    fail("\n Expected page title \n'#{expected_title}' \n does not match actual page title \n'#{actual_title}'")
  end

  # Find and Click on Investment Resources Link
  invest_resource_link = driver.find_element(:xpath => '//*[@id="navbar-collapse"]/ul/li[2]/a/span')
  invest_resource_link.click
  puts "Clicked on the link '#{invest_resource_link.text}'"

  # Verify Funds Page Header text
  expected_header = 'Select, Premier and MassMutual RetireSmart'
  actual_header = driver.find_element(:xpath => '//*[@id="root"]/div/div[1]/section[1]/nav/h2').text
  if actual_header.include?(expected_header)
    puts "Verified page header is '#{actual_header}'"
  else
    fail "Page header \n'#{actual_header}' \n does not match expected \n '#{expected_header}'"
  end

  # Find the Select Assets PDF link, get the file name from href and click on the link.
  pdf_link = driver.find_element(:id, 'select-assets-link')
  href = pdf_link.attribute('href')
  puts "PDF href is #{href}"
  arr_href = href.split('/')
  pdf_file_name = arr_href[-1]
  puts "Download file name is '#{pdf_file_name}'"
  full_pdf_path = "#{download_path}\\#{pdf_file_name}"
  FileHelper.cleanup_dir(download_path)
  pdf_link.click
  puts "Clicked on link '#{pdf_link.text}'"
  sleep 5

  # Verify that file is downloaded and file content
  result = File.exist?(full_pdf_path)
  if result
    puts "File '#{pdf_file_name}' is downloaded"
    file_name_txt = pdf_file_name.gsub('.pdf', '.txt')
    txt_file_path_actual = "#{download_path}\\#{file_name_txt}"
    PdfSupport.pdf_save_to_txt(full_pdf_path, txt_file_path_actual)
    puts "Saved PDF data from '#{pdf_file_name}' into text file '#{txt_file_path_actual}'"
    PdfSupport.verify_txtdata_to_pdftxtdata_lines(expected_txt_file_path, txt_file_path_actual)

  else
    fail "File '#{pdf_file_name}' is not downloaded"
  end

  driver.quit

end


