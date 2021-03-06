require 'pdf-reader'

module PdfSupport

  def PdfSupport.pdf_save_to_txt(pdf_path, save_to_path)
    reader = PDF::Reader.new(pdf_path)
    f = File.open(save_to_path,'a')
    reader.pages.each do |page|
      pdf_page = page.text
      f.write(pdf_page)
    end
    f.close
  end

  def PdfSupport.verify_txtdata_to_pdftxtdata_lines(txt_path, pdf_txt_path)

    pdf_txt_file = File.open(pdf_txt_path)
    failed_text = ""
    txt_file = File.open(txt_path)
    txt_file.each do |txt_line_long|
      match_flag = false
      txt_line = ''
      pdf_line = ''
      pdf_line_long = pdf_txt_file.readline
      if !(pdf_line_long.include?('page'))
        txt_line = txt_line_long.gsub("\n", "").gsub(" ", "").gsub("\t","").gsub('(', '-').gsub(')', '').strip
        pdf_line = pdf_line_long.gsub("\n", "").gsub(" ", "").gsub("\t","").gsub('(', '-').gsub(')', '').strip
        if pdf_line.eql?(txt_line)
          match_flag = true
        else
          failed_text = failed_text + "The expected line \n'#{txt_line_long.delete("\n")}' \ndoes not match in actual pdf file \n'#{pdf_line_long.delete("\n")}' \n--------------\n"
        end
      end
    end
    if failed_text == ""
      puts "Verified that report data in PDF matches the data in text file"
    else
      fail failed_text
    end
    pdf_txt_file.close
    txt_file.close
  end

  def PdfSupport.pdf_download(target_url, target_file)
    # streams pdf content from the url into a local file
    # - does not require interacting with pdf "save as" popup
    download = open(target_url)
    IO.copy_stream(download, target_file)
  end

end