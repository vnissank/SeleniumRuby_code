module FileHelper
  def FileHelper.cleanup_dir(dir_path)
    abs_path = File.absolute_path(dir_path)
    FileUtils.rm_f Dir.glob("#{abs_path}/*")
    puts "deleted all files in directory '#{abs_path}'"
  end


  def FileHelper.verify_file_exist_abs_path(abs_path)
    result = File.exist?(abs_path)
    if result
      puts "verified that file exists at ' #{abs_path}'"
    else
      puts "file does not exist' #{abs_path}'"
    end
  end

end