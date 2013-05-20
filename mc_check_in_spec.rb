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

  it 'should have a read_log method' do
    expect(@temp).to respond_to :read_log
  end

  it 'should return a string when read_log is called' do
    expect(@temp.read_log).to eql('test')
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

  it "should respond to write_check_in" do
    expect(@checkin).to respond_to :write_check_in
  end

  it "should create a file if write_check_in is called and checked_in? returns false" do
    @checkin.write_check_in
    expect(File.exists? "check_in_log.txt").to eql(true)
  end

end

describe CheckOut do
  before(:each) do
    @checkout = CheckOut.new
  end

  it "should respond to checked_out?" do
    expect(@checkout).to respond_to :checked_out?
  end

  it "should return a boolean value when run" do
    expect([true, false]).to include(@checkout.checked_out?)
  end

  it "should respond to write_check_out" do
    expect(@checkout).to respond_to :write_check_out
  end

end
