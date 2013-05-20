require_relative 'mc_file_writer'

class CheckOut

  def checked_out?
    @ci_filewriter = FileWriter.new
    # reverse the true and false returned by the check_existance method
    if @ci_filewriter.check_existance
      false
    else
      true
    end
  end

  def write_check_out

  end

end