require 'pry'
class FileWriter

  def create_log
    File.open("check_in_log.txt", 'w') do |l|
      l.puts "test"
    end
  end

  def delete_log
    File.delete("check_in_log.txt")
  end

  def read_log
    holding_pen = ""
    File.readlines('check_in_log.txt').each do |line|
      holding_pen = line.chomp
    end
    holding_pen
  end

  def check_existance
    if File.exists?("check_in_log.txt")
      true
    else
      false
    end
  end

end