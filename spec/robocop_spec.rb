require 'robocop'

RSpec.describe Robocop do

  it "should beep" do
    d = Robocop.new(0, 0, :N)
    expect(d.beep).to eq('beep beep boop')
    print "Hello World!"
  end
    
  it 'should return (0,0,:N)' do
      robot = Robocop.new(0, 0, :N)
      expect(robot.get_location).to eq ([0,0])
  end

  it 'given start location (0,0,:N) move to location(0,1,:N)' do
      robot = Robocop.new(0, 0, :N)
      robot.move_forward!
      expect(robot.get_location).to eq ([0,1])
  end

  it 'should turn left 90 degrees and face West' do
    #Given
  	robot = Robocop.new(0, 0, :N)
    #When
    robot.turn_left!
    #Then
    expect(robot.get_direction).to eq (:W)
  end

  it 'should turn left 90 degrees and face South' do
    robot = Robocop.new(0, 0, :W)
    robot.turn_left!
    expect(robot.get_direction).to eq (:S)
  end

  it 'should turn left 90 degrees and face East' do
    robot = Robocop.new(0, 0, :S)
    robot.turn_left!
    expect(robot.get_direction).to eq (:E)
  end

  it 'should turn left 90 degrees and face North' do
    robot = Robocop.new(0, 0, :E)
    robot.turn_left!
    expect(robot.get_direction).to eq (:N)
  end
end
