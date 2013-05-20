require_relative 'mc_file_writer'
require_relative 'mc_get_time'

class CheckIn

  def checked_in?
    @ci_filewriter = FileWriter.new
    @ci_filewriter.check_existance
  end

end