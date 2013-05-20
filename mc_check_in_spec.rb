require 'rspec'
require 'pry'

require_relative 'mc_check_in'
require_relative 'mc_check_out'
require_relative 'mc_file_writer'

describe FileWriter do

  before(:each) do
    @temp = FileWriter.new
  end

  it 'should be a method to create a new log file' do
    expect(@temp).to respond_to :create_log
  end

  it 'should create a file check_in_log.txt when create_log is called' do
    @temp.create_log
    expect(File.exists? "check_in_log.txt").to eql(true)
  end

  it 'should include a check_existance method' do
    expect(@temp).to respond_to :check_existance
  end

  it 'should return true when check_existance is called and the file exists' do
    expect(@temp.check_existance).to eql(true)
  end

  it 'should include a delete_log method' do
    expect(@temp).to respond_to :delete_log
  end

  it 'should delete check_in_log.txt if delete_log is called and the file exists' do
    expect(File.exists? "check_in_log.txt").to eql(true)
    @temp.delete_log
    expect(File.exists? "check_in_log.txt").to eql(false)
  end

  it 'should return false when check_existance is called the file does not exist' do
    expect(@temp.check_existance).to eql(false)
  end

end

describe CheckIn do

  before(:each) do
    @checkin = CheckIn.new
  end

  it "should respond to checked_in?" do
    expect(@checkin).to respond_to :checked_in?
  end

  it "should return a boolean value when run" do
    expect([true,false]).to include(@checkin.checked_in?)
  end

  it "should respond to get_time" do
    expect(@checkin).to respond_to :get_time
  end



end

