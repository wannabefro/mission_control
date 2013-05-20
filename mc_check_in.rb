require_relative 'mc_file_writer'
require_relative 'mc_get_time'

class CheckIn

  def checked_in?
    @ci_filewriter = FileWriter.new
    @ci_filewriter.check_existance
  end

  def write_check_in
    if self.checked_in?
      puts "You are already checked in."
    else
      @ci_filewriter.create_log
    end

  end

end