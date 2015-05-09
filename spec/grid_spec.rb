require 'grid'
require 'robocop'
RSpec.describe Grid do

	it 'initialise with 0 robots' do
		g = Grid.new()
		expect(g.get_robot_count).to eq(0)
	end

	it 'should add 2 robots to the robot map' do
		g = Grid.new()
		g.add_robot('r1', Robocop.new(0, 0, :N))
		g.add_robot('r2', Robocop.new(0, 0, :N))
		expect(g.get_robot_count).to eq(2)
	end

	it 'should return a robot by key' do
		g = Grid.new()
		rob = Robocop.new(0, 0, :N)
		rob2 = Robocop.new(0, 0, :E)
		g.add_robot('r1', rob)
		g.add_robot('r2', rob2)
		expect(g.get_robot('r2')).not_to eq(rob)
	end 

    it 'should return null is the robot does not exist' do
		g = Grid.new()
		rob = Robocop.new(0, 0, :N)
		rob2 = Robocop.new(0, 0, :E)
		g.add_robot('r1', rob)
		g.add_robot('r2', rob2)
		expect(g.get_robot('r8')).to eq(nil)
	end 
	

	it 'should return locations of all robots' do
		g = Grid.new()
		rob = Robocop.new(0, 0, :N)
		rob2 = Robocop.new(1, 1, :S)
		g.add_robot('r1', rob)
		g.add_robot('r2', rob2)
		location = g.get_all_robot_location()
		
		expect(location.count).to be(2)
		expect(location).to include("Rr1: [0, 0] facing N")
		expect(location).to include("Rr2: [1, 1] facing S")
		
	end

    #Test the second constructor
    it 'should create robot objects and return them' do
    	g = Grid.new(10)
    	expect(g.get_robot_count()).to eq(10)
    end
end
