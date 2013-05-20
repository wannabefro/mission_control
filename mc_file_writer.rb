class FileWriter

  def create_log
    File.open("check_in_log.txt", 'w') do |l|
    end
  end

  def delete_log
    File.delete("check_in_log.txt")
  end

  def check_existance
    if File.exists?("check_in_log.txt")
      true
    else
      false
    end
  end

end