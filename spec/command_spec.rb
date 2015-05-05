require 'command'
require_relative '../lib/commandline_controller'

RSpec.describe Command do
    it 'given input of "f or F" return ":Forward" ' do
        c = Command.new('f')
        expect(c.get_representation).to eq(:Forward)
  	end
    
    it 'given input of "r or R" return :Right' do
    	c = Command.new('R')
    	expect(c.get_representation).to eq (:Right)
    end

    it 'given input of "l or L" return :Left' do
    	c = Command.new('l')
    	expect(c.get_representation).to eq (:Left)
    end

    it 'given input of "b or B" return :Backward' do
        c = Command.new('B')
        expect(c.get_representation).to eq(:Backward)
    end

    it 'given 0.5 should print "Invalid Input"' do
        expect(parse_input(0.5)).to eq(false)
    end

end
