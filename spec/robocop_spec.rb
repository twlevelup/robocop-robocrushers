require 'robocop'

RSpec.describe Robocop do
  it "should beep" do
    d = Robocop.new(0, 0, :N)
    expect(d.beep).to eq('beep beep boop')
    print "Beep Boop"
  end
    
  it 'should return (0,0,n)' do
      robot = Robocop.new(0, 0, :N)
      expect(robot.get_location).to eq ([0,0,:N])
  end

  xit 'given start location (0,0,n) move to location(0,1,n)' do
      robot = Robocop.new(0, 0, :N)
      expect(robot.move_forward).to eq(0,1,:N)
  end

end
