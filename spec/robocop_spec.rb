require 'robocop'

RSpec.describe Robocop do
  it "should beep" do
    d = Robocop.new
    expect(d.beep).to eq('beep beep boop')
    print "Hello World!"
  end

   it 'should turn left 90 degrees' do
  	d = Robocop.new
  	#don't put any brackets if function doesn't have params
  	d.turn_left!
  end
  
end
